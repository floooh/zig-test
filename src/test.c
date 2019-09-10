#include "test.h"
#include <stdio.h>

/* return a struct by value */
sg_features query_features(void) {
    sg_features f = {
        .instancing = true,
        .origin_top_left = true,
        .multiple_render_targets = true,
        .msaa_render_targets = true,
        .imagetype_3d = true,
        .imagetype_array = true,
        .image_clamp_to_border = true,
    };
    return f;
}

/* get struct by value and print content */
void print_features() {
    sg_features f = query_features();
    printf("C struct:\n");
    printf("  .instancing: %s\n", f.instancing ?"true":"false");
    printf("  .origin_top_left: %s\n", f.origin_top_left ?"true":"false");
    printf("  .multiple_render_targets: %s\n", f.multiple_render_targets ?"true":"false");
    printf("  .msaa_render_targets: %s\n", f.msaa_render_targets ?"true":"false");
    printf("  .imagetype_3d: %s\n", f.imagetype_3d ?"true":"false");
    printf("  .imagetype_array: %s\n", f.imagetype_array ?"true":"false");
    printf("  .image_clamp_to_border: %s\n", f.image_clamp_to_border ?"true":"false");
}