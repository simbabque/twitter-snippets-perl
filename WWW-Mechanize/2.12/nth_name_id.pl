#!perl
use v5.36;
use URI;
use WWW::Mechanize;

my $mech = WWW::Mechanize->new;
$mech->get(URI->new('file:./nth_form.html'));

$mech->form_name('product'); # selects first form and warns
$mech->form_name('product', { n => 2 }); # secone one

$mech->form_id('should_not_be_reused'); # select first form and warns
$mech->form_id('should_not_be_reused', { n => 2 }); # second one

# Note: n starts at 1, an we currently do not support
# counting backwards

A Perl script named nth_name_id.pl that shows how to select the first and second form from the HTML document by name and by ID.