---@meta

---@class FFollowStatusChanged : ULuaMulticastDelegate
FFollowStatusChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bInFollowStatus: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFollowStatusChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param bInFollowStatus boolean
function FFollowStatusChanged:Broadcast(bInFollowStatus) end


---@class UAIFollowAction: UObject
local UAIFollowAction = {}


---@class UAIFollowAction_Idle: UAIFollowAction
local UAIFollowAction_Idle = {}


---@class UAIFollowAction_NavMoveTo: UAIFollowAction
local UAIFollowAction_NavMoveTo = {}


---AI跟随决策组件，用于军犬跟随
---@class UAIFollowDecisionComp: UActorComponent
---@field OnFollowStatusChanged FFollowStatusChanged
---@field TickFPS number
---@field UpdateAnalysisFPS number
---@field EyeLocationOffset FVector
---@field EyeHalfHorizontalAngles number
---@field EyeHalfVerticalAngle number
---@field bSmoothFollowPoint boolean
---@field SmoothFollowPointTime number
---@field SmoothExitDistance number
---@field StartLerpFactorFromFollowPointToFollowerLocation number
---@field NoChangeMoveActionNearToNavlink number @1.移动时是否重新寻路；2.是否触发急转向、快速转向
---@field MaxPIDExitDistance number
---@field MinPIDExitDurationTime number
---@field BlockedTimeLimit number
---@field PoseChangeDelayTime number
---@field AnalysisStopMoveTime number
---@field ForceIdle_DistanceToFollowLocation number @玩家持续小范围移动，但是跟随点没有变化，让军犬能进入Idle状态
---@field StartRootMotionConfig FWarDogStartRootMotionConfig @RootMotion配置
---@field StopRootMotionConfig FWarDogStopRootMotionConfig
---@field TurnRootMotionConfig FWarDogTurnRootMotionConfig
---@field FastTurnRootMotionConfig FWarDogFastTurnRootMotionConfig
---@field bDebugSingStepAction boolean
---@field bDebugEnterMoveTurn boolean
---@field bDebugEnterMoveTurnFail boolean
---@field bDebugExecMoveTurn boolean
---@field bDebugRootMotionPath boolean
---@field bPauseWhenVaulting boolean
---@field FilterClass UNavigationQueryFilter
local UAIFollowDecisionComp = {}

---开始跟随。初始化参数
---@param InOwnerCharacter ACharacter
---@param InOwnerPlayer ACharacter
---@param InFollowCharacter ACharacter
---@return boolean
function UAIFollowDecisionComp:StartFollowMode(InOwnerCharacter, InOwnerPlayer, InFollowCharacter) end

---停止跟随。清理参数
---@return boolean
function UAIFollowDecisionComp:StopFollowMode() end

---改变跟随玩家
---@param InFollowCharacter ACharacter
function UAIFollowDecisionComp:ChangeFollowPlayer(InFollowCharacter) end

---暂停跟随
---@return boolean
function UAIFollowDecisionComp:PauseFollowMode() end

---恢复跟随
---@return boolean
function UAIFollowDecisionComp:ResumeFollowMode() end

---设置警戒状态姿势类型
---@param InAlertPawnState EPawnState
function UAIFollowDecisionComp:SetAlertPawnState(InAlertPawnState) end

---立即更新姿态
function UAIFollowDecisionComp:SyncPoseImmediately() end

---设置强制姿势，忽略玩家姿势
---@param bInForceState boolean
---@param InForceState EPawnState
function UAIFollowDecisionComp:SetForcePoseState(bInForceState, InForceState) end

function UAIFollowDecisionComp:SwitchSingleTickStepMode() end

function UAIFollowDecisionComp:NotifyTickSingleStep() end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UAIFollowDecisionComp:OnMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end

---@param State EPawnState
function UAIFollowDecisionComp:HandlePawnOwnerStateChanged(State) end

---@param State EPawnState
function UAIFollowDecisionComp:OnPawnOwnerStateEnter(State) end

---@param PawnState EPawnState
function UAIFollowDecisionComp:OnFollowPoseChange(PawnState) end

---@param bForcePoseChange boolean
function UAIFollowDecisionComp:OnFollowForcePoseChange(bForcePoseChange) end

function UAIFollowDecisionComp:OnBeforeSetNextMoveSegment() end
