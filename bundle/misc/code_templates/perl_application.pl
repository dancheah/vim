#!/usr/bin/env perl
use 5.012;
use warnings;
use List::AllUtils qw(:all);
use Log::Log4perl qw(:easy);
use Data::Dumper;
use Regexp::DefaultFlags; 
use Getopt::Long;

exit main();

sub main {
    Log::Log4perl−>easy_init($DEBUG);

    my %opts = ()
    GetOptions(\%opts, 'help');

    DEBUG "Starting Program";
    DEBUG "Params: ", Dumper([\%opts]);

    return 0;
}

# vim: sts=4 sw=4 ts=4 et ft=perl
