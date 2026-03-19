# actions.nvim

A searchable actions runner menu for [Neovim](https://neovim.io/), inspired by [REAPER](https://reaper.fm)'s ["Actions"](https://dt7v1i9vyp3mf.cloudfront.net/styles/news_large/s3/imagelibrary/r/reaper_0316_01-ldDVvIJ8Uwvf7m8ADF3ORNs3lnltWA1b.jpg) window. Built as a [Telescope](https://github.com/nvim-telescope/telescope.nvim) extension.

## Setup

```lua
local actions = require("actions")
actions.setup({ actions = actions.stock_actions })
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
