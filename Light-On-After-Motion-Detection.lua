--[[
%% properties
42 value
%% globals
Actief
--]]

local startSource = fibaro:getSourceTrigger();
if (
 ( tonumber(fibaro:getValue(42, "value")) > 0  and  tonumber(fibaro:getGlobalValue("Actief")) >= tonumber("1") )
or
startSource["type"] == "other"
)
then
	fibaro:call(10, "setValue", "100");
end

