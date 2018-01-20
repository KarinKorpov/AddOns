// .lsDisplay simple 10321 (c) Kephra Nurmi 2007
// published under Creative Commons Attribution-Share Alike 3.0 License
// Changed start 1.3 by Karin
// 1.1 Description as time_value made 
// 1.3 reshape added; sunset added
// 1.41 First timers changed
// 1.43 script name
// 1.44 description changed
 
string name = "";
integer pos = 0;
integer random = FALSE;
integer AGE_LIMIT;
string black = "<0.0, 0.0, 0.0>";

key loading = "6123abe5-48f9-13b9-346c-f4fd85035ad5"; // after rezing

float   sun_height;
vector  sun_position;

// =========== No Changing more needing ============
    tick() {
    if (name != "") {
        llSetTexture(name, 0);
        llSetColor(<1.0, 1.0, 1.0>, 0);  
    }
    integer choice;
    integer number = llGetInventoryNumber(INVENTORY_TEXTURE);
    if (!number) return;
    if (random) {
        choice = (integer)llFrand(number);
        } else {
        choice = pos;
        pos++;
        if (pos >= number) pos = 0;
    }
    name = llGetInventoryName(INVENTORY_TEXTURE, choice);
    if (name != "") llSetTexture(name, 0);
}

// added 1.3 
reshape() {
    vector size = llGetScale();
    llSetPrimitiveParams([PRIM_TYPE, PRIM_TYPE_BOX, PRIM_HOLE_SQUARE, <0.0, 1.0, 0.0>, 0.95, <0.0, 0.0, 0.0>, <1.0, 1.0, 0.0>, <0.0, 0.0, 0.0>]);
    llSetScale(<size.x, 0.01, size.x*2/3>);
    llSetTexture(loading, ALL_SIDES);
}


default {
    state_entry() {
        AGE_LIMIT = (integer)llGetObjectDesc();
        // added 1.1
        if (AGE_LIMIT <= 10)
        {
            AGE_LIMIT = 60;
        }

        llSetTexture(loading, 0);
        llInstantMessage(llGetOwner(),"Refresh time:" +(string)AGE_LIMIT+ " seconds, change this in description and reset script");
        llSetColor(<1.0, 1.0, 1.0>, 0);
        reshape();
        tick();
        // Changed 1.41
        llSetTimerEvent(30);
    }

    timer() {
        // added 1.41
        llSetTimerEvent(AGE_LIMIT);
        tick();
    
        // added 1.3
        sun_position = llGetSunDirection();
        sun_height = sun_position.z;
        
        // changed 1.41: value 0.5 done to 0.8
        if(sun_height <= 0.8)
        {
            llSetPrimitiveParams([PRIM_FULLBRIGHT,0,TRUE]);
        }
        else
        {
            llSetPrimitiveParams([PRIM_FULLBRIGHT,0,FALSE]);
        }
    }
    
        
    changed(integer change) {
        if (change & CHANGED_SCALE) reshape();
        if (change & CHANGED_INVENTORY) tick();
        if (change & (CHANGED_OWNER | CHANGED_INVENTORY))
        llResetScript();        
    }

    on_rez(integer start_param)
    {
        // Restarts the script every time the object is rezzed
        llSetObjectName("Photo's");       
        llResetScript();        
    }
}
