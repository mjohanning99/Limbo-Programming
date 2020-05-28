# greet_function.b
implement Functions;

include "sys.m";
include "draw.m";
sys: Sys;

Functions: module {
	init:   fn(ctxt: ref Draw->Context, args: list of string);

};

greet: fn(text: string): string;

greet(myname: string): string {
	return "Hello " + myname + "\n";
}

init (ctxt: ref Draw->Context, args: list of string) {
	sys = load Sys Sys->PATH;
	sys->print("%s", greet("Marvin"));
}
