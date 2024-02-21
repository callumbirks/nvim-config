return {
    -- Make TokyoNight transparent
    {
        "folke/tokyonight.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },
    -- Disable bufferline (tabs)
    {
        "akinsho/bufferline.nvim",
        enabled = false,
    },
    -- Disable tab in LuaSnip
    {
        "L3MON4D3/LuaSnip",
        keys = function() return {} end,
    },
}