const warn = @import("std").debug.warn;
const c = @cImport({
    @cInclude("test.h");
});

pub fn main() void {
    // get and print struct all in C
    c.print_features();

    // get struct by value in Zig and print content
    const f = c.query_features();
    warn("Zig struct:\n");
    warn("  .instancing: {}\n", f.instancing);
    warn("  .origin_top_left: {}\n", f.origin_top_left);
    warn("  .multiple_render_targets: {}\n", f.multiple_render_targets);
    warn("  .msaa_render_targets: {}\n", f.msaa_render_targets);
    warn("  .imagetype_3d: {}\n", f.imagetype_3d);
    warn("  .imagetype_array: {}\n", f.imagetype_array);
    warn("  .image_clamp_to_border: {}\n", f.image_clamp_to_border);
}