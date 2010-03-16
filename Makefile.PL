
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'WWW::MenuGrinder',
                       'DISTNAME' => 'WWW-MenuGrinder',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Andrew Rodland <andrew@hbslabs.com>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'A tool for managing dynamic website menus.',
                       'EXE_FILES' => [],
                       'VERSION' => '0.04',
                       'PREREQ_PM' => {
                                        'XML::Simple' => '0',
                                        'Moose' => '0.34'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



