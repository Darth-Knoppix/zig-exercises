const std = @import("std");

pub fn main() void {
    const first = get_bag(10);
    const second = get_bag(2);
    const third = get_bag(6);
    std.debug.print("bag -> ({s}), ({s}), ({s})\n", .{ first, second, third });
}

pub fn get_bag(comptime number: u8) *const [number]u8 {
    return "*" ** number;
}
