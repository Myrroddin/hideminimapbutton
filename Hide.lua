---@class HideWorldMapMinimapButton
---@field frame Frame

---@type string, HideWorldMapMinimapButton
local name, AddOn = ...

if WOW_PROJECT_ID ~= WOW_PROJECT_MISTS_CLASSIC then
	error(name .. " does NOT work for this game version")
end

AddOn.frame = CreateFrame("Frame")

AddOn.frame:RegisterEvent("PLAYER_ENTERING_WORLD")
AddOn.frame:SetScript("OnEvent", function(self)
	self:UnregisterEvent("PLAYER_ENTERING_WORLD")

	local button = _G.MiniMapWorldMapButton
	if button then
		button:Hide()
	end
end)