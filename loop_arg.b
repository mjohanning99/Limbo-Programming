implement GreetEvenMoreImproved;

include "sys.m";
include "draw.m";
sys: Sys;

GreetEvenMoreImproved: module {
  init: fn (ctxt: ref Draw->Context, argv: list of string);
};
    sys = load Sys Sys->PATH;
    args = tl args;     
    for (s := ""; args != nil; args = tl args)
        s += " " + hd args;

    if (s != "")       
        sys->print("%s\n", s[1:]);
}
