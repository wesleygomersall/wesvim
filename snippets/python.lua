---@diagnostic disable: undefined-global

return {
    -- manually triggered snippets

    s({trig = "parser", desc = "define and collect variables with argparse"},
        t({ 'parser = argparse.ArgumentParser(description="")',
            '# parser.add_argument("--input", "-i", type=str, default = "hello", help="")',
            '# parser.add_argument("--bool", "-b", action="store_true", default=False, help="")',
            '# parser.add_argument("--number", "-n", type=float, default = 3.14, help="")',
            'args = parser.parse_args()'
        })
    ),

}, {
    -- autotriggered snippets

	s({trig = "#!/u", desc = "shebang"},
        t("#!/usr/bin/env python3")
    ),

	s({trig = 'if __name__ == "__m', desc = "if name main"},
        t({ 'if __name__ == "__main__":',
            '\tpass'
        })
    ),

}
