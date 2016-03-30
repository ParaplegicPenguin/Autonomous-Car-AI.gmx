/**/
for(var i=0;i<RoomW;i+=16)
{
  instance_create(i,0,NoPass);
  instance_create(i,RoomH,NoPass);
}
for(var j=0;j<RoomH;j+=16)
{
  instance_create(0,j,NoPass);
  instance_create(RoomW,j,NoPass);
}
/**
repeat(25)
{
  var i = random_range(16,RoomW-16);
  var j = random_range(16,RoomH-16);
  repeat(5)
    instance_create(i+random_range(-32,32),j+random_range(-32,32),NoPass);
}
/**/
