///AgentCollision( avoid other agents if upcoming collision )
if instance_number(Agent) > 1
{
  var Avoid = collision_circle(x,y,(AgentAvoid),Agent,true,true)
  if (Avoid)
  {
    //show_debug_message("Other agent detected!");
    var PointDir = point_direction(x,y,Avoid.x,Avoid.y);
    var AngDiff = angle_difference(image_angle,PointDir);
    image_angle += min(abs(AngDiff),TurningSpeed) * sign(AngDiff);
    speed -= BrakePower;
  }
  var Avoid = collision_circle(Sensor_Fx2,Sensor_Fy2,(AgentAvoid),Agent,true,true)
  if (Avoid)
  {
    //show_debug_message("Other agent detected!");
    var PointDir = point_direction(x,y,Avoid.x,Avoid.y);
    var AngDiff = angle_difference(image_angle,PointDir);
    image_angle += min(abs(AngDiff),TurningSpeed) * sign(AngDiff);
    speed -= BrakePower;
  }
}
