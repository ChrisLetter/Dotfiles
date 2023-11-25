return {
  -- Using standardjs for linting
  {
    "mfussenegger/nvim-lint",
    opts = {
      events = { "BufWritePost", "BufReadPost", "InsertLeave" },
      linters_by_ft = {
        ["*"] = { "cspell" },
        javascript = {
          "standardjs",
        },
      },
      linters = {},
    },
  },

  -- Enabling format on save for javascript through standardjs
  {
    "stevearc/conform.nvim",
    opts = {
      format = {
        timeout_ms = 3000,
        async = false, -- not recommended to change
        quiet = false, -- not recommended to change
      },
      ---@type table<string, conform.FormatterUnit[]>
      formatters_by_ft = {
        javascript = { "standardjs" },
      },
      ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
      formatters = {},
    },
  },

  -- Support for .editorconfig
  { "editorconfig/editorconfig-vim" },

  -- Sonarlint config for javascript
  {
    "https://gitlab.com/schrieveslaach/sonarlint.nvim",
    config = function()
      require("sonarlint").setup({
        server = {
          cmd = {
            "sonarlint-language-server",
            "-stdio",
            "-analyzers",
            vim.fn.expand("/home/chris/.local/share/nvim/mason/share/sonarlint-analyzers/sonarjs.jar"),
          },
          settings = {
            sonarlint = {},
          },
        },
        filetypes = {
          "javascript",
        },
      })
    end,
  },
}
