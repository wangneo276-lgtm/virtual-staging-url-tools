use virtual_staging_url_tools::{home_url, metadata, page_url};
use virtual_staging_url_tools::tool_url;
use virtual_staging_url_tools::guide_url;

#[test]
fn metadata_has_homepage() {
    let data = metadata();
    assert!(data.iter().any(|(k, v)| *k == "name" && v == "Virtual Staging"));
    assert!(data.iter().any(|(k, v)| *k == "homepage" && v == "https://virtual-staging.app/"));
}

#[test]
fn pages_match() {
    assert!(page_url("not-a-page").is_err());
}

#[test]
fn tool_url_matches() {
    assert_eq!(tool_url("ai-staging").unwrap(), "https://virtual-staging.app/tools/ai-staging");
    assert_eq!(tool_url("furniture-removal").unwrap(), "https://virtual-staging.app/tools/furniture-removal");
    assert_eq!(tool_url("short-video").unwrap(), "https://virtual-staging.app/tools/short-video");
    assert_eq!(tool_url("multilingual").unwrap(), "https://virtual-staging.app/tools/multilingual");
    assert_eq!(tool_url("cg-annotation").unwrap(), "https://virtual-staging.app/tools/cg-annotation");
    assert_eq!(tool_url("aozora").unwrap(), "https://virtual-staging.app/tools/aozora");
    assert!(tool_url("not-listed").is_err());
}

#[test]
fn guide_url_matches() {
    assert_eq!(guide_url("compliance").unwrap(), "https://virtual-staging.app/compliance");
    assert_eq!(guide_url("homestaging").unwrap(), "https://virtual-staging.app/homestaging");
    assert_eq!(guide_url("akushitsu-taisaku").unwrap(), "https://virtual-staging.app/akushitsu-taisaku");
    assert_eq!(guide_url("pricing").unwrap(), "https://virtual-staging.app/pricing");
    assert_eq!(guide_url("blog").unwrap(), "https://virtual-staging.app/blog");
    assert_eq!(guide_url("features").unwrap(), "https://virtual-staging.app/features");
    assert!(guide_url("not-listed").is_err());
}
