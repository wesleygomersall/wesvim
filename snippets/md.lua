---@diagnostic disable: undefined-global

local conditions = require("luasnip.extras.conditions.expand")

return {
    -- manually triggered snippets

}, {
    -- autotriggered snippets

    s({trig = "![", desc = "embed"},
        t("![]()")
    ),

	s({trig = '```', desc = '``` Docstring'},
        { t('```'), i(1), t('```') }, {condition = conditions.line_end}
    ),

}
