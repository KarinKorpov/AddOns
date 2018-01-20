float   sun_height;
vector  sun_position;
default
{
       state_entry() {
      llSetTimerEvent(120);
   }
   timer() {
        sun_position = llGetSunDirection();
        sun_height = sun_position.z;
        
        if(sun_height <= 0.1)
        {
              // Change the vector, change the color!
              // http://wiki.secondlife.com/wiki/Category:LSL_Color
              llSetPrimitiveParams([PRIM_POINT_LIGHT,TRUE,<1.0, 1.0, 0.5>,1,2,0.750]);
              llSetPrimitiveParams([PRIM_FULLBRIGHT,0,TRUE]);
              llSetColor(<0.750, 0.750, 0.8>, 0);
        }
        else
        {
              llSetPrimitiveParams([PRIM_POINT_LIGHT,FALSE,<0.5, 0.5, 0.5>,1.0,0,0.750]);
              llSetPrimitiveParams([PRIM_FULLBRIGHT,0,FALSE]);
              llSetColor(<1.0, 1.0, 1.0>, 0);    
        }
    }
}
