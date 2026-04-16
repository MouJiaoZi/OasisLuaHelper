---@meta

---@class FSequenceLocationMap
---@field PointToTime ULuaMapHelper<FVector, number>
---@field Box FBox
---@field Rotator FRotator
---@field BoxComponentName string
FSequenceLocationMap = {}


---@class ASequenceLocatorActor: AActor
---@field StepCount number
---@field MaxBoxSide number
---@field MinBoxSide number
---@field bCircular boolean
---@field CollisionProfileName string
---@field SequenceBinding FActivityLevelSequenceBinding
---@field LookUpLocator ULuaArrayHelper<FSequenceLocationMap>
local ASequenceLocatorActor = {}

---@param Actor AActor
---@return number
function ASequenceLocatorActor:GetNearestPosition(Actor) end
