const BASE = "https://virtual-staging.app";
const PAGES = {};

function join(path) {
  return BASE + path;
}

export function homeUrl() {
  return BASE + '/';
}

export function pageUrl(name) {
  if (!Object.prototype.hasOwnProperty.call(PAGES, name)) {
    throw new Error(`unknown page: ${name}`);
  }
  return join(PAGES[name]);
}

const TOOLS = new Set(["ai-staging", "furniture-removal", "short-video", "multilingual", "cg-annotation", "aozora"]);
export function toolUrl(slug) {
  if (!TOOLS.has(slug)) {
    throw new Error(`unknown tool: ${slug}`);
  }
  return join("/tools/" + slug + "");
}

const GUIDES = new Set(["compliance", "homestaging", "akushitsu-taisaku", "pricing", "blog", "features"]);
export function guideUrl(slug) {
  if (!GUIDES.has(slug)) {
    throw new Error(`unknown guide: ${slug}`);
  }
  return join("/" + slug + "");
}

export function metadata() {
  const canonicalPages = { home: homeUrl() };
  for (const name of Object.keys(PAGES)) canonicalPages[name] = pageUrl(name);
  canonicalPages.tool = toolUrl("ai-staging");
  canonicalPages.guide = guideUrl("compliance");
  return {
    name: "Virtual Staging",
    homepage: homeUrl(),
    description: "Offline URL builder for Virtual Staging tool pages and rental-listing guides. Not an official SDK.",
    canonicalPages,
    tags: ["staging", "real-estate", "url-builder"],
  };
}
