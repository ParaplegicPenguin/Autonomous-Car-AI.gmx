///F_Collision( check upcoming collisions )
// update sensor
UpdateSensorF();
if L_Collision() == true
{
  CurrentState = State.TurningL;
  //show_debug_message("Current state switched to State.TurningL");
  //show_debug_message(string(CurrentState));
  exit;
}
else if R_Collision() == true
{
  CurrentState = State.TurningR;
  //show_debug_message("Current state switched to State.TurningR");
  //show_debug_message(string(CurrentState));
  exit;
}

// check forward collision
var Avoid = collision_line(Sensor_Fx1,Sensor_Fy1,Sensor_Fx2,Sensor_Fy2,NoPass,false,true)

if (Avoid)
{
  if speed > MinThrust
    CurrentState = State.Braking;
}
else
  CurrentState = State.Roaming;