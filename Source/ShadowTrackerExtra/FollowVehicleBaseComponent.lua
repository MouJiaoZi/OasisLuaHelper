---@meta

---@class FVehicleFollowingInfo
---@field Following boolean
---@field VehicleFollowing ASTExtraVehicleBase
FVehicleFollowingInfo = {}


---@class FVehicleBeginFollowingAnotherVehicle : ULuaMulticastDelegate
FVehicleBeginFollowingAnotherVehicle = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase, VehicleToFollow: ASTExtraVehicleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleBeginFollowingAnotherVehicle:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
---@param VehicleToFollow ASTExtraVehicleBase
function FVehicleBeginFollowingAnotherVehicle:Broadcast(Vehicle, VehicleToFollow) end


---@class FVehicleEndFollowingAnotherVehicle : ULuaMulticastDelegate
FVehicleEndFollowingAnotherVehicle = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleEndFollowingAnotherVehicle:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
function FVehicleEndFollowingAnotherVehicle:Broadcast(Vehicle) end


---载具跟随组件
---@class UFollowVehicleBaseComponent: UVehicleComponent
---@field VehicleFollowingInfo FVehicleFollowingInfo
---@field DriverIndexAfterFollow number
---@field AIControllerClass AController
---@field FindCanFollowSphereRadius number
---@field FindCanFollowViewValidAngle number
---@field FindFollowVehicleCheckBoxExtend FVector
---@field CheckAutoCancelFollowInterval number
---@field MaxFollowDistance number
---@field TipsID_NotAllowFollow number
---@field TipsID_OtherVehicleDestroyed number
---@field TipsID_OwnerVehicleDestroyed number
---@field TipsID_CircleFollow number
---@field TipsID_OverDist number
---@field OnVehicleBeginFollowingAnotherVehicle FVehicleBeginFollowingAnotherVehicle
---@field OnVehicleEndFollowingAnotherVehicle FVehicleEndFollowingAnotherVehicle
---@field CheckAutoCancelFollowTimer number
local UFollowVehicleBaseComponent = {}

---@param InVehicle ASTExtraVehicleBase
function UFollowVehicleBaseComponent:ReqFollowOtherVehicle(InVehicle) end

function UFollowVehicleBaseComponent:ReqCancelFollowOtherVehicle() end

function UFollowVehicleBaseComponent:ForceCancelFollow() end

---@param InVehicle ASTExtraVehicleBase
function UFollowVehicleBaseComponent:SetVehicleFollowing(InVehicle) end

function UFollowVehicleBaseComponent:OnRep_VehicleFollowing() end

function UFollowVehicleBaseComponent:OnRep_VehicleFollowingBP() end

---@param DeltaTime number
---@return boolean
function UFollowVehicleBaseComponent:TickCheckShouldAutoCancelFollow(DeltaTime) end

---@return boolean
function UFollowVehicleBaseComponent:ShouldFollow() end

---@param InVehicle ASTExtraVehicleBase
---@param ShowTips boolean
---@return boolean
function UFollowVehicleBaseComponent:CheckCanFollowOtherVehicle(InVehicle, ShowTips) end

---@param InVehicle ASTExtraVehicleBase
---@param ShowTips boolean
---@return boolean
function UFollowVehicleBaseComponent:CheckCanFollowOtherVehicleBP(InVehicle, ShowTips) end

---@param Follow boolean
function UFollowVehicleBaseComponent:FollowVehicleChange_Server(Follow) end

---@param Follow boolean
function UFollowVehicleBaseComponent:FollowVehicleChange_Client(Follow) end

---@param Follow boolean
function UFollowVehicleBaseComponent:FollowVehicleChange_Both(Follow) end

---@return boolean
function UFollowVehicleBaseComponent:CheckCanCancelFollowOtherVehicle() end

---@param InVehicle ASTExtraVehicleBase
---@return number
function UFollowVehicleBaseComponent:GetVehicleDist(InVehicle) end

---@param DeltaTime number
function UFollowVehicleBaseComponent:TickFollowVehicle(DeltaTime) end

---@param InVehicle ASTExtraVehicleBase
---@return boolean
function UFollowVehicleBaseComponent:WillCircleFollow(InVehicle) end

---@param Start FVector
---@param End FVector
---@param HalfSize FVector
---@param Orientation FRotator
---@param DrawDebugType EDrawDebugTrace
---@param bHit boolean
---@param OutHit FHitResult
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime number
function UFollowVehicleBaseComponent:MulticastDrawDebugBoxSweep(Start, End, HalfSize, Orientation, DrawDebugType, bHit, OutHit, TraceColor, TraceHitColor, DrawTime) end

---@param DeltaTime number
function UFollowVehicleBaseComponent:OnVehicleUpdateFinish(DeltaTime) end

---@param DeltaTime number
function UFollowVehicleBaseComponent:FollowVehicleAfaterVehicleUpdate(DeltaTime) end
