GetRoomVars();
repeat(1)
{
  var i = random_range(16,RoomW-16);
  var j = random_range(16,RoomH-16);
  
  while place_meeting(i,j,all)
  {
    var i = random_range(16,RoomW-16);
    var j = random_range(16,RoomH-16);
  }
  
  with (instance_create(i,j,Target))
  {
    GetRoomVars();
    direction = irandom(3) * 90;
    speed = 1;
  }
}
