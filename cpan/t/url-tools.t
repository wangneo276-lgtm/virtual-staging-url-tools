use strict;
use warnings;
use Test::More tests => 2;
use lib 'lib';
use VirtualStaging::UrlTools;
is(VirtualStaging::UrlTools::home_url(), 'https://virtual-staging.app/', 'home');
is(VirtualStaging::UrlTools::tool_url('ai-staging'), 'https://virtual-staging.app/tools/ai-staging', 'extra');
