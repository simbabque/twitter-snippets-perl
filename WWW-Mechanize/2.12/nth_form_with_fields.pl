#!perl
use v5.36;
use URI;
use WWW::Mechanize;

my $mech = WWW::Mechanize->new;
$mech->get( URI->new('file:./nth_form.html') );

# this selects the first form with both fields and warns
$mech->form_with_fields(
    qw/ sku qty /
);

# this selects the second form with both fields
$mech->form_with(
    qw/ sku qty /,
    { n => 2 }
);

# Note: n starts at 1, an we currently do not support
# counting backwards