local M = {}

local const = require("config.utils.constants")
local fs = require("config.utils.fs")

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

--- @return string[]
function M.servers()
  if not fs.is_directory(const.LSP_SETTINGS) then
    return {}
  end

  return fs.glob(const.LSP_SETTINGS .. "/*.lua", ":t:r")
end

function M.init()
  local servers = M.servers()
  local capabilities = get_capabilities()

  for _, server in ipairs(servers) do
    local success, config = pcall(require, "config.lsp.servers." .. server)

    if success and type(vim.g[server]) == "boolean" then
      vim.lsp.config[server] = config(capabilities)
      vim.lsp.enable(server, vim.g[server])
    end
  end
end

return M
