--[[
%% autostart
%% properties
%% globals
--]]
 
NB_DEVICES = 300
 
function turnAllOff()
    fibaro:debug('Turn all devices off.')
 
    -- Turn off all devices
    for i = 1, NB_DEVICES do
        fibaro:call(i, "turnOff");
    end
 
end
 
local sourceTrigger = fibaro:getSourceTrigger();
if (sourceTrigger["type"] == "autostart") then
    while true do
        fibaro:debug('Scene automatically called.')
 
        local currentDate = os.date("*t");
 
        -- Turn off devices only Monday-Saturday between 19:00 and 19:10
        if ((currentDate.wday >= 2 and currentDate.wday <= 7) and (currentDate.hour == 19 ) and (currentDate.min > 0 and currentDate.min < 10))
        then
            fibaro:debug('Lights automatically switched off.')
            turnAllOff()
        end
 
        fibaro:sleep(5*60000); -- Run every 5 minutes
    end
else
 
    local currentDate = os.date("*t");
    local startSource = fibaro:getSourceTrigger();
    if (startSource["type"] == "other")
    then
        turnAllOff()
    end
 
end