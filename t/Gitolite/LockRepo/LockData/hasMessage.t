#!/usr/bin/env perl

use strict;
use warnings;

use lib $ENV{GL_LIBDIR};

use Test::More;
use Gitolite::LockRepo::LockData;

my %myData = ();
is( hasMessage(\%myData), '', 'False for empty hash.');

%myData = (MESSAGE => 'hello');
is( hasMessage(\%myData), 1, 'Message set.');

done_testing();
