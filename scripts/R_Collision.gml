///R_Collision( check upcoming collisions )
// check right collision
//show_debug_message("Checking right collisions...");
for(var Angle = MinAngle;Angle<MaxAngle;Angle+=IncAngle)
{
  // update sensor
  UpdateSensorR(Angle);

  var Avoid = collision_line(Sensor_Rx1,Sensor_Ry1,Sensor_Rx2,Sensor_Ry2,NoPass,false,false)
  if (Avoid)
    return true;
}