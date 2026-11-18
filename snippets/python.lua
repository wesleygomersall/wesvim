---@diagnostic disable: undefined-global

local conditions = require("luasnip.extras.conditions.expand")

return {
    -- manually triggered snippets

    s({trig = "parser", desc = "define and collect variables with argparse"},
        t({ 'parser = argparse.ArgumentParser(description="")',
            '# parser.add_argument("--input", "-i", type=str, default = "hello", help="")',
            '# parser.add_argument("--bool", "-b", action="store_true", default=False, help="")',
            '# parser.add_argument("--number", "-n", type=float, default = 3.14, help="")',
            'args = parser.parse_args()',
            ''})
    ),

    s({trig = "name main", desc = "if name is main, pass"},
        t({'def main():',
           '\tpass',
           '',
           'if __name__ == "__main__":',
           '\tmain()',
           ''})
    ),


}, {
    -- autotriggered snippets

	s({trig = "#!/u", desc = "shebang"},
        {t({"#!/usr/bin/env python3", ""}), 
         i(1)}, {condition = conditions.line_begin}
    ),

	s({trig = "'''", desc = "''' Docstring"},
        { t("'''"), i(1), t("'''") }, {condition = conditions.line_end}
    ),

	s({trig = '"""', desc = '""" Docstring'},
        { t('"""'), i(1), t('"""') }, {condition = conditions.line_end}
    ),

}
