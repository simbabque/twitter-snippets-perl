#!perl
use v5.36;
use URI;
use WWW::Mechanize;

my $mech = WWW::Mechanize->new;
$mech->get( URI->new('file:./nth_form.html') );

# this selects the first form with both attrs and warns
$mech->form_with(
    name => 'product',
    id   => 'should_not_be_reused',
);

# this selects the second form with both attrs
$mech->form_with(
    name => 'product',
    id   => 'should_not_be_reused',
    { n => 2 }
);

# Note: n starts at 1, an we currently do not support
# counting backwards
