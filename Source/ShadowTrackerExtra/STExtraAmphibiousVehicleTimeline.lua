---@meta

---@class FOnFlyStateChanged : ULuaMulticastDelegate
FOnFlyStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsFly: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFlyStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsFly boolean
function FOnFlyStateChanged:Broadcast(IsFly) end


---@class ASTExtraAmphibiousVehicleTimeline: ASTExtraAmphibiousVehicle
---@field OnFlyStateChangedDelegate FOnFlyStateChanged
---@field BP_PhysFreezed boolean
---@field BP_CanShowEnterButton boolean
---@field InFlyState boolean
---@field FlyVelocity number
---@field StopFlyVelocity number
---@field StartFlayStateTimestamp number
---@field StartCheckStopFlyTime number
---@field MaxLiftHeight number
---@field MinLiftHeight number
---@field LiftSpeedFactor number
---@field CurLiftHeight number
---@field AutoWakeUpDistance number
---@field bAutoWakeUpNeedHavePassager boolean
---@field IgnoreLessTheVelocity boolean
---@field TheVelocity number
---@field EnableMoveWheelVelocticyCheck boolean
---@field MoveWheelVelocticyCheckThreshold number
---@field OpenRuningStateCheck boolean
---@field HighSpeedState boolean
---@field SwitchStateCDTime number
---@field CurSwitchStateCDTimeLeft number
---@field CantSwitchStateTips number
local ASTExtraAmphibiousVehicleTimeline = {}

function ASTExtraAmphibiousVehicleTimeline:BPTryCheckSimulatePhysics() end

---@param InEnterDistance number
---@param IsSq boolean
function ASTExtraAmphibiousVehicleTimeline:SetEnterDistanceSq(InEnterDistance, IsSq) end

---@return number
function ASTExtraAmphibiousVehicleTimeline:GetEnterDistanceSq() end

---@param DeltaTime number
function ASTExtraAmphibiousVehicleTimeline:BP_TickEnterSphere(DeltaTime) end

function ASTExtraAmphibiousVehicleTimeline:BP_RecordValidTransform() end

---@param Enabled boolean
function ASTExtraAmphibiousVehicleTimeline:SetServerPrecentPenetratingEnabled(Enabled) end

---@param bIsPropagateFromParent boolean
function ASTExtraAmphibiousVehicleTimeline:ForceUpdateChildTransforms(bIsPropagateFromParent) end

---@param CurController ASTExtraPlayerController
---@param IsEnter boolean
function ASTExtraAmphibiousVehicleTimeline:CallOnPlayerEnterOrLeaveFlyingVehicle(CurController, IsEnter) end

---@param IsEnter boolean
function ASTExtraAmphibiousVehicleTimeline:BPCallOnPlayerEnterOrLeaveFlyingVehicle(IsEnter) end

function ASTExtraAmphibiousVehicleTimeline:OnRep_InFlyState() end

function ASTExtraAmphibiousVehicleTimeline:StartFlyState() end

---@return boolean
function ASTExtraAmphibiousVehicleTimeline:CanStopFlyState() end

---@param DeltaSeconds number
function ASTExtraAmphibiousVehicleTimeline:MoveWheelHeight(DeltaSeconds) end

---@param DeltaSeconds number
---@param Target number
---@param Factor number
function ASTExtraAmphibiousVehicleTimeline:MoveWheelHeightWithFactor(DeltaSeconds, Target, Factor) end

function ASTExtraAmphibiousVehicleTimeline:CheckAutoWakeUp() end

function ASTExtraAmphibiousVehicleTimeline:OnRep_HighSpeedState() end

---@param NewState boolean
function ASTExtraAmphibiousVehicleTimeline:ReqSwitchEnginePowerState(NewState) end

---@param idx number
---@return FVector
function ASTExtraAmphibiousVehicleTimeline:GetWheelOffset(idx) end

---@param InState boolean
function ASTExtraAmphibiousVehicleTimeline:SetHighSpeedState(InState) end
