local M = {}
local BASE = "https://virtual-staging.app"
local PAGES = {  }

function M.home_url()
  return BASE .. "/"
end

function M.page_url(name)
  local path = PAGES[name]
  if not path then error("unknown page: " .. tostring(name)) end
  return BASE .. path
end

function M.tool_url(slug)
  local allowed = { "ai-staging", "furniture-removal", "short-video", "multilingual", "cg-annotation", "aozora" }
  local ok = false
  for _, item in ipairs(allowed) do if item == slug then ok = true end end
  if not ok then error("unknown tool_url: " .. tostring(slug)) end
  return BASE .. "/tools/" .. slug .. ""
end
function M.guide_url(slug)
  local allowed = { "compliance", "homestaging", "akushitsu-taisaku", "pricing", "blog", "features" }
  local ok = false
  for _, item in ipairs(allowed) do if item == slug then ok = true end end
  if not ok then error("unknown guide_url: " .. tostring(slug)) end
  return BASE .. "/" .. slug .. ""
end
return M
