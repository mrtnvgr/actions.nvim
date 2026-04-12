# actions.nvim

A searchable actions runner menu for [Neovim](https://neovim.io/), inspired by [REAPER](https://reaper.fm)'s ["Actions"](https://dt7v1i9vyp3mf.cloudfront.net/styles/news_large/s3/imagelibrary/r/reaper_0316_01-ldDVvIJ8Uwvf7m8ADF3ORNs3lnltWA1b.jpg) window.

Supports:
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- `vim.ui.select` (stock neovim, [mini.pick](https://github.com/nvim-mini/mini.pick), ...)

## Setup

#### Stock actions

```lua
require("actions").setup()
```

#### Custom actions

```lua
require("actions").setup({ actions = {
  ["Action №1"] = function() ... end,
} })
```

### Integrate with Telescope

```lua
require("telescope").load_extension("actions")
```

### Integrate with mini.pick

```lua
MiniPick.registry.action_list = require("actions.pickers").action_list
```

## Usage

### Telescope

```lua
vim.keymap.set("n", "<leader>fa", require("telescope").extensions.actions.action_list)
vim.keymap.set("n", "?",          require("telescope").extensions.actions.action_list)
```

Or use the `:Telescope` command:

```lua
:Telescope actions action_list
```

### mini.pick

```lua
vim.keymap.set("n", "<leader>fa", MiniPick.registry.action_list)
vim.keymap.set("n", "?",          MiniPick.registry.action_list)
```

Or use the `:Pick` command:

```lua
:Pick action_list
```
