# $Id: /local/datetime/modules/DateTime-Format-Pg/trunk/t/1basic.t 8428 2003-05-30T14:04:49.000000Z cfaerber  $
use Test::More tests => 3;
BEGIN { 
  use_ok('DateTime::Format::Pg')
};

{
  my $dt = DateTime::Format::Pg->parse_datetime('2003-01-01 19:00:00.123+09:30');
  isa_ok($dt,'DateTime');
}

{
  eval {
    my $dt = DateTime::Format::Pg->parse_datetime('THIS DATE IS INVALID');
    fail();
  } || pass();
}
