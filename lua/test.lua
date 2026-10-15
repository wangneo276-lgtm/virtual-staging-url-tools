local M = require 'virtual_staging_url_tools'
assert(M.home_url() == 'https://virtual-staging.app/')
assert(M.tool_url('ai-staging') == 'https://virtual-staging.app/tools/ai-staging')
print('ok')
