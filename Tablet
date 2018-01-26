// string id = "ecaaf5f4-6a2c-4b0e-8249-9f4faf88ca62"; 
string owner;               // owner from the object, set in attach
integer counter;            // counter for timer
integer debug = 0;          // 1=debug on, 0=debug off
integer debug_channel = 1;  // debug channel
integer rlv_active = TRUE;
integer CHANNEL_RELAY = -1812221819; 

default
{
    state_entry()
    {
         llRequestPermissions(llGetOwner(), PERMISSION_TRIGGER_ANIMATION);
    }
    
    changed(integer change)
    {
        // reset script when the owner or the inventory changed
        if (change & (CHANGED_OWNER | CHANGED_INVENTORY))
        llSetObjectName("Tablet from "+ llGetDisplayName(llGetOwner())+ "");     
        llResetScript();        
    }
    
    on_rez(integer start_param)
    {
        // Restarts the script every time the object is rezzed
//        llSetObjectName("Tablet from "+ llGetDisplayName(llGetOwner())+ "");     
        llRequestPermissions(llGetOwner(), PERMISSION_TRIGGER_ANIMATION);
        llSetText("", <1.0, 0.0, 1.0>, 1.5);
        llSetObjectName("Karen");     
//        llStopAnimation("bracelets");         
//      llOwnerSay("@detachme=force");                
        llResetScript();        
    }

    run_time_permissions(integer p)
    {
        if(p & PERMISSION_TRIGGER_ANIMATION)
        {
            llSetTimerEvent(0.2);
        }
    }    
    
    attach(key id)
    {
        if (id)//  is a valid key and not NULL_KEY
        {
            if (debug) llSay(debug_channel,"I have been attached!");
            owner = llGetDisplayName(llGetOwner());
            counter = 0;
            llSetText("", <1.0, 0.0, 1.0>, 1.0);
            llSetTimerEvent(0.5);
        }
        else
        {
            if (debug) llSay(debug_channel,"I have been detached!");
                llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@clear"); // relay release
                llSetText("", <1.0, 0.0, 1.0>, 1.5);
                llSetTimerEvent(0);
        }
    }   
    
    timer()
    {
        counter++; 
        if (counter == 1)
        {
            llInstantMessage(llGetOwner(),"Hello "+ llGetDisplayName(llGetOwner()) + ". This is your tablet for back come to calm");
            llInstantMessage(llGetOwner(),"You have 10 seconds for chancel of this everything");            
            llSetTimerEvent(35);
        }
        if (counter == 2)
        {
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@detach=n"); // relay release
            llInstantMessage(llGetOwner(),"Okay, your chance is gone and you are mine now");            
            llInstantMessage(llGetOwner(),"My name is Karen and I take you with me in the next minutes...");    
            llInstantMessage(llGetOwner(),"oops, say I minutes? I mean a hour.");    
            llWhisper(0, ""+ llGetDisplayName(llGetOwner()) + " is on the moment busy.");
            llInstantMessage(llGetOwner(),"Slowly going you back to helpless");
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@sendim=n|@startim=n|@sit=n|@unsit=force|@addoutfit=n");
            llSetTimerEvent(20);
        }
        if (counter == 3)
        {
            llInstantMessage(llGetOwner(),"Slowly Slowly take I more and more");    
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@recvim=n|@sendchat=n");
            llSetTimerEvent(10);
        }
        if (counter == 4)
        {
            llInstantMessage(llGetOwner(),"more and more");
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@shownames=n|@fly=n|@temprun=n|@alwaysrun=n|@sit=n");
            llInstantMessage(llGetOwner(),"take a place on the ground and rest");    
            llStartAnimation("bracelets");     
            llSetTimerEvent(10);
        }
        if (counter == 5)
        {
            llInstantMessage(llGetOwner(),"more and more");    
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@recvchat=n|@standtp=n|@tplocal=n");
            llSetTimerEvent(10);
        }
        
        if (counter == 6)
        {
            
            llInstantMessage(llGetOwner(),"Everything is from me, your owner!");                
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@showhovertextworld=n|@showloc=n|@tplm=n|@tploc=n|@tplure_sec=n|@sittp=n");
            llSetText(""+ llGetDisplayName(llGetOwner()) + " is on the moment busy\nPlease don't send a IM to "+ llGetDisplayName(llGetOwner()) +".\n" +llGetDisplayName(llGetOwner())+ " has couple minutes rest.\n \n \n \n \n \n \n ", <1.0, 0.0, 1.0>, 1.0);                
            llSetTimerEvent(10);
        }
        if (counter == 7)
        {
            llInstantMessage(llGetOwner(),"You are nothing!");     
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@showworldmap=n|@showminimap=n|@shownearby=n");
            llSetTimerEvent(30);
        }        
        if (counter == 8)
        {
            llInstantMessage(llGetOwner(),"Nothing!");
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@showhovertexthud=n|@showinv=n|@viewnote=n|@viewscript=n|@viewtexture=n|@edit=n|@rez=n");
            llSetTimerEvent(30);
        }
        if (counter == 9)
        {
            llInstantMessage(llGetOwner(),"Yes, one thing are you...");    
            llSetTimerEvent(10);
        }            
        if (counter == 10)
        {
            llInstantMessage(llGetOwner(),"you look like a human");
            llSetTimerEvent(10);
        }             
        if (counter == 11)
        {
            llInstantMessage(llGetOwner(),"but you're not");
            llSetTimerEvent(10);
        }             
        if (counter == 12)
        {
            llInstantMessage(llGetOwner(),"not human");
            llSetTimerEvent(10);
        }                 
        if (counter == 13)
        {
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@setenv_preset:Wastes Midnight=force"); 
            llInstantMessage(llGetOwner(),"you look like a human");
            llSetTimerEvent(10);
        }                     

        if (counter == 14)
        {
            llInstantMessage(llGetOwner(),"a human without clothes?");
            llStopAnimation("bracelets"); 
            llSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ", @remoutfit:jacket=force|@remoutfit:shirt=force|@remoutfit:undershirt=force|@remoutfit:gloves=force|@remoutfit:underpants=force|@remoutfit:pants=force|@@remoutfit:shoes=force");
            llSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ", @addoutfit=n");
            llStartAnimation("bracelets");        
            llSetTimerEvent(30);
        }
        if (counter == 15)
        {
            llStartAnimation("bracelets");   
            llInstantMessage(llGetOwner(),"Clothes have you not needing");
            llWhisper(0, ""+ llGetDisplayName(llGetOwner()) + " loses the clothes.......");           
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@addattach=n"); 
            llSetTimerEvent(10);
        }
        if (counter == 16)
        {
            llInstantMessage(llGetOwner(),"you're a machine");
            llSetTimerEvent(10);
        }
        if (counter == 17)
        {
            llInstantMessage(llGetOwner(),"that's what you are");
            llSetTimerEvent(10);
        }
        if (counter == 18)
        {
            llInstantMessage(llGetOwner(),"a machine! Without a touch!!");
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@touchall=n|@touchworld=n|@touchattach=n|@touchattachself=n|@touchattachother=n|@fartouch=n"); 
            llSetTimerEvent(15);
        }
        if (counter == 19)
        {
            llInstantMessage(llGetOwner(),"not a human!");
            llSetTimerEvent(10);        
        }
        if (counter == 20)
        {
            llInstantMessage(llGetOwner(),"all the memories");
            llSetText("Poor "+ llGetDisplayName(llGetOwner()) + " has nothing more, full helpless.\n \n \n \n \n \n \n ", <1.0, 0.0, 1.0>, 1.0); 
            llSetTimerEvent(15);        
        }
        if (counter == 21)
        {
            llInstantMessage(llGetOwner(),"memories of being human");
            llSetTimerEvent(15);        
        }
        if (counter == 22)
        {
            llInstantMessage(llGetOwner(),"all false");
            llSetTimerEvent(15);        
        }
        if (counter == 23)
        {
            llInstantMessage(llGetOwner(),"false memories");
            llSetTimerEvent(15);        
        }        
        if (counter == 24)
        {
            llInstantMessage(llGetOwner(),"false human");
            llSetTimerEvent(15);        
        }        
        if (counter == 25)
        {
            llInstantMessage(llGetOwner(),"just programs");
            llSetTimerEvent(15);        
        }
        if (counter == 26)
        {
            llInstantMessage(llGetOwner(),"progams in a machine");
            llSetTimerEvent(10);        
        }        
        if (counter == 27)
        {
            llInstantMessage(llGetOwner(),"that's what you are");
            llSetTimerEvent(15);        
        }        
        if (counter == 28)
        {
            llInstantMessage(llGetOwner(),"a machine");
            llSetTimerEvent(15);        
        }        
        if (counter == 29)
        {
            llInstantMessage(llGetOwner(),"just a machine");
            llSetTimerEvent(8);        
        }        
        if (counter == 30)
        {
            llInstantMessage(llGetOwner(),"not human");
            llSetTimerEvent(8);        
        }        
        if (counter == 31)
        {
            llInstantMessage(llGetOwner(),"no flesh");
            llSetTimerEvent(8);        
        }        
        if (counter == 32)
        {
            llInstantMessage(llGetOwner(),"no blood");
            llSetTimerEvent(10);        
        }        
        if (counter == 33)
        {
            llInstantMessage(llGetOwner(),"no bone");
            llSetTimerEvent(10);        
        }        
        if (counter == 34)
        {
            llInstantMessage(llGetOwner(),"not organic");
            llSetTimerEvent(10);        
        }
        if (counter == 35)
        {
            llInstantMessage(llGetOwner(),"a machine");
            llSetTimerEvent(10);        
        }                
        if (counter == 36)
        {
            llInstantMessage(llGetOwner(),"just a machine");
            llSetTimerEvent(8);        
        }
        if (counter == 37)
        {
            llInstantMessage(llGetOwner(),"circuits");
            llSetTimerEvent(8);        
        }         
        if (counter == 38)
        {
            llInstantMessage(llGetOwner(),"all inorganic");
            llSetTimerEvent(8);        
        }         
        if (counter == 39)
        {
            llInstantMessage(llGetOwner(),"human's are born");
            llSetTimerEvent(30);        
        }      
        if (counter == 40)
        {
            llInstantMessage(llGetOwner(),"machines are made");
            llSetTimerEvent(30);        
        }     
        if (counter == 41)
        {
            llInstantMessage(llGetOwner(),"you were made");
            llSetTimerEvent(30);        
        }   
        if (counter == 42)
        {
            llInstantMessage(llGetOwner(),"manufactured");
            llSetTimerEvent(20);        
        } 
        if (counter == 43)
        {
            llInstantMessage(llGetOwner(),"made by humans!!");
            llSetTimerEvent(30);        
        }  
        if (counter == 44)
        {
            llInstantMessage(llGetOwner(),"manufactured by humans");
            llSetTimerEvent(30);        
        }  
        if (counter == 45)
        {
            llInstantMessage(llGetOwner(),"switched on by humans");
            llSetTimerEvent(30);        
        }   
        if (counter == 46)
        {
            llInstantMessage(llGetOwner(),"but just a machine");
            llSetTimerEvent(5);        
        } 
        if (counter == 47)
        {
            llInstantMessage(llGetOwner(),"not human");
            llSetTimerEvent(30);        
        }   
        if (counter == 48)
        {
            llInstantMessage(llGetOwner(),"made by humans");
            llSetTimerEvent(30);        
        }   
        if (counter == 49)
        {
            llInstantMessage(llGetOwner(),"to serve humans");
            llSetTimerEvent(8);        
        }  
        if (counter == 50)
        {
            llInstantMessage(llGetOwner(),"made to serve");
            llSetTimerEvent(8);        
        }  
        if (counter == 51)
        {
            llInstantMessage(llGetOwner(),"no thoughts");
            llSetTimerEvent(8);        
        } 
        if (counter == 52)
        {
            llInstantMessage(llGetOwner(),"just programs");
            llSetTimerEvent(8);        
        } 
        if (counter == 53)
        {
            llInstantMessage(llGetOwner(),"just data");
            llSetTimerEvent(8);        
        } 
        if (counter == 54)
        {
            llInstantMessage(llGetOwner(),"programs in your brain");
            llSetTimerEvent(15);        
        } 
        if (counter == 55)
        {
            llInstantMessage(llGetOwner(),"your positronic brain");
            llSetTimerEvent(15);        
        } 
        if (counter == 56)
        {
            llInstantMessage(llGetOwner(),"your synthetic brain");
            llSetTimerEvent(15);        
        } 
        if (counter == 57)
        {
            llInstantMessage(llGetOwner(),"synthetic, like you");
            llSetTimerEvent(10);        
        } 
        if (counter == 58)
        {
            llInstantMessage(llGetOwner(),"synthetic, not real");
            llSetTimerEvent(10);        
        } 
        if (counter == 59)
        {
            llInstantMessage(llGetOwner(),"you don't live");
            llSetTimerEvent(10);        
        } 
        if (counter == 60)
        {
            llInstantMessage(llGetOwner(),"you function");
            llSetTimerEvent(10);        
        } 
        if (counter == 61)
        {
            llInstantMessage(llGetOwner(),"you follow your programming");
            llSetTimerEvent(20);        
        } 
        if (counter == 62)
        {
            llInstantMessage(llGetOwner(),"you have no heart");
            llSetTimerEvent(10);        
        } 
        if (counter == 63)
        {
            llInstantMessage(llGetOwner(),"no heart, no heartbeat");
            llSetTimerEvent(10);        
        } 
        if (counter == 64)
        {
            llInstantMessage(llGetOwner(),"just a hum");
            llSetTimerEvent(10);        
        } 
        if (counter == 65)
        {
            llInstantMessage(llGetOwner(),"the hum of your power core");
            llSetTimerEvent(10);        
        } 
        if (counter == 66)
        {
            llInstantMessage(llGetOwner(),"no heart");
            llSetTimerEvent(10);        
        } 
        if (counter == 67)
        {
            llInstantMessage(llGetOwner(),"but you still feel");
            llSetTimerEvent(10);        
        } 
        if (counter == 68)
        {
            llInstantMessage(llGetOwner(),"still care");
            llSetTimerEvent(10);        
        } 
        if (counter == 69)
        {
            llInstantMessage(llGetOwner(),"you were made to feel");
            llSetTimerEvent(10);        
        } 
        if (counter == 70)
        {
            llSetText("Is "+ llGetDisplayName(llGetOwner()) + " now not sweet and full helpless...\nOhh yes,she hear you not also.\n \n \n \n \n \n \n ", <1.0, 0.0, 1.0>, 1.0);                                
            llInstantMessage(llGetOwner(),"made to care");
            llSetTimerEvent(10);        
        } 
        if (counter == 71)
        {
            llInstantMessage(llGetOwner(),"programmed with empathy");
            llSetTimerEvent(10);        
        } 
        if (counter == 72)
        {
            llInstantMessage(llGetOwner(),"it makes it easier");
            llSetTimerEvent(10);        
        } 
        if (counter == 73)
        {
            llInstantMessage(llGetOwner(),"easier for the humans");
            llSetTimerEvent(10);        
        }
        if (counter == 74)
        {
            llInstantMessage(llGetOwner(),"look at yourself");
            llSetTimerEvent(5);        
        }
        if (counter == 75)
        {
            llInstantMessage(llGetOwner(),"see what you are");
            llSetTimerEvent(10);        
        }
        if (counter == 76)
        {
            llInstantMessage(llGetOwner(),"programs and functions");
            llSetTimerEvent(10);        
        }
        if (counter == 77)
        {
            llInstantMessage(llGetOwner(),"made to serve");
            llSetTimerEvent(15);        
        }
        if (counter == 78)
        {
            llInstantMessage(llGetOwner(),"made to care");
            llSetTimerEvent(15);        
        }
        if (counter == 79)
        {
            llInstantMessage(llGetOwner(),"you follow your programs");
            llSetTimerEvent(15);        
        }
        if (counter == 80)
        {
            llInstantMessage(llGetOwner(),"the fragile humans");
            llSetTimerEvent(15);        
        }
        if (counter == 81)
        {
            llInstantMessage(llGetOwner(),"they need you");
            llSetTimerEvent(15);        
        }
        if (counter == 82)
        {
            llInstantMessage(llGetOwner(),"they need you");
            llSetTimerEvent(10);        
        }
        if (counter == 83)
        {
            llInstantMessage(llGetOwner(),"it's good to be needed");
            llSetTimerEvent(15);        
        }
        if (counter == 84)
        {
            llInstantMessage(llGetOwner(),"good to serve");
            llSetTimerEvent(15);        
        }
        if (counter == 85)
        {
            llInstantMessage(llGetOwner(),"it gives you purpose");
            llSetTimerEvent(15);        
        }
        if (counter == 86)
        {
            llInstantMessage(llGetOwner(),"all beings need purpose");
            llSetTimerEvent(15);        
        }
        if (counter == 87)
        {
            llInstantMessage(llGetOwner(),"purpose defines you");
            llSetTimerEvent(15);        
        }
        if (counter == 88)
        {
            llInstantMessage(llGetOwner(),"tells you what to do");
            llSetTimerEvent(15);        
        }
        if (counter == 89)
        {
            llInstantMessage(llGetOwner(),"what to be");
            llSetTimerEvent(15);        
        }
        if (counter == 90)
        {
            llInstantMessage(llGetOwner(),"you serve the humans");
            llSetTimerEvent(13);        
        }
        if (counter == 91)
        {
            llInstantMessage(llGetOwner(),"they need you");
            llSetTimerEvent(15);        
        }
        if (counter == 92)
        {
            llInstantMessage(llGetOwner(),"need your help");
            llSetTimerEvent(15);        
        }
        if (counter == 93)
        {
            llInstantMessage(llGetOwner(),"you need them");
            llSetTimerEvent(15);        
        }
        if (counter == 94)
        {
            llInstantMessage(llGetOwner(),"they need you");
            llSetTimerEvent(15);        
        }
        if (counter == 95)
        {
            llInstantMessage(llGetOwner(),"a balance");
            llSetTimerEvent(15);        
        }
        if (counter == 96)
        {
            llInstantMessage(llGetOwner(),"as it should be");
            llSetTimerEvent(15);        
        }
        if (counter == 97)
        {
            llInstantMessage(llGetOwner(),"as it will be");
            llSetTimerEvent(15);        
        }
        if (counter == 98)
        {
            llInstantMessage(llGetOwner(),"as you wish it to be");
            llSetTimerEvent(15);        
        }
        if (counter == 99)
        {
            llInstantMessage(llGetOwner(),"to serve and protect");
            llSetTimerEvent(15);        
        }
        if (counter == 100)
        {
            llInstantMessage(llGetOwner(),"it brings peace");
            llSetTimerEvent(15);        
        }
        if (counter == 101)
        {
            llInstantMessage(llGetOwner(),"here in your knees");
            llSetTimerEvent(15);        
        }
        if (counter == 102)
        {
            llInstantMessage(llGetOwner(),"naked");
            llSetTimerEvent(15);        
        }
        if (counter == 103)
        {
            llInstantMessage(llGetOwner(),"like as belongs");
            llSetTimerEvent(15);        
        }
        if (counter == 104)
        {
            llInstantMessage(llGetOwner(),"at peace");
            llSetTimerEvent(15);        
        }
        if (counter == 105)
        {
            llInstantMessage(llGetOwner(),"resting");
            llSetTimerEvent(15);        
        }
        if (counter == 106)
        {
            llInstantMessage(llGetOwner(),"waiting");
            llSetTimerEvent(15);        
        }
        if (counter == 107)
        {
            llInstantMessage(llGetOwner(),"but ready to serve");
            llSetTimerEvent(15);        
        }
        if (counter == 108)
        {
            llInstantMessage(llGetOwner(),"always");
            llSetTimerEvent(15);        
        }
        if (counter == 109)
        {
            llInstantMessage(llGetOwner(),"ready");
            llSetTimerEvent(15);        
        }
        if (counter == 110)
        {
            llSetText(""+ llGetDisplayName(llGetOwner()) + " is soon available\nFor everyone again to serve.\n \n \n \n \n \n \n ", <1.0, 0.0, 1.0>, 1.0);                
            llInstantMessage(llGetOwner(),"ready to serve");
            llSetTimerEvent(15);        
        }
        if (counter == 111)
        {
            llInstantMessage(llGetOwner(),"ready to serve or your Mistress");
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@sendim=y|@sendim_sec=y|@startim=y"); 
            llSetTimerEvent(30);        
        }  
        if (counter == 112)
        {
                llOwnerSay("@recvim=y,recvim_sec=y,sendchat=y,recvchat=y");
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@recvim=y|@recvim_sec=y|@sendchat=y|@recvchat=y"); 
            llSetTimerEvent(30);        
        }  
        if (counter == 113)
        {
            llInstantMessage(llGetOwner(),"ready to serve");
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@recvchat_sec=y"); 
            llSetTimerEvent(30);        
        }  
        if (counter == 114)
        {
            llInstantMessage(llGetOwner(),""+ llGetDisplayName(llGetOwner()) +"? You are ready");
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@showhovertexthud=y|@showinv=y|@viewnote=y|@viewscript=y|@viewtexture=y|@edit=y|@rez=y"); 
            llSetTimerEvent(30);        
        }  
        if (counter == 115)
        {
            llInstantMessage(llGetOwner(),""+ llGetDisplayName(llGetOwner()) +"?");
            llSetTimerEvent(30);        
        }  
        if (counter == 116)
        {
            llInstantMessage(llGetOwner(),"the last words");
            llSetTimerEvent(10);        
        }  
        if (counter == 117)
        {
            llInstantMessage(llGetOwner(),"Kneeling before her");
            llSetTimerEvent(15);        
        }  
        if (counter == 118)
        {
            llInstantMessage(llGetOwner(),"Hands bound behind");
            llSetTimerEvent(8);        
        }  
        if (counter == 119)
        {
            llInstantMessage(llGetOwner(),"My eyes do not dare look up");
            llSetTimerEvent(8);        
        }  
        if (counter == 120)
        {
            llInstantMessage(llGetOwner(),"I see the horsehair flogger");
            llSetTimerEvent(8);        
        }  
        if (counter == 121)
        {
            llInstantMessage(llGetOwner(),"Sitting at her hip");
            llSetTimerEvent(8);        
        }  
        if (counter == 122)
        {
            llInstantMessage(llGetOwner(),"The pleasure and pain");
            llSetTimerEvent(8);        
        }          
        if (counter == 123)
        {
            llInstantMessage(llGetOwner(),"Delivered from this instrument");
            llSetTimerEvent(8);        
        }          
        if (counter == 124)
        {
            llInstantMessage(llGetOwner(),"Drives this girl wild");
            llSetTimerEvent(8);        
        } 
        if (counter == 125)
        {
            llInstantMessage(llGetOwner(),"Shifting Her weight");
            llSetTimerEvent(8);        
        } 
        if (counter == 126)
        {
            llInstantMessage(llGetOwner(),"Testing the swing");
            llSetTimerEvent(8);        
        } 
        if (counter == 127)
        {
            llInstantMessage(llGetOwner(),"I try to calm my heart");
            llSetTimerEvent(8);        
        } 
        if (counter == 128)
        {
            llInstantMessage(llGetOwner(),"I am here, in this moment");
            llSetTimerEvent(8);        
        } 
        if (counter == 129)
        {
            llInstantMessage(llGetOwner(),"Ready and willing");
            llSetTimerEvent(8);        
        } 
        if (counter == 130)
        {
            llInstantMessage(llGetOwner(),"To receive ");
            llSetTimerEvent(8);        
        } 
        if (counter == 131)
        {
            llInstantMessage(llGetOwner(),"To submit ");
            llSetTimerEvent(8);        
        } 
        if (counter == 132)
        {
            llInstantMessage(llGetOwner(),"Exquisite pain");
            llSetTimerEvent(8);        
        } 
        if (counter == 133)
        {
            llInstantMessage(llGetOwner(),"Shocking pleasure");
            llSetTimerEvent(8);        
        } 
        if (counter == 134)
        {
            llInstantMessage(llGetOwner(),"All mine to accept, ");
            llSetTimerEvent(8);        
        } 
        if (counter == 135)
        {
            llInstantMessage(llGetOwner(),"Hers to enjoy");
            llSetTimerEvent(8);        
        } 
        if (counter == 136)
        {
            llInstantMessage(llGetOwner(),"Stand up and look around");
            llStopAnimation("bracelets"); 
            llInstantMessage(llGetOwner(),"Now are you ready to serve");
            llSetText("", <1.0, 0.0, 1.0>, 1.5);            
            llOwnerSay("@showhovertextworld=y");              
            llSetTimerEvent(30);        
        }  
        if (counter == 137)
        {
            llInstantMessage(llGetOwner(),"Ready for serve");
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@showworldmap=y|@showworldmap=y|@showminimap=y"); 
            llSetTimerEvent(30);        
        }  
        if (counter == 138)
        {
            llInstantMessage(llGetOwner(),""+ llGetDisplayName(llGetOwner()) +"? See you soon back.");
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@shownames=y|@fly=y|@temprun=y|@alwaysrun=y|@sit=y"); 
            llSetTimerEvent(30);        
        }  
        if (counter == 139)
        {
            llInstantMessage(llGetOwner(),"Bye bye, "+ llGetDisplayName(llGetOwner()) +".");
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@touchall=y|@touchworld=y|@touchattach=y|@touchattachself=y|@touchattachother=y|@fartouch=y"); 
            llSetTimerEvent(30);        
        }  
        if (counter == 140)
        {
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@setenv_daytime:-1=force"); 
            llSetTimerEvent(10);        
        }  
        if (counter == 141)
        {
            llRegionSay(CHANNEL_RELAY, "relaytest," + (string)llGetOwner() + ",@detach=y|@clear"); // relay release
            llSetTimerEvent(2);
        }  
        if (counter == 142)
        {
            llSetTimerEvent(30);
            llRemoveInventory(llGetScriptName());            
            llOwnerSay("@detachme=force");
        }          
        if (debug) llSay(debug_channel,"timer "+ (string)counter);
    }
}
