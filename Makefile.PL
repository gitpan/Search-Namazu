#
# Makefile.PL for Search::Namazu
#
# $Id: Makefile.PL 261 2006-05-29 22:49:05Z knok $
#

use ExtUtils::MakeMaker;

my $cflags = `nmz-config --cflags`;
my $libs = `nmz-config --libs`;

WriteMakefile(
	      'NAME' => 'Search::Namazu',
	      'VERSION_FROM' => 'Namazu.pm',
	      'INC' => $cflags,
	      'LIBS' => $libs,
	      'clean' => {'FILES' => "t/index"}
);
