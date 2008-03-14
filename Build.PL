use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Test::Aggregate',
    license             => 'perl',
    dist_author         => 'Curtis "Ovid" Poe <ovid@cpan.org>',
    dist_version_from   => 'lib/Test/Aggregate.pm',
    build_requires => {
        'Test::Simple' => 0.74,  # we fail on the common 0.62
    },
    recommends => {
        'Data::Dump::Streamer' => 1.11,
        'Perl::Tidy'           => 20060614,
    },
    add_to_cleanup      => [ 'Test-Aggregate-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();