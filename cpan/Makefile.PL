use strict;
use warnings;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME => 'VirtualStaging::UrlTools',
    VERSION_FROM => 'lib/VirtualStaging/UrlTools.pm',
    ABSTRACT => 'Offline URL helpers for Virtual Staging',
    AUTHOR => 'bbwdadfg',
    LICENSE => 'mit',
    META_MERGE => { resources => { homepage => 'https://virtual-staging.app/', repository => 'https://github.com/wangneo276-lgtm/virtual-staging-url-tools' } },
);
