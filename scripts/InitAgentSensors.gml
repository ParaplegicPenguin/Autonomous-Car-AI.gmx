DrawSensorF = false;
DrawSensorB = false;
DrawSensorL = false;
DrawSensorR = false;

Sensor_Length = speed*16;
Angle = random(90);

Sensor_Fx1 = x + lengthdir_x(sprite_width/2,image_angle);
Sensor_Fy1 = y + lengthdir_y(sprite_width/2,image_angle);
Sensor_Fx2 = Sensor_Fx1 + lengthdir_x(Sensor_Length,image_angle);
Sensor_Fy2 = Sensor_Fy1 + lengthdir_y(Sensor_Length,image_angle);

Sensor_Bx1 = x - lengthdir_x(sprite_width/2,image_angle);
Sensor_By1 = y - lengthdir_y(sprite_width/2,image_angle);
Sensor_Bx2 = Sensor_Bx1 - lengthdir_x(Sensor_Length,image_angle);
Sensor_By2 = Sensor_By1 - lengthdir_y(Sensor_Length,image_angle);

Sensor_Lx1 = x + lengthdir_x(sprite_width/2,image_angle-Angle);
Sensor_Ly1 = y + lengthdir_y(sprite_width/2,image_angle-Angle);
Sensor_Lx2 = Sensor_Lx1 + lengthdir_x(Sensor_Length,image_angle-Angle);
Sensor_Ly2 = Sensor_Ly1 + lengthdir_y(Sensor_Length,image_angle-Angle);

Sensor_Rx1 = x + lengthdir_x(sprite_width/2,image_angle+Angle);
Sensor_Ry1 = y + lengthdir_y(sprite_width/2,image_angle+Angle);
Sensor_Rx2 = Sensor_Rx1 + lengthdir_x(Sensor_Length,image_angle+Angle);
Sensor_Ry2 = Sensor_Ry1 + lengthdir_y(Sensor_Length,image_angle+Angle);