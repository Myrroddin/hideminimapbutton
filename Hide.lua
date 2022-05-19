local name, AddOn = ...

AddOn.frame = CreateFrame("Frame")
AddOn.frame:RegisterEvent("PLAYER_ENTERING_WORLD")
AddOn.frame:SetScript("OnEvent", function(self, event, ...)
    AddOn[event](self, ...)
end)

function AddOn:ADDON_LOADED(isInitialLogin, isReloadingUi)
    _G["MiniMapWorldMapButton"]:Hide()
end