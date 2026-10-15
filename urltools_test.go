package urltools

import "testing"

func TestMetadata(t *testing.T) {
    data := Metadata()
    if data["name"] != "Virtual Staging" {
        t.Fatalf("brand %s", data["name"])
    }
    if data["homepage"] != "https://virtual-staging.app/" {
        t.Fatalf("homepage %s", data["homepage"])
    }
}

func TestToolURL(t *testing.T) {
    {
        got, err := ToolURL("ai-staging")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/tools/ai-staging" { t.Fatalf("%s", got) }
    }
    {
        got, err := ToolURL("furniture-removal")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/tools/furniture-removal" { t.Fatalf("%s", got) }
    }
    {
        got, err := ToolURL("short-video")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/tools/short-video" { t.Fatalf("%s", got) }
    }
    {
        got, err := ToolURL("multilingual")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/tools/multilingual" { t.Fatalf("%s", got) }
    }
    {
        got, err := ToolURL("cg-annotation")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/tools/cg-annotation" { t.Fatalf("%s", got) }
    }
    {
        got, err := ToolURL("aozora")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/tools/aozora" { t.Fatalf("%s", got) }
    }
    if _, err := ToolURL("not-listed"); err == nil { t.Fatal("expected error") }
}

func TestGuideURL(t *testing.T) {
    {
        got, err := GuideURL("compliance")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/compliance" { t.Fatalf("%s", got) }
    }
    {
        got, err := GuideURL("homestaging")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/homestaging" { t.Fatalf("%s", got) }
    }
    {
        got, err := GuideURL("akushitsu-taisaku")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/akushitsu-taisaku" { t.Fatalf("%s", got) }
    }
    {
        got, err := GuideURL("pricing")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/pricing" { t.Fatalf("%s", got) }
    }
    {
        got, err := GuideURL("blog")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/blog" { t.Fatalf("%s", got) }
    }
    {
        got, err := GuideURL("features")
        if err != nil { t.Fatal(err) }
        if got != "https://virtual-staging.app/features" { t.Fatalf("%s", got) }
    }
    if _, err := GuideURL("not-listed"); err == nil { t.Fatal("expected error") }
}
