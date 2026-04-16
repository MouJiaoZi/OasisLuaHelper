---@meta

---@class FVehicleRepSnapshot
---@field Timestamp number
---@field Location FVector_NetQuantize
---@field Rotation FRotator
---@field LinearVelocity FVector_NetQuantize
---@field AngularVelocity FVector_NetQuantize
---@field IsTeleport boolean
FVehicleRepSnapshot = {}


---@class FVehicleSimulateSyncSmooth
---@field MaxPredictMoveTime number
---@field MaxMoveDeltaTime number
---@field SmoothNetUpdateTime number
---@field SmoothNetUpdateRotationTime number
---@field SmoothingClientTimeStamp number
---@field SmoothingServerTimeStamp number
---@field ServerState any
---@field LastReceiveStateTimestamp number
---@field PredictState any
---@field CurrentState any
---@field CurrentPredictTime number
---@field bInitialized boolean
---@field LastCorrectionTime number
---@field bNetworkSmoothingComplete boolean
---@field bHasDriver boolean
FVehicleSimulateSyncSmooth = {}


---@class FOnSimulateSyncSmoothCompPreReplicate : ULuaSingleDelegate
FOnSimulateSyncSmoothCompPreReplicate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimulateSyncSmoothCompPreReplicate:Bind(Callback, Obj) end

---执行委托
function FOnSimulateSyncSmoothCompPreReplicate:Execute() end


---@class FOnActorTeleportFinish : ULuaSingleDelegate
FOnActorTeleportFinish = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActorTeleportFinish:Bind(Callback, Obj) end

---执行委托
function FOnActorTeleportFinish:Execute() end


---@class FOnVehicleRepSnapshot : ULuaSingleDelegate
FOnVehicleRepSnapshot = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVehicleRepSnapshot:Bind(Callback, Obj) end

---执行委托
function FOnVehicleRepSnapshot:Execute() end


---@class FOnVehicleSmoothTick : ULuaMulticastDelegate
FOnVehicleSmoothTick = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeltaTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVehicleSmoothTick:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeltaTime number
function FOnVehicleSmoothTick:Broadcast(DeltaTime) end


---@class USTExtraSyncSmoothMovementComponent: UActorComponent
---@field RepSnapshot any
---@field Snapshot any
---@field TolerateLocationDiffSqAtServer number
---@field TolerateRotationInDegreeAtServer number
---@field TolerateLinearVelocityDiffSqAtServer number
---@field TolerateAngularVelocityDiffSqAtServer number
---@field ForceUpdateLocationDiffSqAtServer number
---@field ForceUpdateLinearVelocityDiffSqAtServer number
---@field FindFloorUpOffset number
---@field FindFloorDownOffset number
---@field CapsuleHalfHeight number
---@field bUseFindFloor boolean
---@field CurrentDeviceLevel number
---@field FindFloorDeviceLevel number
---@field bForceRepSnapshot boolean
---@field OnSnapshotPreReplicate FOnSimulateSyncSmoothCompPreReplicate
---@field bHasDriver boolean
---@field bEnable boolean @True: Enable this component. This will be forced to be false when it is used in a "ASTExtraSimpleCharacter" Actor and the "bSimulateMovementByCharacterMovementComponentOnClient" of the "ASTExtraSimpleCharacter" is true.
---@field SimulateSyncSmooth FVehicleSimulateSyncSmooth
---@field bOpenDebugDraw boolean
---@field bOpenServerForceUpdate boolean
---@field bNoPredict boolean
---@field bOnlyUpdateRotation boolean
---@field bAutonomousProxyEnable boolean
---@field bIsReplayRecording boolean
---@field OnActorTeleportFinish FOnActorTeleportFinish
---@field OnVehicleRepSnapshot FOnVehicleRepSnapshot
---@field OnVehicleSmoothTick FOnVehicleSmoothTick
---@field bEnableTurnAnimationNew boolean
---@field FlipTurnRightFlag boolean
---@field MoveMaxSpeedWhenTuring number
---@field bAutoUpdateVelocity boolean @ǷActorٶԶٶ
---@field TurnThreshold number
---@field TurnSpeed number
local USTExtraSyncSmoothMovementComponent = {}

---@param Velocity FVector
function USTExtraSyncSmoothMovementComponent:SetVelocity(Velocity) end

---@return FVector
function USTExtraSyncSmoothMovementComponent:GetVelocity() end

---@param PitchSpeed number
---@param YawSpeed number
---@param RollSpeed number
function USTExtraSyncSmoothMovementComponent:SetAngularVelocity(PitchSpeed, YawSpeed, RollSpeed) end

function USTExtraSyncSmoothMovementComponent:TeleportNextSync() end

---@param bInEnable boolean
---@param bForceReinit boolean
function USTExtraSyncSmoothMovementComponent:SetEnable(bInEnable, bForceReinit) end

function USTExtraSyncSmoothMovementComponent:OnRep_Snapshot() end

function USTExtraSyncSmoothMovementComponent:StopPredict() end

---@param InLocation FVector
---@return FVector
function USTExtraSyncSmoothMovementComponent:FindFloor(InLocation) end

---@param NewLoc FVector
---@param NewRot FRotator
---@param NewVel FVector
function USTExtraSyncSmoothMovementComponent:UpdateCurrentState(NewLoc, NewRot, NewVel) end

---@param NewLoc FVector
---@param NewRot FRotator
function USTExtraSyncSmoothMovementComponent:UpdateCurrentTransform(NewLoc, NewRot) end

---@param NewLoc FVector
---@param NewRot FRotator
function USTExtraSyncSmoothMovementComponent:UpdatePredictTransform(NewLoc, NewRot) end
