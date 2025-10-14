---@diagnostic disable: undefined-global

return {
    -- manually triggered snippets

    s({trig = "date", desc = "YYYY-MM-DD"},
        t(os.date("%Y-%m-%d"))
    ),

    s({trig = "longdate", desc = "Day, Date Month, Year, HH:MM:SS"},
        t(os.date("%A, %d %B, %Y, %H:%M:%S"))
    ),

	s({trig = "email", desc = "gmail address"},
        t("gomersallw@gmail.com")
    ),

	s({trig = "uoemail", desc = "UO email address"},
        t("wesg@uoregon.edu")
    ),

    -- complete parentheses & brackets
	s({trig = "(", desc = "Add closing ')'"},
        { t("("), i(1), t(")") }
    ),

	s({trig = "[", desc = "Add closing ']'"},
        { t("["), i(1), t("]") }
    ),

	s({trig = "{", desc = "Add closing '}'"},
        { t("{"), i(1), t("}") }
    ),
}
