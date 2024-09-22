const std = @import("std");

pub fn main() void {
    const size = 100;
    var offset: u8 = 2;

    offset += 1;
    std.debug.print("{} + {} = {}\n", .{ size, offset, size + offset });
}
