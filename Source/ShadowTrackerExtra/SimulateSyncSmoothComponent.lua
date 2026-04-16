---@meta

---@class FRepSnapshot
---@field Rotation FRotator
---@field LinearVelocity FVector
---@field AngularVelocity FVector
---@field ToleranceYaw number
FRepSnapshot = {}


---@class FRepSnapshot_Location
---@field Location FVector
---@field LocationQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated location vector. You should only need to change this from the default if you see visual artifacts.
FRepSnapshot_Location = {}


---@class FSmoothParamsBySpeed
---@field Speed number
---@field LinearDeltaThresholdSq number
---@field SmoothNetUpdateLocationTime number
---@field SmoothNetUpdateRotationTime number
---@field MaxPredictMoveTime number
FSmoothParamsBySpeed = {}


---@class FSimulateSyncSmooth
---@field MaxPredictMoveTime number
---@field AngularDeltaThreshold number
---@field AngularInterpAlpha number
---@field AngularRecipFixTime number
---@field LinearDeltaThresholdSq number
---@field LinearInterpAlpha number
---@field LinearRecipFixTime number
---@field SpeedThresholdSq number
---@field MaxMoveDeltaTime number
---@field SmoothNetUpdateTime number
---@field SmoothNetUpdateRotationTime number
---@field FindFloorTraceChannel ECollisionChannel
---@field FindFloorQueryMobilityType EOverrideQueryMobilityType
---@field FindFloorIgnoreCollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field FindFloorInterval number
---@field FindFloorTraceZUp number
---@field FindFloorTraceZDown number
---@field FindFloorMaxAllowDiffZ number
---@field bFindFloorWhenSmoothInterpolate boolean
---@field bFindFloorTraceUseLastZ boolean
---@field bDragLocationJudgeUseCorrectZ boolean
---@field bDragLocationFindFloor boolean
---@field SmoothParams ULuaArrayHelper<FSmoothParamsBySpeed>
---@field DisableRotationThreshold number
---@field bGetInterpVelocityWhenStopMove boolean @移动速度太快突然停下来会滑步 这里在DS停止移动但是客户端在插值时模拟一个速度值供动作表现使用
---@field InterpVelocityWhenStopMoveLimit number @移动速度太小时动作会播放很慢 为了避免最后的慢动作设定速度最小值
FSimulateSyncSmooth = {}


---@class FOnNetRecvNewSanpshotDelegate : ULuaMulticastDelegate
FOnNetRecvNewSanpshotDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldState: FRepSnapshot, NewState: FRepSnapshot) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNetRecvNewSanpshotDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldState FRepSnapshot
---@param NewState FRepSnapshot
function FOnNetRecvNewSanpshotDelegate:Broadcast(OldState, NewState) end


---@class USimulateSyncSmoothComponent: UActorComponent, IObjectPoolInterface
---@field RepSnapshot any
---@field Snapshot_Timestamp number
---@field Snapshot_Location FRepSnapshot_Location
---@field RepMovement any
---@field Snapshot any
---@field TolerateLocationDiffSqAtServer number
---@field TolerateRotationInDegreeAtServer number
---@field TolerateLinearVelocityDiffSqAtServer number
---@field TolerateAngularVelocityDiffSqAtServer number
---@field TolerateRotationYawAtReplication number
---@field bShouldForceRepWhenIdle boolean
---@field SimulateSyncSmooth FSimulateSyncSmooth
---@field bOpenDebugDraw boolean
---@field bAutonomousProxyEnable boolean
---@field bEnableTurnAnimation boolean
---@field FlipTurnRightFlag boolean
---@field TurnThreshold number
---@field TurnSpeed number
---@field bClientComputeMoveSpeed boolean @客户端计算Owner的移动速度，以便动画表现更加平滑
---@field LastUpdateLocation FVector
---@field LastUpdateRotation FQuat
local USimulateSyncSmoothComponent = {}

---@param Velocity FVector
function USimulateSyncSmoothComponent:SetVelocity(Velocity) end

---@param ClearVelocity boolean
function USimulateSyncSmoothComponent:ForceUpdate(ClearVelocity) end

---@return FVector
function USimulateSyncSmoothComponent:GetVelocity() end

---@param PitchSpeed number
---@param YawSpeed number
---@param RollSpeed number
function USimulateSyncSmoothComponent:SetAngularVelocity(PitchSpeed, YawSpeed, RollSpeed) end

function USimulateSyncSmoothComponent:OnRep_Snapshot() end

function USimulateSyncSmoothComponent:OnRep_Movement() end

---@param InEnabled boolean
function USimulateSyncSmoothComponent:SetEnabled(InEnabled) end
