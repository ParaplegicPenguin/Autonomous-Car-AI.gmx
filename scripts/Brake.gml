if speed > 0
speed -= BrakePower;

if speed < MinThrust
  CurrentState = State.Reversing;