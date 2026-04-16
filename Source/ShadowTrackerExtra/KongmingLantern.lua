---@meta

---@class AKongmingLantern: AUAERegionActor
---@field MoveSpeed number
---@field MovePath ULuaArrayHelper<FVector>
---@field MoveInterval number
---@field SourceLoc FVector
---@field MoveTime number
---@field CurMoveIndex number
---@field CheckOverlapInterval number
local AKongmingLantern = {}

---@param OverlapActor AActor
function AKongmingLantern:OnTriggerEnter(OverlapActor) end

---@param OverlapActor AActor
function AKongmingLantern:OnTriggerLeave(OverlapActor) end
