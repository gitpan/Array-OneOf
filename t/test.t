#!/usr/bin/perl -w
use strict;
use Array::OneOf ':all';
use Test;
BEGIN { plan tests => 2 };

# this test will pass
if (oneof 'a', 'a', 'b', 'c') {
	ok(1);
}
else {
	ok(0);
}

# this test will not pass
if (oneof 'x', 'a', 'b', 'c') {
	ok(0);
}
else {
	ok(1);
}
