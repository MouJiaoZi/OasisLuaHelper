---@meta

---@class AChristmasAriDropRegionActor: AUAERegionActor
---@field CheckOverlapInterval number
local AChristmasAriDropRegionActor = {}

---@param OverlapActor AActor
function AChristmasAriDropRegionActor:OnWeatherAreaEnter(OverlapActor) end

---@param OverlapActor AActor
function AChristmasAriDropRegionActor:OnWeatherAreaLeave(OverlapActor) end

---@param Player ASTExtraBaseCharacter
---@return boolean
function AChristmasAriDropRegionActor:IsInWeatherArea(Player) end
