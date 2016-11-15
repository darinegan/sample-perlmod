## no critic (Capitalization ProhibitMagicNumbers)
package t::01_test_module;

use strict;
use warnings;

use Test::More;

use Carp;

BEGIN {
    plan tests => 1;

    use_ok('Foo::Bar') or croak 'Cannot use the module';
}

1;
