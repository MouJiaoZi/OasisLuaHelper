---@meta

---@class FStarFallBallParameter
---@field StartTime number
---@field CurTime number
---@field StageIndex number
---@field DirectionOffset number
---@field DisOffset number
---@field YawOffset number
FStarFallBallParameter = {}


---@class FStarFallConfig
---@field DirectionNum number
---@field StarNum number
---@field RoundTime number
---@field YawOffset number
---@field DisOffset number
---@field TimeOffset number
---@field MoveSpeedFactor number
FStarFallConfig = {}


---@class AStarFallActor: AActor
---@field ConfigList ULuaArrayHelper<FStarFallConfig>
---@field StarList ULuaArrayHelper<FStarFallBallParameter>
local AStarFallActor = {}

---@param Star APVEProjectileBase
---@param StartTime number
---@param CurTime number
---@param DirectionOffset number
---@param StageIndex number
---@param DisOffset number
---@param YawOffset number
function AStarFallActor:AddToStarList(Star, StartTime, CurTime, DirectionOffset, StageIndex, DisOffset, YawOffset) end

function AStarFallActor:Reset() end

---@param CurConfig FStarFallConfig
---@param InTime number
---@param DirectionOffset number
---@param YawOffset number
---@param DisOffset number
---@return FVector
function AStarFallActor:CalculatePosition(CurConfig, InTime, DirectionOffset, YawOffset, DisOffset) end
