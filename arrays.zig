const std = @import("std");

pub fn main() void {
    const arr_a = [_]u8{ 'a', 'é', 'î', 'ø', 'ü', '£' };

    std.debug.print("arr_a has {} items:\n", .{arr_a.len});

    for (arr_a) |value| {
        // Print unicode character and codepoint
        std.debug.print("- {u} ({d})\n", .{ value, value });
    }
}
