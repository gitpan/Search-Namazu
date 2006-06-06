# $Id: 02-search.t 264 2006-06-06 06:36:10Z knok $
#

use strict;
use Test;
use Search::Namazu;

BEGIN { plan tests => 2 };

# test in English
my @r;
@r = Search::Namazu::Search(index => ['t/index/en'], query => 'namazu',
	 lang => 'C');
ok($#r == 1);
@r = Search::Namazu::Search(index => ['t/index/en'], query => 'plain',
	 lang => 'C');
ok($#r == 0);
