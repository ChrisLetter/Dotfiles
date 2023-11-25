-- useful for printing variables and statements
return {
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup({
        printf_statements = {
          javascript = {
            'console.log("🚀🚀 *** %s *** 🚀🚀")',
          },
        },
        print_var_statements = {
          javascript = {
            'console.log("🚀🚀 *** %s *** 🚀🚀", %s)',
          },
        },
      })
    end,
  },
}
