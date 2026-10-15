import unittest
from virtual_staging_url_tools import home_url, metadata, page_url
from virtual_staging_url_tools import tool_url
from virtual_staging_url_tools import guide_url

class UrlTests(unittest.TestCase):
    def test_metadata(self):
        data = metadata()
        self.assertEqual(data["name"], "Virtual Staging")
        self.assertTrue(data["homepage"].startswith("https://"))
        self.assertEqual(data["homepage"], "https://virtual-staging.app/")
        self.assertNotIn(' ', data['homepage'])

    def test_home(self):
        self.assertEqual(home_url(), "https://virtual-staging.app/")

    def test_pages(self):
        with self.assertRaises(ValueError):
            page_url("missing")

    def test_unknown_page(self):
        with self.assertRaises(ValueError):
            page_url("not-a-page")

    def test_tool_url(self):
        self.assertEqual(tool_url("ai-staging"), "https://virtual-staging.app/tools/ai-staging")
        self.assertEqual(tool_url("furniture-removal"), "https://virtual-staging.app/tools/furniture-removal")
        self.assertEqual(tool_url("short-video"), "https://virtual-staging.app/tools/short-video")
        self.assertEqual(tool_url("multilingual"), "https://virtual-staging.app/tools/multilingual")
        self.assertEqual(tool_url("cg-annotation"), "https://virtual-staging.app/tools/cg-annotation")
        self.assertEqual(tool_url("aozora"), "https://virtual-staging.app/tools/aozora")
        with self.assertRaises(ValueError):
            tool_url("not-listed")

    def test_guide_url(self):
        self.assertEqual(guide_url("compliance"), "https://virtual-staging.app/compliance")
        self.assertEqual(guide_url("homestaging"), "https://virtual-staging.app/homestaging")
        self.assertEqual(guide_url("akushitsu-taisaku"), "https://virtual-staging.app/akushitsu-taisaku")
        self.assertEqual(guide_url("pricing"), "https://virtual-staging.app/pricing")
        self.assertEqual(guide_url("blog"), "https://virtual-staging.app/blog")
        self.assertEqual(guide_url("features"), "https://virtual-staging.app/features")
        with self.assertRaises(ValueError):
            guide_url("not-listed")

if __name__ == '__main__':
    unittest.main()
