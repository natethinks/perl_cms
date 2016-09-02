#!/usr/bin/perl -w
use strict;
use warnings;

package Foo;

sub bar {
  print "$_\n" for @_;
  print "Hello world\n";

}

1;

package main;

Foo::bar();

Foo->bar();
