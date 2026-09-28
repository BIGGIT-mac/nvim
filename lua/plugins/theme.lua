return {
    "nyoom-engineering/oxocarbon.nvim",
    build = false,
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd("colorscheme oxocarbon")
        for name, hl in pairs(vim.api.nvim_get_hl(0, {})) do
            if name:match("^BlinkCmpKind") and hl.bg then
                vim.api.nvim_set_hl(0, name, { fg = hl.bg })
            end
        end
    end
}
