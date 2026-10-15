module VirtualStagingUrlTools
  BASE = "https://virtual-staging.app"
  PAGES = {  }
  def self.home_url
    BASE + "/"
  end

  def self.page_url(name)
    path = PAGES[name]
    raise ArgumentError, "unknown page: #{name}" if path.nil?
    BASE + path
  end

  def self.tool_url(slug)
    allowed = ["ai-staging", "furniture-removal", "short-video", "multilingual", "cg-annotation", "aozora"]
    raise ArgumentError, "unknown tool_url: #{slug}" unless allowed.include?(slug)
    BASE + "/tools/" + slug + ""
  end
  def self.guide_url(slug)
    allowed = ["compliance", "homestaging", "akushitsu-taisaku", "pricing", "blog", "features"]
    raise ArgumentError, "unknown guide_url: #{slug}" unless allowed.include?(slug)
    BASE + "/" + slug + ""
  end
end
