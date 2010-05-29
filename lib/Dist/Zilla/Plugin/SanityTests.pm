package Dist::Zilla::Plugin::SanityTests;
# ABSTRACT: DEPRECATED - Release tests to avoid insanity

use Moose;
use namespace::autoclean;

extends 'Dist::Zilla::Plugin::InlineFiles';

=head1 DESCRIPTION

B<NOTE:> This module is deprecated. Please use
L<Dist::Zilla::Plugin::NoTabsTests> and
L<Dist::Zilla::Plugin::EOLTests> instead.

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing
the following files:

=for :list
* xt/release/no_tabs.t
a standard Test::NoTabs test
* xt/release/eol.t
a standard Test::EOL test

=cut

__PACKAGE__->meta->make_immutable;

1;

__DATA__
___[ xt/release/no_tabs.t ]___
use strict;
use warnings;
use Test::More;

eval 'use Test::NoTabs';
plan skip_all => 'Test::NoTabs required' if $@;

all_perl_files_ok();

___[ xt/release/eol.t ]___
use strict;
use warnings;
use Test::More;

eval 'use Test::EOL';
plan skip_all => 'Test::EOL required' if $@;

all_perl_files_ok();

