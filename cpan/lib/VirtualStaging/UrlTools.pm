package VirtualStaging::UrlTools;
use strict;
use warnings;
our $VERSION = '0.1.1';
my $BASE = 'https://virtual-staging.app';
my %PAGES = (

);

sub home_url { return $BASE . '/'; }

sub page_url {
    my ($name) = @_;
    die "unknown page: $name" unless exists $PAGES{$name // ''};
    return $BASE . $PAGES{$name};
}

sub tool_url {
    my ($slug) = @_;
    my %allowed = map { $_ => 1 } ('ai-staging', 'furniture-removal', 'short-video', 'multilingual', 'cg-annotation', 'aozora');
    die "unknown tool_url: $slug" unless $allowed{$slug // ''};
    return $BASE . '/tools/' . $slug . '';
}
sub guide_url {
    my ($slug) = @_;
    my %allowed = map { $_ => 1 } ('compliance', 'homestaging', 'akushitsu-taisaku', 'pricing', 'blog', 'features');
    die "unknown guide_url: $slug" unless $allowed{$slug // ''};
    return $BASE . '/' . $slug . '';
}
1;
