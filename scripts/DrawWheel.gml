draw_set_alpha(.5);
draw_set_color(c_green);
var Ww = WheelW / 2;
var Wl = WheelH / 2;
var Bw = BodyW / 2;
var Bl = BodyL / 2;

// front left
draw_primitive_begin(pr_linestrip);
d3d_transform_add_rotation_z(image_angle);
d3d_transform_add_translation(x,y,0);


draw_vertex(+Bw-Ww,-Bl-Wl);
draw_vertex(+Bw-Ww,-Bl+Wl);
draw_vertex(+Bw+Ww,-Bl+Wl);
draw_vertex(+Bw+Ww,-Bl-Wl);
draw_vertex(+Bw-Ww,-Bl-Wl);
draw_vertex(+Bw+Ww,-Bl+Wl);
draw_vertex(+Bw+Ww,-Bl-Wl);
draw_vertex(+Bw-Ww,-Bl+Wl);

draw_primitive_end();
d3d_transform_set_identity();

// back right
draw_primitive_begin(pr_linestrip);
d3d_transform_add_rotation_z(image_angle)
d3d_transform_add_translation(x,y,0)

draw_vertex(+Bw-Ww,+Bl-Wl);
draw_vertex(+Bw-Ww,+Bl+Wl);
draw_vertex(+Bw+Ww,+Bl+Wl);
draw_vertex(+Bw+Ww,+Bl-Wl);
draw_vertex(+Bw-Ww,+Bl-Wl);
draw_vertex(+Bw+Ww,+Bl+Wl);
draw_vertex(+Bw+Ww,+Bl-Wl);
draw_vertex(+Bw-Ww,+Bl+Wl);

draw_primitive_end();
d3d_transform_set_identity();

// back left
draw_primitive_begin(pr_linestrip);
d3d_transform_add_rotation_z(image_angle);
d3d_transform_add_translation(x,y,0);

draw_vertex(-Bw-Ww,-Bl-Wl);
draw_vertex(-Bw-Ww,-Bl+Wl);
draw_vertex(-Bw+Ww,-Bl+Wl);
draw_vertex(-Bw+Ww,-Bl-Wl);
draw_vertex(-Bw-Ww,-Bl-Wl);
draw_vertex(-Bw+Ww,-Bl+Wl);
draw_vertex(-Bw+Ww,-Bl-Wl);
draw_vertex(-Bw-Ww,-Bl+Wl);

draw_primitive_end();
d3d_transform_set_identity();

// back right
draw_primitive_begin(pr_linestrip);
d3d_transform_add_rotation_z(image_angle)
d3d_transform_add_translation(x,y,0)

draw_vertex(-Bw-Ww,+Bl-Wl);
draw_vertex(-Bw-Ww,+Bl+Wl);
draw_vertex(-Bw+Ww,+Bl+Wl);
draw_vertex(-Bw+Ww,+Bl-Wl);
draw_vertex(-Bw-Ww,+Bl-Wl);
draw_vertex(-Bw+Ww,+Bl+Wl);
draw_vertex(-Bw+Ww,+Bl-Wl);
draw_vertex(-Bw-Ww,+Bl+Wl);

draw_primitive_end();
d3d_transform_set_identity();