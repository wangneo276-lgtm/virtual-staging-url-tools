const BASE = "https://virtual-staging.app";
const PAGES: Record<string, string> = {  };
export function homeUrl(): string { return BASE + "/"; }
export function pageUrl(name: string): string {
  const path = PAGES[name];
  if (!path) throw new Error("unknown page: " + name);
  return BASE + path;
}

export function toolUrl(slug: string): string {
  const allowed = ["ai-staging", "furniture-removal", "short-video", "multilingual", "cg-annotation", "aozora"];
  if (!allowed.includes(slug)) throw new Error("unknown tool_url: " + slug);
  return BASE + "/tools/" + slug + "";
}
export function guideUrl(slug: string): string {
  const allowed = ["compliance", "homestaging", "akushitsu-taisaku", "pricing", "blog", "features"];
  if (!allowed.includes(slug)) throw new Error("unknown guide_url: " + slug);
  return BASE + "/" + slug + "";
}
