require_relative 'lib/virtual_staging_url_tools'
raise 'home' unless VirtualStagingUrlTools.home_url == "https://virtual-staging.app/"
raise 'extra' unless VirtualStagingUrlTools.tool_url("ai-staging") == "https://virtual-staging.app/tools/ai-staging"
begin
  VirtualStagingUrlTools.tool_url('NOT A SLUG')
  raise 'extra should fail'
rescue ArgumentError
end
puts 'ok'
