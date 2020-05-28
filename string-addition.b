# string-addition.b
# Include statements and declaration have been left out, same as previous code snippets 

init (ctxt: ref Draw->Context, args: list of string) {
	sys = load Sys Sys->PATH;

	num1: con "1";
	num2: con "2";

	sys->print(num1 + num2);
}
