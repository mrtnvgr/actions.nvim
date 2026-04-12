local me = require("actions")

local function action_list_picker()
  local action_names = vim.tbl_keys(me.get_actions())

  vim.ui.select(action_names, {}, function(x)
    local actions_table = me.get_actions()
    local action_fn = actions_table[x]
    if action_fn then action_fn() end
  end)
end

return {
  action_list = action_list_picker,
}
