///Seek( steer towards closest target )
// locate target position
if instance_exists(Target)
{
  if !collision_line(Sensor_Lx1,Sensor_Ly1,Sensor_Lx2,Sensor_Ly2,NoPass,true,false) && !collision_line(Sensor_Rx1,Sensor_Ry1,Sensor_Rx2,Sensor_Ry2,NoPass,true,false)
  {
    var TargetPos = instance_nearest(x,y,Target);
    
    var PointDir = 180 + point_direction(x, y, TargetPos.x, TargetPos.y);
    var AngDiff = angle_difference(image_angle, PointDir);
    image_angle += min(abs(AngDiff), 1) * sign(AngDiff);
    motion_add(image_angle,Thrust);
    speed -= 1/(0.01+(point_distance(x,y,TargetPos.x,TargetPos.y)));
  }
  // move target after collision
  with(collision_circle(x,y,8,Target,true,false))
  {
    x = random_range(64,room_width-64);
    y = random_range(64,room_height-64);
  }
}
