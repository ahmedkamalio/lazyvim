return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      prettier = {
        options = {
          ext_parsers = {
            gohtml = "html",
          },
        },
      },
    },
    formatters_by_ft = {
      html = {
        "prettier",
      },
    },
  },
}
