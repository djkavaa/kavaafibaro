--[[
%% properties
42 value
%% globals
Actief
--]]

setTimeout(function()
local delayedCheck0 = false;
local tempDeviceState0, deviceLastModification0 = fibaro:get(42, "value");
if (( tonumber(fibaro:getValue(42, "value")) == 0 ) and (os.time() - deviceLastModification0) >= 5400) then
	delayedCheck0 = true;
end

local startSource = fibaro:getSourceTrigger();
if (
 ( delayedCheck0 == true  and  tonumber(fibaro:getGlobalValue("Actief")) <= tonumber("1") )
or
startSource["type"] == "other"
)
then
	fibaro:call(10, "turnOff");
end
end, 5400000)

