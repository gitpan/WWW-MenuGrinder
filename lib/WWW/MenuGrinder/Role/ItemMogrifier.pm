package WWW::MenuGrinder::Role::ItemMogrifier;
our $VERSION = '0.01_01';


# ABSTRACT: WWW::MenuGrinder role for plugins that modify menus item-by-item per request.

use Moose::Role;

with 'WWW::MenuGrinder::Role::Plugin';

sub item_mogrify_methods {
  return 'item_mogrify';
}

after 'verify_plugin' => sub {
  my ($self) = @_;
  my $class = ref $self;

  for my $method ($self->item_mogrify_methods) {
    if (! $self->can($method)) {
      die "$class declared item_mogrify_method $method but doesn't provide it.";
    }
  }
};

no Moose::Role;

1;

__END__
=head1 NAME

WWW::MenuGrinder::Role::ItemMogrifier - WWW::MenuGrinder role for plugins that modify menus item-by-item per request.

=head1 VERSION

version 0.01_01

=head1 AUTHOR

  Andrew Rodland <andrew@hbslabs.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by HBS Labs, LLC..

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.

