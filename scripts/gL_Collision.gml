///L_Collision( update and check collisions )
// update and check RIGHT turn sensor
for(var Angle = 0;Angle<MaxAngle;Angle+=IncAngle)
{
  Sensor_Rx2 = Sensor_Rx1 + lengthdir_x(Sensor_Length,image_angle+Angle);
  Sensor_Ry2 = Sensor_Ry1 + lengthdir_y(Sensor_Length,image_angle+Angle);
  if collision_line(Sensor_Rx1,Sensor_Ry1,Sensor_Rx2,Sensor_Ry2,NoPass,true,false) ||
  collision_line(Sensor_Lx1,Sensor_Ly1,Sensor_Lx2,Sensor_Ly2,Agent,true,false)
  {
    image_angle -= MaxRotation;
    speed -= speed / 20;
    show_debug_message("Collision left!");
  }
}
