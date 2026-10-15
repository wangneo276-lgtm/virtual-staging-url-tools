<?php

declare(strict_types=1);

require __DIR__ . '/../src/VirtualStagingUrlTools/Urls.php';

use VirtualStagingUrlTools\Urls;

function expect(bool $ok, string $message): void
{
    if (!$ok) {
        fwrite(STDERR, $message . PHP_EOL);
        exit(1);
    }
}

$meta = Urls::metadata();
expect($meta['name'] === 'Virtual Staging', 'brand');
expect($meta['homepage'] === 'https://virtual-staging.app/', 'homepage');
expect(!str_contains($meta['homepage'], ' '), 'space');
try { Urls::pageUrl('not-a-page'); expect(false, 'unknown page should throw'); } catch (InvalidArgumentException $e) {}
expect(Urls::toolUrl('ai-staging') === 'https://virtual-staging.app/tools/ai-staging', 'toolUrl ai-staging');
expect(Urls::toolUrl('furniture-removal') === 'https://virtual-staging.app/tools/furniture-removal', 'toolUrl furniture-removal');
expect(Urls::toolUrl('short-video') === 'https://virtual-staging.app/tools/short-video', 'toolUrl short-video');
expect(Urls::toolUrl('multilingual') === 'https://virtual-staging.app/tools/multilingual', 'toolUrl multilingual');
expect(Urls::toolUrl('cg-annotation') === 'https://virtual-staging.app/tools/cg-annotation', 'toolUrl cg-annotation');
expect(Urls::toolUrl('aozora') === 'https://virtual-staging.app/tools/aozora', 'toolUrl aozora');
try { Urls::toolUrl('not-listed'); expect(false, 'bad tool'); } catch (InvalidArgumentException $e) {}
expect(Urls::guideUrl('compliance') === 'https://virtual-staging.app/compliance', 'guideUrl compliance');
expect(Urls::guideUrl('homestaging') === 'https://virtual-staging.app/homestaging', 'guideUrl homestaging');
expect(Urls::guideUrl('akushitsu-taisaku') === 'https://virtual-staging.app/akushitsu-taisaku', 'guideUrl akushitsu-taisaku');
expect(Urls::guideUrl('pricing') === 'https://virtual-staging.app/pricing', 'guideUrl pricing');
expect(Urls::guideUrl('blog') === 'https://virtual-staging.app/blog', 'guideUrl blog');
expect(Urls::guideUrl('features') === 'https://virtual-staging.app/features', 'guideUrl features');
try { Urls::guideUrl('not-listed'); expect(false, 'bad guide'); } catch (InvalidArgumentException $e) {}
fwrite(STDOUT, "ok\n");
