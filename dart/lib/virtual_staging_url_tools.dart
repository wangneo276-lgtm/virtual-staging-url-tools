class Urls {
  static const base = 'https://virtual-staging.app';
  static const pages = <String, String>{  };
  String homeUrl() => base + '/';
  String pageUrl(String name) {
    final path = pages[name];
    if (path == null) throw ArgumentError('unknown page: $name');
    return base + path;
  }

  String tool_url(String slug) {
    const allowed = ['ai-staging', 'furniture-removal', 'short-video', 'multilingual', 'cg-annotation', 'aozora'];
    if (!allowed.contains(slug)) throw ArgumentError('unknown tool_url: $slug');
    return base + '/tools/' + slug + '';
  }
  String guide_url(String slug) {
    const allowed = ['compliance', 'homestaging', 'akushitsu-taisaku', 'pricing', 'blog', 'features'];
    if (!allowed.contains(slug)) throw ArgumentError('unknown guide_url: $slug');
    return base + '/' + slug + '';
  }
}
