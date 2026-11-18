---@diagnostic disable: undefined-global

local conditions = require("luasnip.extras.conditions.expand")

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

	s({trig = "iehemail", desc = "IEH email address"},
        t("wesley.gomersall@iehinc.com")
    ),

}, {
    -- autotriggered snippets
    
    -- complete parentheses & brackets
	s({trig = "(", desc = "Add closing ')'"},
        { t("("), i(1), t(")") }, {condition = conditions.line_end}
    ),

	s({trig = "[", desc = "Add closing ']'"},
        { t("["), i(1), t("]") }, {condition = conditions.line_end}
    ),

	s({trig = "{", desc = "Add closing '}'"},
        { t("{"), i(1), t("}") }, {condition = conditions.line_end}
    ),
}
