return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#1f1f1f", -- Default background
                base01 = "#2f2f2f", -- Lighter background (status bars)
                base02 = "#3f3f3f", -- Selection background
                base03 = "#7f7f7f", -- Comments, invisibles
                base04 = "#b4b4b4", -- Dark foreground
                base05 = "#d4d4d4", -- Default foreground
                base06 = "#f4f4f4", -- Light foreground
                base07 = "#2f2f2f", -- Light background

                -- Accent colors (base08-base0F)
                base08 = "#fe9493", -- Variables, errors, red
                base09 = "#8edac5", -- Integers, constants, orange
                base0A = "#f6c198", -- Classes, types, yellow
                base0B = "#8edac5", -- Strings, green
                base0C = "#8edac5", -- Support, regex, cyan
                base0D = "#f0a05a", -- Functions, keywords, blue
                base0E = "#f6c198", -- Keywords, storage, magenta
                base0F = "#bfa3fc", -- Deprecated, brown/yellow
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
