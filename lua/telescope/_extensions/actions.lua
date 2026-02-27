local action_state = require("telescope.actions.state")
local actions = require("telescope.actions")
local finders = require("telescope.finders")
local pickers = require("telescope.pickers")
local conf = require("telescope.config").values

local me = require("actions")

local function run_action(prompt_bufnr)
  local selected = action_state.get_selected_entry()
  if selected == nil then return end

  actions.close(prompt_bufnr)

  local actions_table = me.get_actions()
  local action_fn = actions_table[selected.action_name]
  if action_fn then action_fn() end
end

local function action_list_picker(opts)
  opts = opts or {}

  local action_names = vim.tbl_keys(me.get_actions())

  pickers.new(opts, {
    prompt_title = "Actions",

    finder = finders.new_table({ results = action_names }),

    sorter = conf.generic_sorter(opts),

    attach_mappings = function(_, map)
      actions.select_default:replace(run_action)
      map("i", "<CR>", run_action)
      return true
    end,
  }):find()
end

return require("telescope").register_extension({
  exports = {
    action_list = action_list_picker,
  },
})
