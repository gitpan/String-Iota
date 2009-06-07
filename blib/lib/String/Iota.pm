package String::Iota;

use 5.008008;
use strict;
use warnings;
use Carp;

require Exporter;
use AutoLoader qw(AUTOLOAD);

our @ISA = qw(Exporter);

our %EXPORT_TAGS = ( 'all' => [ qw(
	
) ] );

our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );

our @EXPORT = qw(
	trim
);

our $VERSION = '0.85';

#sub digit { $_[0] =~ /^\d$/ }

sub trim {
	my ($string, $pat) = @_;
	$string ||= $_;
	
	if ($pat =~ /^\d+$/) {
		return substr $string,,$pat;
	} else {
		return ($string =~ s[$pat.*][]);
	}
}
	
	
1;
__END__

=head1 NAME

String::Iota - Tiny interface to some useful string functions

=head1 SYNOPSIS

  use String::Iota;
  blah blah blah

=head1 DESCRIPTION

Stub documentation for String::Iota, created by h2xs. It looks like the
author of the extension was negligent enough to leave the stub
unedited.

Blah blah blah.

=head2 EXPORT

None by default.



=head1 SEE ALSO

Mention other useful documentation such as the documentation of
related modules or operating system documentation (such as man pages
in UNIX), or any relevant external documentation such as RFCs or
standards.

If you have a mailing list set up for your module, mention it here.

If you have a web site set up for your module, mention it here.

=head1 AUTHOR

Lincoln Ombelets, E<lt>Linco@apple.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2009 by Lincoln Ombelets

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.


=cut
