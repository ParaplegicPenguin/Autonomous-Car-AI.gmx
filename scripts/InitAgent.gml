GetRoomVars();
repeat(1)
{
  var i = random_range(64,RoomW-64);
  var j = random_range(64,RoomH-64);
  with (instance_create(i,j,Agent))
  //with(Agent)
  {
    GetRoomVars();
    InitAgentPhysics();
    InitAgentSensors();
    InitAgentStates();
    image_angle = random(360);
    Collision = false;
    
    BodyW = sprite_width;
    BodyL = sprite_height;
    WheelW = BodyW / 4;
    WheelH = BodyL / 4;
  
    while collision_point(x,y,NoPass,true,false)
    {
      x = random(RoomW);
      y = random(RoomH);
    }
  }
}
