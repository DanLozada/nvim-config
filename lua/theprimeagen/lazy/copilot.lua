return {
    -- GitHub Copilot
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    -- Lazy load when event occurs. Events are triggered
    -- as mentioned in:
    -- https://vi.stackexchange.com/a/4495/20389
    event = "InsertEnter",
    -- You can also have it load at immediately at
    -- startup by commenting above and uncommenting below:
    -- lazy = false,
    config = function()
      require("copilot").setup({
        -- Disable suggestion and panel when using copilot-cmp
        suggestion = { enabled = false, },
        panel = { enabled = false, },
      })
    end,
}
