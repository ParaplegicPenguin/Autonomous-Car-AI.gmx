///GetPhysics( thrust, braking, etc. )

ConstrainSpeed();
/*
Thrust = MaxThrust / (speed * 50);
Thrust = clamp(Thrust,MinThrust,MaxThrust);

/**
speed: 1  0.8
speed: 2  0.4
speed: 3  0.2
speed: 4  0.2
/**/

BrakePower = max(0,Thrust/1);
Sensor_Length = (speed*BodyW);
Ahead = 2;

AgentAvoid = Sensor_Length;
MinAngle = 0;
MaxAngle = 90;
IncAngle = 5;
TurningSpeed = 5

