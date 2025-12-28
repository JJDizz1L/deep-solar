return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#051A2B", -- Default background
                base01 = "#4c5641", -- Lighter background (status bars)
                base02 = "#051A2B", -- Selection background
                base03 = "#4c5641", -- Comments, invisibles
                base04 = "#f9bc8a", -- Dark foreground
                base05 = "#868f7b", -- Default foreground
                base06 = "#868f7b", -- Light foreground
                base07 = "#f9bc8a", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#b27575", -- Variables, errors, red
                base09 = "#d5aeae", -- Integers, constants, orange
                base0A = "#bdbd89", -- Classes, types, yellow
                base0B = "#80b780", -- Strings, green
                base0C = "#7cb6b6", -- Support, regex, cyan
                base0D = "#9393c3", -- Functions, keywords, blue
                base0E = "#ae6fae", -- Keywords, storage, magenta
                base0F = "#dfdfc3", -- Deprecated, brown/yellow
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
