///GetPhysics( thrust, braking, etc. )
//
// constants  mass, 
///
var rn = random(100);
// Mass
Mass = sprite_width * sprite_height;

// Thrust
MinThrust = rn;
MaxThrust = rn;
Thrust = MinThrust;

// Velocity
MinSpeed = rn;
MaxSpeed = rn;
direction = irandom(360);
speed = MinSpeed;


// Brakes
MinBrakePower = rn;
MaxBrakePower = rn;
BrakePower = MinBrakePower;

// Sensors
Sensor_Length = rn;
Ahead = rn;
AgentAvoid = rn;

// Steering
MinAngle = rn;
MaxAngle = rn;
IncAngle = rn;
TurningSpeed = rn;

//---
// Thrust
MinThrust = rn;
MaxThrust = rn;
Thrust = MinThrust;

// Velocity
MinSpeed = rn;
MaxSpeed = rn;
direction = irandom(359);
speed = MinSpeed;


// Brakes
MinBrakePower = rn;
MaxBrakePower = rn;
BrakePower = MinBrakePower;

// Sensors
Sensor_Length = speed*16;
Ahead = rn;
AgentAvoid = rn;

// Steering
MinAngle = 0.5;
MaxAngle = 4.0;
IncAngle = rn;
TurningSpeed = rn;
