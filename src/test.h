#include <stdbool.h>

typedef struct sg_features {
    bool instancing;
    bool origin_top_left;
    bool multiple_render_targets;
    bool msaa_render_targets;
    bool imagetype_3d;
    bool imagetype_array;
    bool image_clamp_to_border;
} sg_features;

sg_features query_features(void);
void print_features(void);
