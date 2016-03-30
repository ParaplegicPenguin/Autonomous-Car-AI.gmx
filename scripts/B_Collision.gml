///B_Collision( check upcoming collisions )
show_debug_message("B_Collision Check");
DrawSensorB = true;
// update sensor
UpdateSensorB();
UpdateSensorF();

var _x2 = Sensor_Fx1 + lengthdir_x(64,image_angle);
var _y2 = Sensor_Fy1 + lengthdir_y(64,image_angle);

if !collision_line(Sensor_Fx1,Sensor_Fy1,_x2,_y2,NoPass,false,true)
  CurrentState = State.Roaming;
/*
var Avoid = collision_line(Sensor_Bx1,Sensor_By1,Sensor_Bx2,Sensor_By2,NoPass,true,true)
if (Avoid)
  CurrentState = State.Roaming;