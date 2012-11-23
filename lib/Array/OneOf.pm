package Array::OneOf;
use strict;
use String::Util ':all';

# version
our $VERSION = '1.00';

# export
use vars qw[ @ISA @EXPORT_OK %EXPORT_TAGS ];
push @ISA, 'Exporter';
@EXPORT_OK = qw[ oneof ];
%EXPORT_TAGS = (all =>[@EXPORT_OK]);


=head1 NAME

Array::OneOf -- checks if an element is in an array

=head1 SYNOPSIS

 use Array::OneOf ':all';
 
 # this test will pass
 if (oneof 'a', 'a', 'b', 'c') {
    # do stuff
 }
 
 # this test will not pass
 if (oneof 'x', 'a', 'b', 'c') {
    # do stuff
 }

=head1 DESCRIPTION

Array::OneOf provides one simple utility, the oneof function.  Its
use is simple: if the first param is equal to any of the remaining
params, it returns true.  Otherwise it returns false.

=head1 INSTALLATION

Array::OneOf can be installed with the usual routine:

 perl Makefile.PL
 make
 make test
 make install

=cut

#------------------------------------------------------------------------------
# oneof
#
sub oneof {
	my ($base, @remaining) = @_;
	
	foreach my $rem (@remaining) {
		if (equndef $base, $rem)
			{ return 1 }
	}
	
	return 0;
}
#
# oneof
#------------------------------------------------------------------------------


# return true
1;

__END__

=head1 TERMS AND CONDITIONS

Copyright (c) 2012 by Miko O'Sullivan.  All rights reserved.  This program is 
free software; you can redistribute it and/or modify it under the same terms 
as Perl itself. This software comes with B<NO WARRANTY> of any kind.

=head1 AUTHORS

Miko O'Sullivan
F<miko@idocs.com>

=head1 VERSION

=over

=item Version 1.00    November 22, 2012

Initial release

=back


=cut
