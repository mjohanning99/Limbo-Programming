# hello_world_var.b
# ... 
init(ctxt: ref Draw->Context, args: list of string) {
    text: con "Hello, World!\n";
    sys = load Sys Sys->PATH;

    sys->print(text);
}
