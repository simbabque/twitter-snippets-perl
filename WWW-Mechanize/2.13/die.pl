#!/usr/bin/env perl
use strict;
use warnings;
use WWW::Mechanize;
use My::Logger;

my $mech = WWW::Mechanize->new(
    onerror => sub {
        My::Logger->error(@_);
        die @_;
    }
);