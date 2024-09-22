const std = @import("std");

pub fn main() void {
    var x: u8 = 0;

    std.debug.print("value is ({}) at location: {}\n", .{ x, &x });

    mut_increment(&x);
    mut_increment(&x);
    mut_increment(&x);
    const new_x = increment(x);

    std.debug.print("value is ({}) at location: {}\n", .{ x, &x });
    std.debug.print("new value is ({}) at location: {}\n", .{ new_x, &new_x });
}

pub fn mut_increment(number: *u8) void {
    std.debug.print("-> mutate increment by 1\n", .{});
    number.* += 1;
}

pub fn increment(number: u8) u8 {
    std.debug.print("-> pure increment by 1\n", .{});
    return number + 1;
}
