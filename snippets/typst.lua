---@diagnostic disable: undefined-global

return {
    -- manually triggered snippets

	s({trig = "format", desc = "Set format: 12pt font, single spaced, with nice indents"},
        t({ '#set page(numbering: "1")',
            '#set text(12pt)',
            '#set par(first-line-indent: (',
            '\tamount: 1.5em,',
            '\tall: true,',
            '))',
        })
    ),

	s({trig = "figformat", desc = "Set format for figures: left-aligned, smaller text, without indent"},
        t({ '#show figure.caption: set align(left)',
        '#show figure.caption: set text(size: 10pt)',
        '#show figure.caption: set par(first-line-indent: 0pt )',
        })
    ),

}, {
    -- autotriggered snippets

	s({trig = "#text", desc = "text block"},
        t("#text()[]")
    ),

}
