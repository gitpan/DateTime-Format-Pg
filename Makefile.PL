use ExtUtils::MakeMaker;
# $Id: Makefile.PL 3433 2006-07-05 09:05:27Z lestrrat $
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'DateTime::Format::Pg',
    'VERSION_FROM'	=> 'lib/DateTime/Format/Pg.pm', # finds $VERSION
    'PREREQ_PM'		=> {
		'DateTime' => 0.10,
		'DateTime::Format::Builder' => 0.72,
		'DateTime::TimeZone' => 0.05,
	},
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'lib/DateTime/Format/Pg.pm', # retrieve abstract from module
       AUTHOR     => 'Daisuke Maki <dmaki@cpan.org>') : ()),
);
