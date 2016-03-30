var d = random_range(-5,5);
var PointDir = 180 + point_direction(x, y, lengthdir_x(32,image_angle+d),lengthdir_y(32,image_angle+d));
image_angle += min(abs(PointDir), speed*1.2) * sign(PointDir);
motion_add(image_angle,1.125);
//show_debug_message("No Targets but collision both!");