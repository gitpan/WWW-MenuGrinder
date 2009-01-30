package WWW::MenuGrinder::Role::ItemPreMogrifier;
our $VERSION = '0.01_01';


# ABSTRACT: WWW::MenuGrinder role for plugins that modify menus item-by-item at load time.

use Moose::Role;

with 'WWW::MenuGrinder::Role::Plugin';

sub item_pre_mogrify_methods {
  return 'item_pre_mogrify';
}

after 'verify_plugin' => sub {
  my ($self) = @_;
  my $class = ref $self;

  for my $method ($self->item_pre_mogrify_methods) {
    if (! $self->can($method)) {
      die "$class declared item_pre_mogrify_method $method but doesn't provide it.";
    }
  }
};

no Moose::Role;

1;

__END__
=head1 NAME

WWW::MenuGrinder::Role::ItemPreMogrifier - WWW::MenuGrinder role for plugins that modify menus item-by-item at load time.

=head1 VERSION

version 0.01_01

=head1 AUTHOR

  Andrew Rodland <andrew@hbslabs.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by HBS Labs, LLC..

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.

