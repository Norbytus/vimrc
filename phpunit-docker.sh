#!/bin/bash

## OLD
# PROJECT=$(basename "$(git rev-parse --show-toplevel)")
# CONTAINER=$(docker ps -q | xargs -r docker inspect --format '{{.Name}}' 2>/dev/null | sed -E 's#^/##' | grep -E "$PROJECT" | head -n 1)
#
# Replace host path with container path
# ARGS=()
# for ARG in "$@"; do
#   ARGS+=("${ARG//\/home\/alex\/git/\/var\/www}")
# done
#
# docker exec -i "$CONTAINER" vendor/bin/phpunit "${ARGS[@]}"
## OLD

#
# Customize the following:
PROJECT=$(basename "$(git rev-parse --show-toplevel)")
CONTAINER=$(docker ps -q | xargs -r docker inspect --format '{{.Name}}' 2>/dev/null | sed -E 's#^/##' | grep -E "$PROJECT" | head -n 1)
containerName=$CONTAINER
phpunitPath=$REMOTE_PHPUNIT_BIN

# detect local path and remove from args
localPhpUnitResultPath='/tmp/phpunit-result.xml'
argsInput=${@}
runFile=$(echo $argsInput| awk '{print $1}')
phpTestPath=$(dirname "$runFile")
pushd $phpTestPath > /dev/null
projectPath="$(git rev-parse --show-toplevel)"
pushd > /dev/null

subPath=$(awk -F '/vendor/' '{print $1}' <<< $projectPath)
# containerName=$(sed 's#.*/##' <<< $subPath | sed s/-/_/g)

## detect test result output
for i in $argsInput; do
    case $i in
        --log-junit=*)
            outputPath="${i#*=}"
            ;;
        *)
            ;;
    esac
done

# replace with local
args=("${argsInput/$subPath\//}")
args=("${args//(*}")
args=("${args#app\/}")

# Detect path
container=$(docker ps -n=-1 --filter name=$containerName --format="{{.ID}}")
phpunitPath=$(docker exec -it $container /bin/bash -c "if [ -f vendor/bin/phpunit ]; then echo vendor/bin/phpunit; else echo bin/phpunit; fi" | tr -d '\r')
execPath=$(docker exec -it $container /bin/bash -c "if [ -f /bin/sh ]; then echo /bin/sh; else echo /bin/bash; fi" | tr -d '\r')
dockerPath=$(docker inspect --format {{.Config.WorkingDir}} $container)

## debug
# echo "Raw ARGS: "${@}
# echo "Params:   "${args[@]}
# echo "Docker:   "$dockerPath
# echo "Local:    "$projectPath
# echo "Result:   "$outputPath
echo "docker exec -i "$container" php -d memory_limit=-1 "$phpunitPath" "${args[@]}

# Run the tests
docker exec -it $container $execPath -c "$phpunitPath -d memory_limit=-1 -d xdebug.idekey=deliver-be ${args}"
# docker exec -it $container $phpunitPath -d memory_limit=-1 ${args[@]}

# copy results
# docker cp -a "$container:$localPhpUnitResultPath" "$outputPath"|- &> /dev/null

# replace docker path to locals
# sed -i '_' "s#$dockerPath#$projectPath#g" $outputPath
