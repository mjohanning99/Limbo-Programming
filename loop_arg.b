implement GreetEvenMoreImproved;

include "sys.m";
include "draw.m";
sys: Sys;

GreetEvenMoreImproved: module {
  init: fn (ctxt: ref Draw->Context, args: list of string);
};

init(ctxt: ref Draw->Context, args: list of string) {
    sys = load Sys Sys->PATH;
    args = tl args;
    for (s := ""; args != nil; args = tl args)
        s += " " + hd args;

    if (s != "")
        sys->print("Hello %s \n", s[1:]);

    if (s == "")
        sys->print("Enter your name.\n");
}
