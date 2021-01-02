const std = @import("std");
const builtin = @import("builtin");
const Builder = std.build.Builder;
const warn = std.debug.warn;
const assert = std.debug.assert;

pub fn build(b: *Builder) void {
    
    const mode = b.standardReleaseOptions();
    const exe = b.addExecutable("test", "src/test.zig");
    exe.addIncludeDir("src");
    exe.setBuildMode(mode);
    exe.linkSystemLibrary("c");
    exe.addCSourceFile("src/test.c", &[_][]const u8{ });
    const run_cmd = exe.run();

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);

    b.default_step.dependOn(&exe.step);
    b.installArtifact(exe);
}
