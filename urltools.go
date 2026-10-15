package urltools

import (
    "fmt"
)

const baseURL = "https://virtual-staging.app"

func HomeURL() string {
    return baseURL + "/"
}

func PageURL(name string) (string, error) {
    pages := map[string]string{
    }
    path, ok := pages[name]
    if !ok {
        return "", fmt.Errorf("unknown page: %s", name)
    }
    return baseURL + path, nil
}

func ToolURL(slug string) (string, error) {
    switch slug {
    case "ai-staging", "furniture-removal", "short-video", "multilingual", "cg-annotation", "aozora":
        return baseURL + "/tools/" + slug + "", nil
    default:
        return "", fmt.Errorf("unknown tool: %s", slug)
    }
}

func GuideURL(slug string) (string, error) {
    switch slug {
    case "compliance", "homestaging", "akushitsu-taisaku", "pricing", "blog", "features":
        return baseURL + "/" + slug + "", nil
    default:
        return "", fmt.Errorf("unknown guide: %s", slug)
    }
}

func Metadata() map[string]string {
    return map[string]string{
        "name":        "Virtual Staging",
        "homepage":    HomeURL(),
        "description": "Offline URL builder for Virtual Staging tool pages and rental-listing guides. Not an official SDK.",
    }
}
