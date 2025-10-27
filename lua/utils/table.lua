local M = {}

function M.key_of(tbl, target)
  for k, v in pairs(tbl) do
    if v == target then
      return k
    end
  end

  return nil
end

return M
