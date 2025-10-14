---@diagnostic disable: undefined-global

return {
    -- manually triggered snippets

}, {
    -- autotriggered snippets

    s({trig = "![", desc = "embed"},
        t("![]()")
    ),

	s({trig = '```', desc = '``` Docstring'},
        { t('```'), i(1), t('```') }
    ),

}
