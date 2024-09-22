const std = @import("std");

pub fn main() void {
    const string = "hello there";
    const first_segment = string[0..5];
    const last_char = string[10..11];

    std.debug.print("{s} start({s}), end({s})\n", .{ string, first_segment, last_char });
}
