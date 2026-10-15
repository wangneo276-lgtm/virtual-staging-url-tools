import test from 'node:test';
import assert from 'node:assert/strict';
import { homeUrl, metadata, pageUrl, toolUrl, guideUrl } from './index.js';

test('metadata points at the live site', () => {
  const data = metadata();
  assert.equal(data.name, "Virtual Staging");
  assert.equal(data.homepage, "https://virtual-staging.app/");
  assert.equal(data.homepage.includes(' '), false);
});

test('unknown page', () => {
  assert.throws(() => pageUrl('not-a-page'), /unknown page/);
});

test('toolUrl', () => {
  assert.equal(toolUrl("ai-staging"), "https://virtual-staging.app/tools/ai-staging");
  assert.equal(toolUrl("furniture-removal"), "https://virtual-staging.app/tools/furniture-removal");
  assert.equal(toolUrl("short-video"), "https://virtual-staging.app/tools/short-video");
  assert.equal(toolUrl("multilingual"), "https://virtual-staging.app/tools/multilingual");
  assert.equal(toolUrl("cg-annotation"), "https://virtual-staging.app/tools/cg-annotation");
  assert.equal(toolUrl("aozora"), "https://virtual-staging.app/tools/aozora");
  assert.throws(() => toolUrl('not-listed'), /unknown tool/);
});

test('guideUrl', () => {
  assert.equal(guideUrl("compliance"), "https://virtual-staging.app/compliance");
  assert.equal(guideUrl("homestaging"), "https://virtual-staging.app/homestaging");
  assert.equal(guideUrl("akushitsu-taisaku"), "https://virtual-staging.app/akushitsu-taisaku");
  assert.equal(guideUrl("pricing"), "https://virtual-staging.app/pricing");
  assert.equal(guideUrl("blog"), "https://virtual-staging.app/blog");
  assert.equal(guideUrl("features"), "https://virtual-staging.app/features");
  assert.throws(() => guideUrl('not-listed'), /unknown guide/);
});
