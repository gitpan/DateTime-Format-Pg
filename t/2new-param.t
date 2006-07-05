# $Id: /mirror/DateTime-Format-Pg/t/2new-param.t 1632 2003-05-30T14:04:49.000000Z cfaerber  $
use Test::More tests => 2;
use DateTime::Format::Pg 0.02;

my $p_eu = DateTime::Format::Pg->new( 'european' => 1);
my $p_us = DateTime::Format::Pg->new( 'european' => 0);

$dt = $p_eu->parse_date('26-04-2003');
is($dt->ymd(), '2003-04-26');

$dt = $p_us->parse_date('04-26-2003');
is($dt->ymd(), '2003-04-26');
