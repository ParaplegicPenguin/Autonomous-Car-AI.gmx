///L_Collision( check upcoming collisions )
// check left collision
//show_debug_message("Checking left collisions...");
for(var Angle = MinAngle;Angle<MaxAngle;Angle+=IncAngle)
{
  // update sensor
  UpdateSensorL(Angle);
  
  var Avoid = collision_line(Sensor_Lx1,Sensor_Ly1,Sensor_Lx2,Sensor_Ly2,NoPass,false,false)
  if (Avoid)
  {
    //show_debug_message("L_Collision returned as true...");
    return true;
  }
}