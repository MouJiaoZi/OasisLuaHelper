---@meta

---@class FOverrideRange
---@field MovementMode EMovementMode
FOverrideRange = {}


---@class UFollowComponent: UActorComponent
---@field MoveComponentSelector FPrimitiveComponentSelector
---@field PawnStateOffsetMap ULuaMapHelper<EPawnState, FVector>
---@field bOverrideRange boolean
---@field OverrideRangeList ULuaArrayHelper<FOverrideRange>
---@field MinDeltaTime number
local UFollowComponent = {}

---@param DeltaTime number
function UFollowComponent:CalculateReLoc(DeltaTime) end

---@return FVector
function UFollowComponent:CalculateTargetReLoc() end

function UFollowComponent:SelectCurCurves() end

---@param DeltaTime number
---@param InLocation FVector
---@return FVector
function UFollowComponent:InterpReLoc(DeltaTime, InLocation) end

---@param InLocation FVector
---@param InTrans FTransform
---@return FVector
function UFollowComponent:ClampReLoc(InLocation, InTrans) end
