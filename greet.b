# greet.b
implement GreetImproved;

include "arg.m";
include "sys.m";
include "draw.m";
sys: Sys;
arg: Arg;

GreetImproved: module {
	init:   fn(ctxt: ref Draw->Context, args: list of string);
};

greet: fn(name: string): string;

greet(name: string): string {
	return "Hello, " + name + "\n";
}

init (ctxt: ref Draw->Context, args: list of string) {
	sys = load Sys Sys->PATH;
	arg = load Arg Arg->PATH;

	arg->init(args);
	input := arg->arg();

	sys->print("%s", greet(input));
 
}
