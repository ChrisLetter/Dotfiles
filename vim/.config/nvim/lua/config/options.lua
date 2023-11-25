-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- IGNORING WRONG TSSERVER ERROR MESSAGES WHEN WORKING WITH JAVASCRIPT --
local function filter_tsserver_diagnostics(_, result, ctx, config)
  if result.diagnostics == nil then
    return
  end
  local idx = 1
  while idx <= #result.diagnostics do
    local entry = result.diagnostics[idx]

    -- codes: https://github.com/microsoft/TypeScript/blob/main/src/compiler/diagnosticMessages.json
    if entry.code == 7016 or entry.code == 80001 then
      table.remove(result.diagnostics, idx)
    else
      idx = idx + 1
    end
  end
  vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
end
vim.lsp.handlers["textDocument/publishDiagnostics"] = filter_tsserver_diagnostics
