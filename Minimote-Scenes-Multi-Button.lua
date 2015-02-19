--[[
 %% properties
 135 sceneActivation
 %% globals
 --]]

fibaro:sleep(50); --sleep to prevent all instances being killed.
if (fibaro:countScenes() > 1) then
    fibaro:debug( "Abort, Scene count = " .. fibaro:countScenes());
  fibaro:abort();
end
-- Minimote ID
local ButtonPressed = fibaro:getValue(135, "sceneActivation")
-- End Minimote ID

-- ********************************************************

-- Start Button 1 Config 
if ( tonumber(ButtonPressed) == 1) then
 fibaro:debug("MiniMote button 1 pressed / Boven Achter Uit")
wait = true;
  exitloop = 0;
  gotsecondbutton= false;
  while (wait) do
    fibaro:debug("waiting");
   local ButtonPressedagain = fibaro:getValue(135, "sceneActivation");
    fibaro:sleep(100);  
    if (tonumber(ButtonPressedagain) == 5) then
      gotsecondbutton = true;
      wait = false;
    end
    exitloop = exitloop+100;
    if (exitloop == 1000) then wait = false; end
    end
  if (gotsecondbutton) then
    fibaro:debug("Lamp Buro Kay Aan (2 Knoppen)");
    fibaro:call(121, "turnOn") -- Lamp Buro Kay aan bij indrukken van Knop 1>5
    else

-- ********************************************************

-- Button 1>3 Config --------------- 
-- Lamp Raam Aan     ---------------

end
  wait = true;
  exitloop = 0;
  gotthirdbutton= false;
  while (wait) do
    fibaro:debug("waiting");
   local ButtonPressedagain = fibaro:getValue(135, "sceneActivation");
    fibaro:sleep(100);  
    if (tonumber(ButtonPressedagain) == 3) then
      gotthirdbutton = true;
      wait = false;
    end
    exitloop = exitloop+100;
    if (exitloop == 1000) then wait = false; end
    end
  if (gotthirdbutton) then
    fibaro:debug("Lamp Raam Aan (2 Knoppen)");
    fibaro:call(7, "turnOn") -- Lamp Raam aan bij indrukken van Knop 1>3
    else
-- Lamp Raam Aan         ------------
-- END Button 1>3 Config ------------

  fibaro:call(46, "turnOff"); -- Lamp Achter Uit  bij indrukken van Knop 1
    fibaro:debug("Lamp Boven Achter Uit");
      end
-- END - Button 1 Config

-- ********************************************************

-- Start Button 2 Config
elseif ( tonumber(ButtonPressed) == 2) then
 fibaro:debug("MiniMote button 2 pressed / Boven Achter Aan")
 fibaro:call(46, "turnOn")
-- END - Button 2 Config

-- ********************************************************

-- Start Button 3 Config
elseif ( tonumber(ButtonPressed) == 3) then
 fibaro:debug("MiniMote button 3 pressed / Truss Uit")
  wait = true;
  exitloop = 0;
  gotsecondbutton= false;
  while (wait) do
    fibaro:debug("waiting");
   local ButtonPressedagain = fibaro:getValue(135, "sceneActivation");
    fibaro:sleep(100);  
    if (tonumber(ButtonPressedagain) == 7) then
      gotsecondbutton = true;
      wait = false;
    end
    exitloop = exitloop+100;
    if (exitloop == 1000) then wait = false; end
    end
  if (gotsecondbutton) then
    fibaro:debug("Lamp Buro Kyra Aan (2 Knoppen)");
    --voeg voor 2 knoppen toe
    fibaro:call(131, "turnOn") -- Lamp Buro Kyra aan bij indrukken van Knop 3>7
    else

-- ********************************************************

-- Button 3<1 Config --------------- 
-- Lamp Raam uit     ---------------

end
  wait = true;
  exitloop = 0;
  gotthirdbutton= false;
  while (wait) do
    fibaro:debug("waiting");
   local ButtonPressedagain = fibaro:getValue(135, "sceneActivation");
    fibaro:sleep(100);  
    if (tonumber(ButtonPressedagain) == 1) then
      gotthirdbutton = true;
      wait = false;
    end
    exitloop = exitloop+100;
    if (exitloop == 1000) then wait = false; end
    end
  if (gotthirdbutton) then
    fibaro:debug("Lamp Raam Uit (2 Knoppen)");
    fibaro:call(7, "turnOff") -- Lamp Raam Uit bij indrukken van Knop 3<1
    else
-- Lamp Raam Uit         ------------
-- END Button 3<1 Config ------------ 

 fibaro:call(66, "turnOff") -- Lamp Buro uit bij indrukken van Knop 7
     fibaro:debug("Lamp Truss Uit");
    end
-- END - Button 3 Config

-- ********************************************************

