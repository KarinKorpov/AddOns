//Blinking Script by Karin Korpov
//Global variables

// length & width size in meters of the projected image (max 4.00)
float Size = 1.00;
float SizeAfk = 0.40;  // Afk
float SizeBusy = 0.30;

// height above object the centre of projected image will be (theoretical max. 50.0, in practice 2.0 to 10.0))
float HeightAfk = 1.00; // Afk
float HeightBusy = 1.00;

integer idleness = 1; 
integer public =0;
string owner;               // owner from the object, set in attach

//Functions
doBlink() {
        if (idleness==0){
            idleness = 3;
            llSetText("", ZERO_VECTOR, 0);
            llOwnerSay("@clear");
        }
        llSetTimerEvent(10.0);   
}

setAfk() {
    if (idleness == 1) {
        idleness = 0;
        llStartAnimation("Away");
        llOwnerSay("@tplm=n,tplure=n,fly=n,tprequest=n,showminimap=n,showworldmap=n,shownearby=n,shownametags=n,sharedunwear=n,sharedwear=n");
            vector myPosition = llGetPos();
                // Parcelname check
                list details = llGetParcelDetails(llGetPos(), [PARCEL_DETAILS_NAME]);
                if (llList2String(details ,0) == "Karin's Mansion"){
                    //core code by Moriash Moreau. Adapted to suit by Debbie Trilling
                    llParticleSystem([
                    PSYS_SRC_PATTERN, 4,
                    PSYS_PART_START_COLOR, <1.0,1.0,1.0>,
                    PSYS_PART_END_COLOR, <1.0,1.0,1.0>,
                    PSYS_PART_START_SCALE, <SizeAfk * 1.6 ,SizeAfk,0.00>,
                    PSYS_PART_END_SCALE, <SizeAfk * 1.6,SizeAfk,0.00>,
                    PSYS_PART_MAX_AGE, 0.40,
                    PSYS_SRC_MAX_AGE, 0.00,
                    PSYS_SRC_BURST_RADIUS, HeightAfk,
                    PSYS_SRC_BURST_RATE, 0.10,
                    PSYS_SRC_BURST_SPEED_MIN, 0.00,
                    PSYS_SRC_BURST_SPEED_MAX, 0.00,
                    PSYS_SRC_TEXTURE, "1926d280-7917-b31d-1298-eb9cb19ffca9"]);        //Afk
            }   

        llSetTimerEvent(5.0);   
    }
    else if (idleness == 2) {
        idleness = 0;
        // Busy
        llOwnerSay("@tplure_sec=n,accepttp_sec=n,tplure=n,tplm=n,fly=n,tprequest=n,standtp=n,showworldmap=n,startim=n,shownametags=n,sit=y,unsit=y,standtp=y,sittp=y,sharedunwear=n,sharedwear=n");
            vector myPosition = llGetPos();
            list details = llGetParcelDetails(llGetPos(), [PARCEL_DETAILS_NAME]);
                if (llList2String(details ,0) == "Karin's Mansion"){

                    //core code by Moriash Moreau. Adapted to suit by Debbie Trilling
                    llParticleSystem([
                    PSYS_SRC_PATTERN, 4,
                    PSYS_PART_START_COLOR, <1.0,1.0,1.0>,
                    PSYS_PART_END_COLOR, <1.0,1.0,1.0>,
                    PSYS_PART_START_SCALE, <SizeBusy * 1.6 ,SizeBusy,0.00>,
                    PSYS_PART_END_SCALE, <SizeBusy * 1.6,SizeBusy,0.00>,
                    PSYS_PART_MAX_AGE, 0.40,
                    PSYS_SRC_MAX_AGE, 0.00,
                    PSYS_SRC_BURST_RADIUS, HeightBusy,
                    PSYS_SRC_BURST_RATE, 0.10,
                    PSYS_SRC_BURST_SPEED_MIN, 0.00,
                    PSYS_SRC_BURST_SPEED_MAX, 0.00,
                    PSYS_SRC_TEXTURE, "c3182354-c479-0fe0-0dce-6bbda2d8ea86"]);       // Brb
            }
        
        llSetTimerEvent(5.0);   
    }
}


default
{
    on_rez(integer start_param)
    {
        llResetScript();
    }
    
    state_entry()
    {
        llRequestPermissions(llGetOwner(), PERMISSION_TRIGGER_ANIMATION);
        llListen(0,"",llGetOwner(),"");
        llSetTimerEvent(0.5);   
    }
    
    listen(integer channel, string name, key id, string message)
    {
        // check if the message corresponds to a predefined string.
        // llToLower converts the message to lowercase.
        // This way, "HELLO", "Hello" or "HeLLo" will all work the same way.
        if (message == "brb" | message == "afk" | message == "bbs")
        {
            llStartAnimation("Away");
            idleness = 1; 
            setAfk();  
        }
    }
    timer() {
    if (llGetAgentInfo(llGetOwner() ) & AGENT_AWAY)
        {   
        idleness = 1; 
        setAfk();        
    } else if (llGetAgentInfo(llGetOwner() ) & AGENT_BUSY)
        {   
        idleness = 2; 
        setAfk();  

    } else {
        llParticleSystem([ ]); // off particles
        llStopAnimation("Away");
        doBlink();   
    }
    
    changed(integer change) {
        if (change & CHANGED_OWNER)
            llOwnerSay("Thank you for using this option, have fun");
            llResetScript();
    }
}
