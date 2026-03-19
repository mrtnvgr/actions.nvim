local M = {}

M._actions = {}

function M.setup(opts)
  opts = opts or {}

  M._actions = opts.actions or {}
end

function M.get_actions()
  return M._actions
end

M.stock_actions = {
  ["LSP: Toggle inlay hints"] = function()
    local enabled = vim.lsp.inlay_hint.is_enabled()
    vim.lsp.inlay_hint.enable(not enabled)
  end,
};

return M