-- Start Button 4 Config
elseif ( tonumber(ButtonPressed) == 4) then
 fibaro:debug("MiniMote button 4 pressed / Truss Aan")
 fibaro:call(66, "turnOn")
-- END - Button 4 Config

-- ********************************************************

-- Start Button 5 Config
elseif ( tonumber(ButtonPressed) == 5) then
 fibaro:debug("MiniMote button 5 pressed / Boven Voor Uit")
  wait = true;
  exitloop = 0;
  gotsecondbutton= false;
  while (wait) do
    fibaro:debug("waiting");
   local ButtonPressedagain = fibaro:getValue(135, "sceneActivation");
    fibaro:sleep(100);  
    if (tonumber(ButtonPressedagain) == 1) then
      gotsecondbutton = true;
      wait = false;
    end
    exitloop = exitloop+100;
    if (exitloop == 1000) then wait = false; end
    end
  if (gotsecondbutton) then
    fibaro:debug("2 knoppen");
    fibaro:call(121, "turnOff") -- Lamp Buro Kay uit bij indrukken van Knop 5>1
    else
-- Button 5>7 Config --------------- 
-- Lamp Vissen Aan   ---------------

end
  wait = true;
  exitloop = 0;
  gotthirdbutton= false;
  while (wait) do
    fibaro:debug("waiting");
   local ButtonPressedagain = fibaro:getValue(135, "sceneActivation");
    fibaro:sleep(100);  
    if (tonumber(ButtonPressedagain) == 7) then
      gotthirdbutton = true;
      wait = false;
    end
    exitloop = exitloop+100;
    if (exitloop == 1000) then wait = false; end
    end
  if (gotthirdbutton) then
    fibaro:debug("Lamp Vissen Uit (2 Knoppen)");
    fibaro:call(5, "turnOn") -- Lamp Vissen Uit bij indrukken van Knop 5>7
    else
-- Lamp Vissen Aan       ------------
-- END Button 5>7 Config ------------
 fibaro:call(10, "turnOff") -- Lamp Boven Voor uit bij indrukken van Knop 5
     fibaro:debug("1 knop");
      end
-- END - Button 5 Config

-- ********************************************************

-- Start Button 6 Config
elseif ( tonumber(ButtonPressed) == 6) then
 fibaro:debug("MiniMote button 6 pressed / Boven Voor Aan")
 fibaro:call(10, "turnOn")
-- END - Button 6 Config

-- ********************************************************

-- Start Button 7 Config
elseif ( tonumber(ButtonPressed) == 7) then
 fibaro:debug("MiniMote button 7 pressed / Bank Boven Uit")
 wait = true;
  exitloop = 0;
  gotsecondbutton= false;
  while (wait) do
    fibaro:debug("waiting");
   local ButtonPressedagain = fibaro:getValue(135, "sceneActivation");
    fibaro:sleep(100);  
    if (tonumber(ButtonPressedagain) == 3) then
      gotsecondbutton = true;
      wait = false;
    end
    exitloop = exitloop+100;
    if (exitloop == 1000) then wait = false; end
    end
  if (gotsecondbutton) then
    fibaro:debug("Lamp Buro Kyra Uit (2 Knoppen)");
    --voeg voor 2 knoppen toe
    fibaro:call(131, "turnOff") -- Lamp Buro Kyra aan bij indrukken van Knop 7>3
    else

-- Button 7>5 Config --------------- 
-- Lamp Vissen uit   ---------------

end
  wait = true;
  exitloop = 0;
  gotthirdbutton= false;
  while (wait) do
    fibaro:debug("waiting");
   local ButtonPressedagain = fibaro:getValue(135, "sceneActivation");
    fibaro:sleep(100);  
    if (tonumber(ButtonPressedagain) == 5) then
      gotthirdbutton = true;
      wait = false;
    end
    exitloop = exitloop+100;
    if (exitloop == 1000) then wait = false; end
    end
  if (gotthirdbutton) then
    fibaro:debug("Lamp Vissen Uit (2 Knoppen)");
    fibaro:call(5, "turnOff") -- Lamp Vissen Uit bij indrukken van Knop 7>5
    else
-- Lamp Vissen uit       ------------
-- END Button 7>5 Config ------------

 fibaro:call(99, "turnOff") -- Lamp Bank uit bij indrukken van Knop 7
      fibaro:debug("1 knop");
      end 
-- END - Button 7 Config

-- ********************************************************

-- Start Button 8 Config
elseif ( tonumber(ButtonPressed) == 8) then
 fibaro:debug("MiniMote button 8 pressed / Bank Boven Aan")
 fibaro:call(99, "turnOn")
-- END - Button 8 Config

-- ********************************************************

-- Start Debug for no response
else
 fibaro:debug("No response")
end
-- End Debug for no response
