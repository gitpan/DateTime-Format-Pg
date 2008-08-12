# $Id: /mirror/datetime/DateTime-Format-Pg/trunk/t/parse_datetime2.t 5883 2005-03-16T16:50:40.000000Z cfaerber  $
use Test::More tests => 8;
use DateTime::Format::Pg 0.02;

{
  my $dt = DateTime::Format::Pg->parse_datetime('2003-01-02 19:18:17.123+09');
  is($dt->year(),            2003, 'year');
  is($dt->month(),             01, 'month');
  is($dt->day(),               02, 'day');
  is($dt->hour(),              19, 'hour');
  is($dt->minute(),            18, 'minute');
  is($dt->second(),            17, 'second');
  is($dt->nanosecond(), 123000000, 'nanosecond');
  is($dt->offset(),  (9*60)*60, 'tz offset');
}