local name, AddOn = ...

local frame = CreateFrame("Frame", name .. "EventFrame")
frame:SetScript("OnEvent", function(self, event, ...)
    AddOn[event](self, ...)
   end)
frame:RegisterEvent("PLAYER_ENTERING_WORLD") -- we don't want the button to come back after reloadUI or logging/exiting out

function AddOn:PLAYER_ENTERING_WORLD()
    _G["MiniMapWorldMapButton"]:Hide() -- therefore hide it no matter what!
end