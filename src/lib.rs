const BASE: &str = "https://virtual-staging.app";

fn join(path: &str) -> String {
    format!("{BASE}{path}")
}

pub fn home_url() -> String {
    format!("{BASE}/")
}

pub fn page_url(name: &str) -> Result<String, &'static str> {
    let path = match name {
        _ => return Err("unknown page"),
    };
    Ok(join(path))
}

pub fn tool_url(slug: &str) -> Result<String, &'static str> {
    let path = match slug {
        "ai-staging" => "/tools/ai-staging",
        "furniture-removal" => "/tools/furniture-removal",
        "short-video" => "/tools/short-video",
        "multilingual" => "/tools/multilingual",
        "cg-annotation" => "/tools/cg-annotation",
        "aozora" => "/tools/aozora",
        _ => return Err("unknown tool"),
    };
    Ok(join(path))
}

pub fn guide_url(slug: &str) -> Result<String, &'static str> {
    let path = match slug {
        "compliance" => "/compliance",
        "homestaging" => "/homestaging",
        "akushitsu-taisaku" => "/akushitsu-taisaku",
        "pricing" => "/pricing",
        "blog" => "/blog",
        "features" => "/features",
        _ => return Err("unknown guide"),
    };
    Ok(join(path))
}

pub fn metadata() -> Vec<(&'static str, String)> {
    vec![
        ("name", "Virtual Staging".to_string()),
        ("homepage", home_url()),
        ("description", "Offline URL builder for Virtual Staging tool pages and rental-listing guides. Not an official SDK.".to_string()),
    ]
}
