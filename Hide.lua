local name, AddOn = ...

if WOW_PROJECT_ID ~= WOW_PROJECT_MISTS_CLASSIC then
    error(name .. " does NOT work for this game version", 2)
    return
end


AddOn.frame = CreateFrame("Frame")
AddOn.frame:RegisterEvent("PLAYER_ENTERING_WORLD")
AddOn.frame:SetScript("OnEvent", function(self, event, ...)
    AddOn[event](self, ...)
end)

function AddOn:PLAYER_ENTERING_WORLD()
    AddOn.frame:UnregisterEvent("PLAYER_ENTERING_WORLD")
    _G["MiniMapWorldMapButton"]:Hide()
end