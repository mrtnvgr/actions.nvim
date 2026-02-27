local M = {}

M._actions = {}

function M.setup(opts)
  opts = opts or {}

  M._actions = opts.actions or {}
end

function M.get_actions()
  return M._actions
end

return M
