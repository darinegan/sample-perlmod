use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Foo::Bar',
    VERSION_FROM => 'lib/Foo/Bar.pm',
    (   $] gt '5.018'
        ? ( ABSTRACT => 'Foo Bar',
            LICENSE  => 'apache_2_0',
            AUTHOR   => 'Darin Egan <darinegan@gmail.com>'
            )
        : ()
    ),
    EXE_FILES => ['bin/foo_bar'],
    dist      => { COMPRESS => 'gzip', SUFFIX => 'gz' },
);
