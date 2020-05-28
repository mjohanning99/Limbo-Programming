implement Command;

include "sys.m";
include "draw.m";
sys: Sys;

Command: module {
  init: fn (ctxt: ref Draw->Context, argv: list of string);
};
    sys = load Sys Sys->PATH;
    args = tl args;     # skip over program name
    for (s := ""; args != nil; args = tl args)
        s += " " + hd args;

    if (s != "")        # something was stored in s
        sys->print("%s\n", s[1:]);
}
