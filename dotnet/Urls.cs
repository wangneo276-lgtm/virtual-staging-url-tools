using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace VirtualStaging.UrlTools;

public static partial class Urls
{
    public const string Base = "https://virtual-staging.app";
    private static readonly Dictionary<string, string> Pages = new()
    {

    };

    public static string HomeUrl() => Base + "/";

    public static string PageUrl(string name)
    {
        if (!Pages.TryGetValue(name, out var path))
            throw new ArgumentException("unknown page: " + name);
        return Base + path;
    }

    public static string ToolUrl(string slug)
    {
        string[] allowed = new[] { "ai-staging", "furniture-removal", "short-video", "multilingual", "cg-annotation", "aozora" };
        if (Array.IndexOf(allowed, slug) < 0)
            throw new ArgumentException("unknown tool_url: " + slug);
        return Base + "/tools/" + slug + "";
    }
    public static string GuideUrl(string slug)
    {
        string[] allowed = new[] { "compliance", "homestaging", "akushitsu-taisaku", "pricing", "blog", "features" };
        if (Array.IndexOf(allowed, slug) < 0)
            throw new ArgumentException("unknown guide_url: " + slug);
        return Base + "/" + slug + "";
    }
}
