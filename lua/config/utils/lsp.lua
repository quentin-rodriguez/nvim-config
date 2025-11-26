local M = {}

local const = require("config.utils.constants")
local fs = require("config.utils.fs")

function M.servers()
  if not fs.is_directory(const.LSP_PATH) then
    return {}
  end

  return fs.glob(const.LSP_PATH .. "/*.lua", ":t:r")
end

--- @return lsp.ClientCapabilities
function M.get_capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  local success, blink = pcall(require, "blink.cmp")

  capabilities.textDocument.completion.completionItem.snippetSupport = true
  capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
  capabilities.textDocument.completion.completionItem.resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  }

  if success then
    capabilities = blink.get_lsp_capabilities(capabilities)
  end

  return capabilities
end

--- @param client vim.lsp.Client
--- @param bufnr integer
function M.on_attach(client, bufnr)
  if client.server_capabilities then
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentRangeFormattingProvider = false
  end

  local opts = { noremap = true, silent = true, buffer = bufnr }
  local map  = vim.keymap.set

  map("n", "gd", vim.lsp.buf.definition, opts)
  map("n", "gD", vim.lsp.buf.declaration, opts)
  map("n", "gi", vim.lsp.buf.implementation, opts)
  map("n", "gr", vim.lsp.buf.references, opts)



end

return M
