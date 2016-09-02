package Tie::Simple::Scalar;
$Tie::Simple::Scalar::VERSION = '1.04';
use strict;
use warnings;

use base qw(Tie::Scalar Tie::Simple);
use Tie::Simple::Util;

# Copyright 2004, 2015 Andrew Sterling Hanenkamp. This software
# is made available under the same terms as Perl itself.

sub _doit {
	my $self = shift;
	Tie::Simple::Util::_doit($self, 'Tie::Scalar', @_);
}

sub FETCH { shift->_doit('FETCH') }
sub STORE { shift->_doit('STORE', @_) }
sub UNTIE { shift->_doit('UNTIE') }
sub DESTROY { shift->_doit('DESTROY') }

1

__END__

=pod

=encoding UTF-8

=head1 NAME

Tie::Simple::Scalar

=head1 VERSION

version 1.04

=head1 AUTHOR

Andrew Sterling Hanenkamp <hanenkamp@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Qubling Software LLC.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
