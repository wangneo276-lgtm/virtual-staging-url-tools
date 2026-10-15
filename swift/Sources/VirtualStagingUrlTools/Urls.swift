import Foundation

public enum UrlError: Error { case unknown(String, String) }

public enum Urls {
    public static let base = "https://virtual-staging.app"
    private static let pages: [String: String] = [:]
    public static func homeUrl() -> String { base + "/" }
    public static func pageUrl(_ name: String) throws -> String {
        guard let path = pages[name] else { throw UrlError.unknown("page", name) }
        return base + path
    }

    public static func toolUrl(_ slug: String) throws -> String {
        let allowed = ["ai-staging", "furniture-removal", "short-video", "multilingual", "cg-annotation", "aozora"]
        guard allowed.contains(slug) else { throw UrlError.unknown("tool_url", slug) }
        return base + "/tools/" + slug + ""
    }
    public static func guideUrl(_ slug: String) throws -> String {
        let allowed = ["compliance", "homestaging", "akushitsu-taisaku", "pricing", "blog", "features"]
        guard allowed.contains(slug) else { throw UrlError.unknown("guide_url", slug) }
        return base + "/" + slug + ""
    }
}
