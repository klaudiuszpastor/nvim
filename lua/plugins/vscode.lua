return {
    {
        "Mofiqul/vscode.nvim",
        config = function()
            vim.o.background = 'dark'  -- 'dark' dla ciemnego motywu lub 'light' dla jasnego motywu

            local c = require('vscode.colors').get_colors()

            require('vscode').setup({
                transparent = true,  -- Włącz przezroczystość tła
                italic_comments = true,  -- Włącz kursywę dla komentarzy
                underline_links = true,  -- Podkreślaj linki
                disable_nvimtree_bg = true,  -- Wyłącz kolor tła dla nvim-tree
                color_overrides = {
                    vscLineNumber = '#FFFFFF',  -- Nadpisz kolor linii numerów
                },
                group_overrides = {
                    Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },  -- Nadpisz kolory grup
                }
            })

            vim.cmd.colorscheme("vscode")
        end,
    },
}

