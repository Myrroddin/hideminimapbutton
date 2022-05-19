local name, AddOn = ...

AddOn.frame = CreateFrame("Frame")
AddOn.frame:RegisterEvent("ADDON_LOADED")
AddOn.frame:SetScript("OnEvent", function(self, event, ...)
    AddOn[event](self, ...)
end)

function AddOn:ADDON_LOADED(arg1)
    if arg1 ==  name then
       AddOn.frame:UnregisterEvent("ADDON_LOADED")
       _G["MiniMapWorldMapButton"]:Hide() -- therefore hide it no matter what!
    end
end