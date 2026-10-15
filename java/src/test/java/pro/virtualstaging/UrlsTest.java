package pro.virtualstaging;
public final class UrlsTest {
    public static void main(String[] args) {
        if (!Urls.homeUrl().equals("https://virtual-staging.app/")) throw new AssertionError("home");
        if (!Urls.toolUrl("ai-staging").equals("https://virtual-staging.app/tools/ai-staging")) throw new AssertionError("extra");
        System.out.println("ok");
    }
}
