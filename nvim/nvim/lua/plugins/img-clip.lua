return {
  "HakonHarnes/img-clip.nvim",
  event = "BufEnter",
  opts = {
    default = {
      dir_path = function()
        return vim.fn.expand("~/Notes/assets") -- global assets folder
      end,
      file_name = "%Y-%m-%d-%H-%M-%S", -- timestamp filenames
    },
    template = "![$FILE_NAME](assets/$FILE_NAME.$EXTENSION)", -- relative link
  },
  keys = {
    {
      "<leader>p",
      function()
        require("img-clip").paste_image()
      end,
      desc = "Paste image from clipboard",
    },
  },
}
