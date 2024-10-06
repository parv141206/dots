return {
  "stevearc/conform.nvim",
  opts = function()
    local opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        -- Add other file types as needed
      },
      formatters = {
        prettier = {
          single_quote = true, -- Example option for single quotes
          jsx_single_quote = true,
        },
      },
    }
    return opts
  end,
}
