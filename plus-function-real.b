implement RealAddition;

include "sys.m";
include "draw.m";
sys: Sys;

RealAddition: module {
	init:   fn(ctxt: ref Draw->Context, args: list of string);
};

add: fn(num1: real, num2: real): real;
add(num1: real, num2: real): real {
	return num1 + num2;
}

init (ctxt: ref Draw->Context, args: list of string) {
	sys = load Sys Sys->PATH;
	sys->print("%f", add(2.2, 4.0));
}
