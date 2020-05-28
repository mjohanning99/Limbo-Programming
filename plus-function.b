# plus-function.b
implement IntAddition;

include "sys.m";
include "draw.m";
sys: Sys;

IntAddition: module {
	init:   fn(ctxt: ref Draw->Context, args: list of string);
};

add: fn(num1: int, num2: int): int;
add(num1: int, num2: int): int {
	return num1 + num2;
}

init (ctxt: ref Draw->Context, args: list of string) {
	sys = load Sys Sys->PATH;
	sys->print("%d", add(2, 4));
}
