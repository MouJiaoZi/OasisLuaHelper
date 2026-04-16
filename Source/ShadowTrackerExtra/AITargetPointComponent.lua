---@meta

---@class FAITargetPoint
---@field TargetPointLoc FVector
---@field NextPointLoc FVector
---@field MaxUseTime number
FAITargetPoint = {}


---@class FAITargetPointArr
---@field AITargetPoints ULuaArrayHelper<FAITargetPoint>
FAITargetPointArr = {}


---对于某些特殊目标，不直接移动或者攻击本体位置，采用这个组件选取移动、攻击位置
---@class UAITargetPointComponent: UActorComponent
---@field TargetPointMap ULuaMapHelper<string, FAITargetPointArr>
---@field OverlapComponentSelector FActorComponentSelector
---@field CacheTargetPointMap ULuaMapHelper<AActor, number>
---@field CacahePlayerInRange ULuaSetHelper<AActor>
---@field CacahePawnInClimbRange ULuaSetHelper<AActor>
local UAITargetPointComponent = {}

---@param PointType string
---@param AIActor AActor
---@param DirRefPoint FVector
---@param NextPoint boolean
---@return FVector
function UAITargetPointComponent:SelectTargetPoint(PointType, AIActor, DirRefPoint, NextPoint) end

---@param PointType string
---@param AIActor AActor
function UAITargetPointComponent:ReleaseTargetPoint(PointType, AIActor) end

---@param PointType string
---@param ToProjectPoint FVector
---@param AttackerPoint FVector
---@return FVector
function UAITargetPointComponent:GetProjectAttackPoint(PointType, ToProjectPoint, AttackerPoint) end

---@param PointType string
function UAITargetPointComponent:DebugTargetPointInfo(PointType) end

---@param OverlapActor AActor
---@return boolean
function UAITargetPointComponent:IsOverlapWithActor(OverlapActor) end

---@param LineStart FVector
---@param LineEnd FVector
---@param bSegment boolean
---@return boolean
function UAITargetPointComponent:IsLineCrossTPX(LineStart, LineEnd, bSegment) end
