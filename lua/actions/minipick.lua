local me = require("actions")

local function action_list_picker()
  local action_names = vim.tbl_keys(me.get_actions())

  MiniPick.start({
    source = {
      items = action_names,
      name = "Actions",
      choose = function(chosen)
        local actions_table = me.get_actions()
        local action_fn = actions_table[chosen]
        if action_fn then action_fn() end
      end,
    },
  })
end

return {
  action_list = action_list_picker,
}
