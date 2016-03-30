draw_set_alpha(0.5);
d3d_transform_add_rotation_z(image_angle)
d3d_transform_add_translation(x,y,0)
draw_primitive_begin(pr_linestrip);

draw_set_color(c_green);

if collision_point(x,y,NoPass,true,false)
  draw_set_color(c_red);

else if instance_number(Agent) > 1 && collision_point(x,y,Agent,true,true)
  draw_set_color(c_red);

var w = BodyW / 2;
var l = BodyL / 2;

draw_vertex(-w,-l);
draw_vertex(-w,+l);
draw_vertex(+w,+l);
draw_vertex(+w,-l);
draw_vertex(-w,-l);
draw_vertex(+w,+l);
draw_vertex(+w,-l);
draw_vertex(-w,+l);

draw_primitive_end();
d3d_transform_set_identity();
draw_set_alpha(1);

draw_set_color(c_aqua);
var x1 = x + lengthdir_x(sprite_width/2,image_angle);
var y1 = y + lengthdir_y(sprite_width/2,image_angle);
var x2 = x1 + lengthdir_x(32,image_angle);
var y2 = y1 + lengthdir_y(32,image_angle);
//draw_line(x1,y1,x2,y2,);