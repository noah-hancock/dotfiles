return {
  -- Flowtime
  {
    "donbignose/flowtime.nvim",
    config = function()
      require("flowtime")
    end,
  },

  -- Markdown Preview
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },

  -- Oil
  {
    "stevearc/oil.nvim",
    vim.keymap.set("n", "<leader>n", "<cmd>Oil<cr>", { desc = "Open Oil" }),
  },

  -- Grapple
  {
    "cbochs/grapple.nvim",
    vim.keymap.set("n", "<leader>m", "<cmd>Grapple toggle<cr>", { desc = "Toggle Grapple" }),
    vim.keymap.set("n", "<leader>M", "<cmd>Grapple open_tags<cr>", { desc = "Open Tags" }),
  },

  -- Latex preview
  {
    "jbyuki/nabla.nvim",
    vim.keymap.set("n", "<leader>p", "<cmd>:lua require('nabla').popup()<cr>", { desc = "Nabla Preview" }),
    ft = { "markdown", "tex", "latex" },
  },

  -- Toggle terminal
  {
    "akinsho/toggleterm.nvim",
    vim.keymap.set("n", "<leader>t", "<cmd>:ToggleTerm<cr>", { desc = "Open terminal" }),
    config = true,
  },

  -- LaTeX symbols
  {
    "kdheepak/cmp-latex-symbols",
    ft = { "tex", "markdown" },
  },

  -- VimTeX
  {
    "lervag/vimtex",
  },

  -- LuaSnip LaTeX
  {
    "evesdropper/luasnip-latex-snippets.nvim",
    lazy = true,
  },

  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("silicon").setup({
        background = "#00000000",
        font = "FantasqueSansM Nerd Font=34;Noto Color Emoji=34",
        theme = "Dracula",
      })
    end,
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      buffer = true,
      workspaces = {
        -- {
        -- name = "personal",
        -- path = "~/vaults/personal",
        -- },
        {
          name = "School",
          path = "~/notes/vaults/School",
        },
      },
      templates = {
        folder = "~/notes/vaults/Templates",
        date_format = "%Y-%m-%d",
        time_format = "%H:%M",
      },
    },
  },
}
