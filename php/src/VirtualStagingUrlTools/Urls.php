<?php

declare(strict_types=1);

namespace VirtualStagingUrlTools;

final class Urls
{
    private const BASE = 'https://virtual-staging.app';

    /** @return array<string, mixed> */
    public static function metadata(): array
    {
        return [
            'name' => 'Virtual Staging',
            'homepage' => self::homeUrl(),
            'description' => 'Offline URL builder for Virtual Staging tool pages and rental-listing guides. Not an official SDK.',
            'canonicalPages' => array_merge(
                ['home' => self::homeUrl()],
                [],
            ),
            'tags' => ['staging', 'real-estate', 'url-builder'],
        ];
    }

    public static function homeUrl(): string
    {
        return self::BASE . '/';
    }

    public static function pageUrl(string $name): string
    {
        $pages = [
        ];
        if (!array_key_exists($name, $pages)) {
            throw new \InvalidArgumentException('unknown page: ' . $name);
        }
        return self::BASE . $pages[$name];
    }

    public static function toolUrl(string $slug): string
    {
        $allowed = ['ai-staging', 'furniture-removal', 'short-video', 'multilingual', 'cg-annotation', 'aozora'];
        if (!in_array($slug, $allowed, true)) {
            throw new \InvalidArgumentException('unknown tool: ' . $slug);
        }
        return self::BASE . '/tools/' . $slug . '';
    }

    public static function guideUrl(string $slug): string
    {
        $allowed = ['compliance', 'homestaging', 'akushitsu-taisaku', 'pricing', 'blog', 'features'];
        if (!in_array($slug, $allowed, true)) {
            throw new \InvalidArgumentException('unknown guide: ' . $slug);
        }
        return self::BASE . '/' . $slug . '';
    }

}
