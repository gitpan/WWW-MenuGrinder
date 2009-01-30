package WWW::MenuGrinder::Plugin::NullLoader;
our $VERSION = '0.01_01';


# ABSTRACT: WWW::MenuGrinder Plugin that loads from the config.

use Moose;

with 'WWW::MenuGrinder::Role::Loader';

sub load {
  my ($self) = @_;

  if (! defined $self->grinder->config->{menu}) {
    die "config->{menu} is required";
  } else {
    return $self->grinder->config->{menu}
  }
}

no Moose;
1;


__END__
=head1 NAME

WWW::MenuGrinder::Plugin::NullLoader - WWW::MenuGrinder Plugin that loads from the config.

=head1 VERSION

version 0.01_01

=head1 DESCRIPTION

C<WWW::MenuGrinder::Plugin::NullLoader> is a plugin for C<WWW::MenuGrinder>. You
should not use it directly, but include it in the C<plugins> section of a
C<WWW::MenuGrinder> config.

This is a "loader" plugin that returns a menu structure supplied in the
MenuGrinder config, rather than loading it from any external source. Its primary
use is testing, but it may be useful in self-contained scripts as well.

=head2 Configuration

The global configuration key C<menu> is expected to contain the menu structure.

=head1 AUTHOR

  Andrew Rodland <andrew@hbslabs.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by HBS Labs, LLC..

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.

