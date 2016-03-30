///Roam( random turning )
if instance_exists(Target)
{
  CurrentState = State.Seeking;
  exit;
}

var d = random_range(-3,3);
motion_add(image_angle+d,Thrust);
