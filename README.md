# actions.nvim

actions.nvim is an actions runner menu inspired by [REAPER](https://reaper.fm)'s "Actions" window.

Currently, it's an extension for [Telescope](https://github.com/nvim-telescope/telescope.nvim).

## Setup

```lua
require("actions").setup({
  actions = {
    ["Format LSP code"] = function()
      vim.lsp.buf.format()
    end,
    ["Rename symbol"] = function()
      vim.lsp.buf.rename()
    end,
    ["Go to definition"] = function()
      vim.lsp.buf.definition()
    end,
  },
})
require("telescope").load_extension("actions")
```

## Usage

```lua
vim.keymap.set("n", "<leader>fa", require("telescope").extensions.actions.action_list)
vim.keymap.set("n", "?",          require("telescope").extensions.actions.action_list)
```

Or use the `Telescope` command:

```lua
:Telescope actions action_list
```
