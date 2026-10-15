package pro.virtualstaging;

import java.util.HashMap;
import java.util.Map;

public final class Urls {
    public static final String BASE = "https://virtual-staging.app";
    private static final Map<String, String> PAGES = new HashMap<>();
    static {

    }
    private Urls() {}
    public static String homeUrl() { return BASE + "/"; }
    public static String pageUrl(String name) {
        String path = PAGES.get(name);
        if (path == null) throw new IllegalArgumentException("unknown page: " + name);
        return BASE + path;
    }

    public static String toolUrl(String slug) {
        if (!java.util.Set.of("ai-staging", "furniture-removal", "short-video", "multilingual", "cg-annotation", "aozora").contains(slug)) {
            throw new IllegalArgumentException("unknown tool_url: " + slug);
        }
        return BASE + "/tools/" + slug + "";
    }
    public static String guideUrl(String slug) {
        if (!java.util.Set.of("compliance", "homestaging", "akushitsu-taisaku", "pricing", "blog", "features").contains(slug)) {
            throw new IllegalArgumentException("unknown guide_url: " + slug);
        }
        return BASE + "/" + slug + "";
    }
}
