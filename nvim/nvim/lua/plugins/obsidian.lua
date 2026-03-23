return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim", -- add telescope for search
    },
    opts = {
      workspaces = {
        {
          name = "notes",
          path = "~/Notes", -- your vault
        },
      },
      daily_notes = {
        folder = "daily",
      },
      picker = {
        name = "telescope.nvim", -- 👈 tells obsidian.nvim to use telescope
      },
    },
  },
}
