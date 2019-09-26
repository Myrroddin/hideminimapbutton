local name, AddOn = ...

local frame = CreateFrame("Frame", name .. "EventFrame")
frame:SetScript("OnEvent", function(self, event, ...)
    AddOn[event](self, ...)
   end)
frame:RegisterEvent("PLAYER_LOGIN")

function AddOn:PLAYER_LOGIN()
    _G["MiniMapWorldMapButton"]:Hide() -- therefore hide it no matter what!
end