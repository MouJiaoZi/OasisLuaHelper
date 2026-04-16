---@meta

---@class FSteerWeightBySpeed
---@field Speed number
---@field Weight number
FSteerWeightBySpeed = {}


---@class FPXGCrowdMessage : ULuaMulticastDelegate
FPXGCrowdMessage = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: AActor, Param2: string, Param3: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPXGCrowdMessage:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 AActor
---@param Param2 string
---@param Param3 boolean
function FPXGCrowdMessage:Broadcast(Param1, Param2, Param3) end


---@class UPxgCrowdManagerComponent: UActorComponent
---@field TickFps number
---@field TimeHorizon number
---@field bFlipSegmentNormal boolean
---@field AvoidanceLocalPlanDestMinTime number
---@field ArriveWeight number
---@field AvoidLocalBoundaryWeight number
---@field PushedWeight number
---@field SeparationWeightFactor number
---@field SeparationWeights ULuaArrayHelper<FSteerWeightBySpeed>
---@field AlignmentWeights ULuaArrayHelper<FSteerWeightBySpeed>
---@field QueryNeighborIncludeFlags number
---@field InfMapCellSize number
---@field InfMapExtent FVector2D
---@field SegmentHPadLength number
---@field SegmentVPadLength number
---@field SegmentVRadius number
---@field bToggleCheckReachable boolean
---@field bIsPause boolean
---@field bCanRunSingleFrame boolean
---@field bPlayPrevBoundaryHitHistoryFrame boolean
---@field bPlayNextBoundaryHitHistoryFrame boolean
---@field bDrawNextHitBoundaryFrame boolean
---@field OADefaultWeightToi number
---@field OADefaultWeightSide number
---@field OADefaultHorizTime number
---@field bFindStraightPath boolean
---@field DistanceLimitForFindStraightPath number
---@field bCheckDistanceBeforeFindPath boolean
---@field bShouldInitCrowdManager boolean
local UPxgCrowdManagerComponent = {}

---@param loc FVector
---@param stopRadius number
---@return boolean
function UPxgCrowdManagerComponent:OrderAllAgentMoveTo(loc, stopRadius) end

function UPxgCrowdManagerComponent:SwitchIsDebugAgent() end

---@param InLocation FVector
---@param InRadius number
function UPxgCrowdManagerComponent:WatchNeartestAgent(InLocation, InRadius) end

---@param zoffset number
function UPxgCrowdManagerComponent:TestAgentLocationZOffset(zoffset) end
