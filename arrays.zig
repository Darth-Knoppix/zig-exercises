const std = @import("std");

pub fn main() void {
    const arr_a = [_]u8{ 'a', 'é', 'î', 'ø', 'ü', '£' };

    std.debug.print("arr_a has {} items:\n", .{arr_a.len});

    for (arr_a) |value| {
        // Print unicode character and codepoint
        std.debug.print("- {u} ({d})\n", .{ value, value });
    }

    var arr_b = [4]u8{ undefined, undefined, undefined, undefined };

    arr_b[1] = 4;
    arr_b[3] = 4;

    for (0.., arr_b) |index, element| {
        std.debug.print("-> {d} ({d})\n", .{ index, element });
    }
}
