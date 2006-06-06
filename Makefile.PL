#
# Makefile.PL for Search::Namazu
#
# $Id: Makefile.PL 264 2006-06-06 06:36:10Z knok $
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
