package WWW::MenuGrinder::Role::BeforePreMogrify;
our $VERSION = '0.01_01';


# ABSTRACT: WWW::MenuGrinder role for plugins that need initialization before pre-mogrify.

use Moose::Role;

with 'WWW::MenuGrinder::Role::Plugin';

requires 'before_pre_mogrify';

no Moose::Role;

1;

__END__
=head1 NAME

WWW::MenuGrinder::Role::BeforePreMogrify - WWW::MenuGrinder role for plugins that need initialization before pre-mogrify.

=head1 VERSION

version 0.01_01

=head1 AUTHOR

  Andrew Rodland <andrew@hbslabs.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by HBS Labs, LLC..

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.

