return {
    {
        "bjarneo/aether.nvim",
        name = "aether",
        priority = 1000,
        opts = {
            disable_italics = false,
            colors = {
                -- Monotone shades (base00-base07)
                base00 = "#262626", -- Default background
                base01 = "#404040", -- Lighter background (status bars)
                base02 = "#404040", -- Selection background
                base03 = "#8f8f8f", -- Comments, invisibles
                base04 = "#d4d4d4", -- Dark foreground
                base05 = "#d4d4d4", -- Default foreground
                base06 = "#eeeeee", -- Light foreground
                base07 = "#404040", -- Light background

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
