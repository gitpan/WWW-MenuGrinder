
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'WWW-MenuGrinder',
  NAME      => 'WWW::MenuGrinder',
  AUTHOR    => 'Andrew\ Rodland\ \<andrew\@hbslabs\.com\>',
  ABSTRACT  => 'A tool for managing dynamic website menus.',
  VERSION   => '0.01_01',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "XML::Simple" => '0',
    "Moose" => '0.34',
  },
);
