# $Id: /mirror/datetime/DateTime-Format-Pg/trunk/t/parse_infinity.t 5887 2006-01-07T00:45:49.000000Z lestrrat  $
use Test::More tests => 4;
use DateTime::Format::Pg 0.02;

{
  my $dt = DateTime::Format::Pg->parse_datetime('infinity');
  isa_ok($dt, 'DateTime::Infinite::Future');
}

{
  my $dt = DateTime::Format::Pg->parse_timestamp('infinity');
  isa_ok($dt, 'DateTime::Infinite::Future');
}

{
  my $dt = DateTime::Format::Pg->parse_datetime('-infinity');
  isa_ok($dt, 'DateTime::Infinite::Past');
}

{
  my $dt = DateTime::Format::Pg->parse_timestamp('-infinity');
  isa_ok($dt, 'DateTime::Infinite::Past');
}
