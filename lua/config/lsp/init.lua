local M = {}

--- @return lsp.ClientCapabilities
local function get_capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  local success, blink = pcall(require, "blink.cmp")

  if success then
    capabilities = blink.get_lsp_capabilities(capabilities)
  end

  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
  capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  }

  return capabilities
end

function M.init()
  local capabilities = get_capabilities()

  for _, server in ipairs(vim.g.servers) do
    vim.lsp.config(server, { capabilities = capabilities })
    vim.lsp.enable(server)
  end
end

return M
