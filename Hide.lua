if WOW_PROJECT_ID == WOW_PROJECT_MAINLINE then
    error("HideWOrldMapMinimapButton does NOT work for retail!", 2)
    return
end

local name, AddOn = ...

AddOn.frame = CreateFrame("Frame")
AddOn.frame:RegisterEvent("PLAYER_ENTERING_WORLD")
AddOn.frame:SetScript("OnEvent", function(self, event, ...)
    AddOn[event](self, ...)
end)

function AddOn:PLAYER_ENTERING_WORLD(event)
    self:UnregisterEvent(event)
    _G["MiniMapWorldMapButton"]:Hide()
end