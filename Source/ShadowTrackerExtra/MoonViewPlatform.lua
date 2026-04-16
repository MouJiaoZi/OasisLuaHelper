---@meta

---@class AMoonViewPlatform: AUAERegionActor
---@field CheckOverlapInterval number
---@field CheckWeatherOverlapInterval number
---@field ParachuteMinHeight number
---@field ParachuteMaxHeight number
---@field ParachuteSpeed number
---@field CheckOpenParachuteInterval number
---@field UpdateBGMParamInterval number
---@field IsEnableUpdateBGMParam boolean
local AMoonViewPlatform = {}

---@param DeltaTime number
function AMoonViewPlatform:UpdateBGMParam(DeltaTime) end

---@param Player ASTExtraBaseCharacter
function AMoonViewPlatform:OnOnpenParachute(Player) end

---@param OverlapActor AActor
function AMoonViewPlatform:OnActivityAreaEnter(OverlapActor) end

---@param OverlapActor AActor
function AMoonViewPlatform:OnActivityAreaLeave(OverlapActor) end

---@param OverlapActor AActor
function AMoonViewPlatform:OnDriverAreaEnter(OverlapActor) end

---@param OverlapActor AActor
function AMoonViewPlatform:OnDriverAreaLeave(OverlapActor) end

---@param OverlapActor AActor
function AMoonViewPlatform:OnWeatherAreaEnter(OverlapActor) end

---@param OverlapActor AActor
function AMoonViewPlatform:OnWeatherAreaLeave(OverlapActor) end

---@param Player ASTExtraBaseCharacter
---@return boolean
function AMoonViewPlatform:IsInWeatherArea(Player) end
