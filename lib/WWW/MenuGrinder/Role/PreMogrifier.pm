package WWW::MenuGrinder::Role::PreMogrifier;
our $VERSION = '0.01_01';


# ABSTRACT: WWW::MenuGrinder role for plugins that modify menus at load time.

use Moose::Role;

with 'WWW::MenuGrinder::Role::Plugin';

requires 'pre_mogrify';

no Moose::Role;

1;

__END__
=head1 NAME

WWW::MenuGrinder::Role::PreMogrifier - WWW::MenuGrinder role for plugins that modify menus at load time.

=head1 VERSION

version 0.01_01

=head1 AUTHOR

  Andrew Rodland <andrew@hbslabs.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by HBS Labs, LLC..

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.
