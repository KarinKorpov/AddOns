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
//            llSetPrimitiveParams([PRIM_POINT_LIGHT,TRUE,<1.0, 1.0, 0.5>,1,2,0.750]);
            llSetPrimitiveParams([PRIM_FULLBRIGHT,0,TRUE]);
            llSetColor(<0.750, 0.750, 0.8>, 0);
//            llSetPrimitiveParams([PRIM_TEXTURE, 1, "32a6d035-3b1b-96fc-d222-f882a26e86c0", <1.0,1.0,0.0>, <0.0,0.0,0.0>, 0.0]);   
// The vector <1.0, 1.0, 1.0> is the color in <R, G, B> form which is white in that example. 
// Change the vector, change the color!
// http://wiki.secondlife.com/wiki/Category:LSL_Color
        }
        else
        {
//            llSetPrimitiveParams([PRIM_POINT_LIGHT,FALSE,<0.5, 0.5, 0.5>,1.0,0,0.750]);
            llSetPrimitiveParams([PRIM_FULLBRIGHT,0,FALSE]);
            llSetColor(<1.0, 1.0, 1.0>, 0);    
//            llSetPrimitiveParams([PRIM_TEXTURE, 1, "f54a0c32-3cd1-d49a-5b4f-7b792bebc204", <1.0,1.0,0.0>, <0.0,0.0,0.0>, 0.0]);
//            llOwnerSay("Out!!"); 
        }
    }
}
