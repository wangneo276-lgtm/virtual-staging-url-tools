from __future__ import annotations

_BASE = "https://virtual-staging.app"
_BRAND = "Virtual Staging"
_DESCRIPTION = "Offline URL builder for Virtual Staging tool pages and rental-listing guides. Not an official SDK."
_TAGS = ["staging", "real-estate", "url-builder"]
_PAGES = {}

_TOOLS = ["ai-staging", "furniture-removal", "short-video", "multilingual", "cg-annotation", "aozora"]
_GUIDES = ["compliance", "homestaging", "akushitsu-taisaku", "pricing", "blog", "features"]

def _join(path: str) -> str:
    return _BASE + path

def home_url() -> str:
    return _BASE + "/"

def page_url(name: str) -> str:
    try:
        path = _PAGES[name]
    except KeyError:
        raise ValueError(f"unknown page: {name}") from None
    return _join(path)

def tool_url(slug: str) -> str:
    if slug not in _TOOLS:
        raise ValueError(f"unknown tool: {slug}")
    return _join("/tools/" + slug + "")

def guide_url(slug: str) -> str:
    if slug not in _GUIDES:
        raise ValueError(f"unknown guide: {slug}")
    return _join("/" + slug + "")

def metadata() -> dict[str, object]:
    pages = {'home': home_url()}
    for name in _PAGES:
        pages[name] = page_url(name)
    pages.update({
        "tool": tool_url("ai-staging"),
        "guide": guide_url("compliance"),
    })
    return {
        "name": _BRAND,
        "homepage": home_url(),
        "description": _DESCRIPTION,
        "canonicalPages": pages,
        "tags": list(_TAGS),
    }
