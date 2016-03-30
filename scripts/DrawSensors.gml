///DrawSensors( draw sensor rays )
// sensors are draw first at angle 0 which is directtly in front and parallel with image_angle
/**/
for(var Angle = MinAngle;Angle<MaxAngle;Angle+=IncAngle)
{
/**/
  if (DrawSensorF)
  {
    UpdateSensorF();
    draw_set_color(c_green);
    draw_set_alpha(0.2);
    draw_line_width(Sensor_Fx1,Sensor_Fy1,Sensor_Fx2,Sensor_Fy2,2);
  }
/**/
  if (DrawSensorB)
  {
    UpdateSensorB();
    draw_set_color(c_aqua);
    draw_set_alpha(0.2);
    draw_line_width(Sensor_Bx1,Sensor_By1,Sensor_Bx2,Sensor_By2,2);
  }
/**/
  if (DrawSensorR)
  {
    draw_set_color(c_white);
    draw_set_alpha(0.2);
    
    for(var Angle = MinAngle;Angle<MaxAngle;Angle+=IncAngle)
    {
      UpdateSensorR(Angle);
      draw_line_width(Sensor_Rx1,Sensor_Ry1,Sensor_Rx2,Sensor_Ry2,2);
    }
  }
/**/
  if (DrawSensorL)
  {
    draw_set_color(c_white);
    draw_set_alpha(0.2);
    
    for(var Angle = MinAngle;Angle<MaxAngle;Angle+=IncAngle)
    {
      UpdateSensorL(Angle);
      draw_line_width(Sensor_Lx1,Sensor_Ly1,Sensor_Lx2,Sensor_Ly2,2);
    }
  }
/**/
}

draw_set_color(c_fuchsia);
draw_circle(Sensor_Fx1,Sensor_Fy1,Sensor_Length,true);
draw_circle(Sensor_Fx1,Sensor_Fy1,Sensor_Length-1,true);

draw_set_color(c_yellow);
draw_circle(x,y,AgentAvoid,true);
draw_circle(x,y,AgentAvoid-1,true);
draw_circle(Sensor_Fx2,Sensor_Fy2,AgentAvoid,true);
draw_circle(Sensor_Fx2,Sensor_Fy2,AgentAvoid-1,true);



