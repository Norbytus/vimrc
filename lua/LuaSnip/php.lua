local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local t = ls.text_node
local fmt = require("luasnip.extras.fmt").fmt

-- Function to generate namespace from file path
local function generate_namespace()
  local filepath = vim.fn.expand("%:p") -- Full path of current file
  local src_pos = filepath:find("/src/") -- Adjust if your code is in `src`
  if not src_pos then
    return "App" -- Default namespace
  end
  local ns_path = filepath:sub(src_pos + 5) -- after /src/
  ns_path = ns_path:gsub("/", "\\")         -- convert path to namespace
  ns_path = ns_path:match("(.+)/") or ""    -- remove filename
  return "App\\" .. ns_path
end

return {
  s("class", fmt([[
    <?php

    declare(strict_types=1);

    namespace {};

    class {} 
    {{
        public function __construct({})
        {{
            {}
        }}
    }}
  ]], {
    ls.function_node(generate_namespace, {}),
    i(1, "ClassName"),
    i(2),
    i(3),
  })),

  s("interface", fmt([[
    <?php

    declare(strict_types=1);

    namespace {};

    interface {} 
    {{
        public function __construct({})
        {{
            {}
        }}
    }}
  ]], {
    ls.function_node(generate_namespace, {}),
    i(1, "ClassName"),
    i(2),
    i(3),
  })),
}
