///GetState( update agent behavior )
// constants
GetPhysics();

switch(CurrentState)
{
/**/
  case State.Roaming:
    DrawSensorF = true;
    DrawSensorB = true;
    DrawSensorR = true;
    DrawSensorL = true;
    AgentCollision();
    F_Collision();
    Roam();
  break;
/**/
  case State.Seeking:
    DrawSensorF = true;
    DrawSensorB = true;
    DrawSensorR = true;
    DrawSensorL = true;
    AgentCollision();
    F_Collision();
    Seek();
  break;
/**/
  case State.Braking:
    DrawSensorF = true;
    DrawSensorB = true;
    DrawSensorR = true;
    DrawSensorL = true;
    AgentCollision();
    F_Collision();
    Brake();
  break;
/**/
  case State.Reversing:
    DrawSensorF = true;
    DrawSensorB = true;
    DrawSensorR = true;
    DrawSensorL = true;
    AgentCollision();
    B_Collision();
    Reverse();
  break;
/**/
  case State.TurningL:
    DrawSensorF = true;
    DrawSensorB = true;
    DrawSensorR = true;
    DrawSensorL = true;
    AgentCollision();
    F_Collision();
    TurnLeft();
  break;
/**/
  case State.TurningR:
    DrawSensorF = true;
    DrawSensorB = true;
    DrawSensorR = true;
    DrawSensorL = true;
    AgentCollision();
    F_Collision();
    TurnRight();
  break;
/**/
}
