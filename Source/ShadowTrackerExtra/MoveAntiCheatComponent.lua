---@meta

---暂停反外挂的标签 理论上移动状态不会同时处于两个需要暂停反外挂的情况 如果有需要的话在这里定义即可
---@class EMoveAntiCheatPauseFlag
---@field EMACPF_Default number
---@field EMACPF_MAX number
EMoveAntiCheatPauseFlag = {}


---@class FMoveCheatAntiStrategy
---@field bIsOpen number
---@field bIsOpenDeltailLog number
---@field bIsForbidServerCallPing2Client number
---@field MaxAllowClientSideTimeLag number
---@field CheckTimeSpeedIntervel number
---@field MaxAllowCheatMoveTimes number
---@field MaxMoveDistanceScaleFactor number
---@field MaxPublishForbidMoveTime number
---@field ServerSendPingIntervel number
---@field MaxMoveSpeedValue number
---@field MaxSpeedSplitNum number
---@field MaxContinuousCheatMoveTimes number
---@field MaxAllowDelaySecondsRecvPingFromClient number
---@field MaxAllowDelaySecondsRecvMovePacketFromClient number
---@field bIsOpenNoPingPublish number
---@field MaxAllowNoPingTimes number
---@field NoPingPulishForbidMoveTime number
---@field bPunishVeirfyLost boolean @是否处罚长期未Verify的情况
---@field VerifyLostPunishTime number @长期未Verify触发时的处罚时间
---@field AllowNoVerifyTime number @允许的没有Verify的时间长度
FMoveCheatAntiStrategy = {}


---@class FStrategy6MoveVector
FStrategy6MoveVector = {}


---@class FMoveCheatAntiStrategy6
---@field bIsOpen number
---@field MaxAllowCheatMoveTimes number
---@field MaxPublishForbidMoveTime number
---@field MaxVectorAccAngel number
---@field MaxSumVectorLength number
---@field MaxVectorAccTime number
---@field MaxMoveDeltaTime number
FMoveCheatAntiStrategy6 = {}


---@class FClientTimeAccChecker
FClientTimeAccChecker = {}


---@class FMoveCheatAntiStrategy7
---@field bIsOpen number
---@field MaxAllowClientSideTimeLag number
---@field CheckTimeSpeedIntervel number
---@field MaxAllowCheatMoveTimes number
---@field MaxMoveDistanceScaleFactor number
---@field MaxPublishForbidMoveTime number
---@field MaxMoveSpeedValue number
---@field MaxSpeedSplitNum number
FMoveCheatAntiStrategy7 = {}


---@class FMoveCheatCheckPlayerStuck
---@field StuckTime number
FMoveCheatCheckPlayerStuck = {}


---@class FMoveCheatCheckPlayerStuck2
---@field MaxServerMoveCount number
---@field MaxStuckDistance number
FMoveCheatCheckPlayerStuck2 = {}


---@class FMoveCheatAntiStrategy2
---@field bIsOpen number
---@field CheckTimeSpeedIntervel number
---@field MaxAllowCheatMoveTimes number
---@field MaxMoveDistanceScaleFactor number
---@field MaxPublishForbidMoveTime number
---@field MaxMoveSpeedValue number
---@field MaxSpeedSplitNum number
FMoveCheatAntiStrategy2 = {}


---@class FNewMoveCheatAntiStrategy
---@field bIsOpen number
---@field CheckTimeSpeedIntervel number
---@field MaxAllowCheatMoveTimes number
---@field MaxMoveDistanceScaleFactor number
---@field MaxPublishForbidMoveTime number
---@field ServerMaxSpeed number
FNewMoveCheatAntiStrategy = {}


---@class FMoveInputState
FMoveInputState = {}


---客户端的校验配置信息
---@class FClientVerifyInfos
FClientVerifyInfos = {}


---@class FCheckMoveInputStateUseSixteenDir
---@field MaxAllowCheatMoveTimes number
---@field CheckCountInterval number
FCheckMoveInputStateUseSixteenDir = {}


---@class FCheckMoveSpeedUpFromMovementComp
---@field MaxAllowCheatMoveTimes number
---@field MaxLogTimes number
---@field MaxVerificationTimeInSeconds number
---@field MaxClientSideTimeLagInSeconds number
---@field MaxClientAndServerVelocityDiff number
---@field MaxClientAndServerLocationDiff number
---@field MaxMoveDistanceScaleFactor number
---@field MinCheckTimeIntervalWhenExceedMaxTimes number
FCheckMoveSpeedUpFromMovementComp = {}


---@class FCheckMapMaxHeight
FCheckMapMaxHeight = {}


---@class UMoveAntiCheatComponent: UActorComponent
---@field bUseMoveAntiCheatCheck number
---@field MinMoveAntiCheatCheckIntervel number
---@field MaxCheatTimes number
---@field TolerateDistanceFractor number
---@field MaxPacketLossRate number
---@field MinDistanceSqAtStaticColliderCheck number
---@field MaxTotalMoveCheatTimes number
---@field MaxTotalPassWallTimes number
---@field MinMoveAntiCheatCheckIntervel2 number
---@field bIsForceAdjustZWhenExceed boolean @是否开启基于Falling的高跳策略的处罚
---@field MaxMoveAntiCheatCheatSpeedTimes number
---@field MoveCheatAntiStrategy3 FMoveCheatAntiStrategy
---@field MoveCheatAntiStrategy4 FMoveCheatAntiStrategy2
---@field MoveCheatAntiStrategy6 FMoveCheatAntiStrategy6
---@field MoveCheatAntiStrategy7 FMoveCheatAntiStrategy7
---@field ClientTimeAccChecker FClientTimeAccChecker
---@field MoveCheatAntiPlayerStuck FMoveCheatCheckPlayerStuck
---@field MoveCheatAntiPlayerStuck2 FMoveCheatCheckPlayerStuck2
---@field CheckMoveInputState FCheckMoveInputStateUseSixteenDir
---@field CheckSpeedUpFromMoveComp FCheckMoveSpeedUpFromMovementComp
---@field CharacterJumpLimitor FJumpLimitor @跳跃高度限制器
---@field CharaFallMonitor FFallingMonitor @监控玩家的浮空高度是否合理
---@field CharaFlyMonitor FFlyingMonitor @监控玩家的Fly过程是否合理
---@field CharaCustomMoveMonitor FCustomMoveMonitor @监控Custom移动过程
---@field TimeMonitor FTimeMonitor @时间监控策略
---@field RelSpeedInspector FRelSpeedInspector @相对速度计算
---@field SrvMoveLimitor FServerMoveLimitor @服务端移动监控
---@field HighDelayDrop FHighDelayDrop @高延迟监控
---@field ShovelAntiCheat FShovelAntiCheat @滑铲反外挂
---@field MaxJumpHeight number @玩家最大可以到达的跳跃高度
---@field MaxHeightMap ULuaMapHelper<number, number> @key：子模式 ，value：子模式人物z轴最大高度
---@field CharaVaultMonitor FVaultMonitor @CG024 攀爬距离校验
---@field MoveDeltaMonitor FMoveDeltaMonitor @CG25 DeltaTime监控
---@field ServerTrustClientMonitor FServerTrustClientMonitor @CG25 DS信任客户端距离监控
---@field TimeStampMonitor FTimeStampMonitor @CG26 移动包时间戳监控
local UMoveAntiCheatComponent = {}

function UMoveAntiCheatComponent:OnPreReconnectOnServer() end

---@param Start FVector
---@param End FVector
function UMoveAntiCheatComponent:DebugDrawLine(Start, End) end

---@param ServerTime FMc3IndexInfo
function UMoveAntiCheatComponent:Ping2Client(ServerTime) end

---@param ClientInfo FMc3ClientInfo
function UMoveAntiCheatComponent:Ping2Server(ClientInfo) end

---@param InShovelData FShovelInfo
function UMoveAntiCheatComponent:SendShovelDataToServer(InShovelData) end

---@param InClientVerifyInfo FClientVerifyInfos
function UMoveAntiCheatComponent:SendClientVerifyInfo(InClientVerifyInfo) end

---向客户端发送强制拉扯
---@param InForceAdjust FForceAdjustInf
function UMoveAntiCheatComponent:SendForceAdjust(InForceAdjust) end

---移动模式发生变更
---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UMoveAntiCheatComponent:OnMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end

---实际执行了移动
---@param DeltaTime number
---@param OldLocation FVector
---@param OldVelocity FVector
function UMoveAntiCheatComponent:OnCharacterMovementUpdated(DeltaTime, OldLocation, OldVelocity) end

---DECLARE_DYNAMIC_MULTICAST_DELEGATE_OneParam(FOnSkillStartDelegate, int32, SkillUID); DECLARE_DYNAMIC_MULTICAST_DELEGATE_ThreeParams(FOnSkillFinishedDelegate, UTSkillStopReason, StopReason, int32, SkillID, bool, HasThrownGrenade);
---@param InSkillUID number
function UMoveAntiCheatComponent:OnSkillStartDel(InSkillUID) end

---@param InStopReason UTSkillStopReason
---@param SkillID number
---@param HasThrownGrenade boolean
function UMoveAntiCheatComponent:OnSkillFinishedDel(InStopReason, SkillID, HasThrownGrenade) end

---@param Start FVector
---@param End FVector
---@param TraceChannel ECollisionChannel
---@param OutHit FHitResult
---@param bSweep boolean
---@param SphereRadius number
---@param PadLength number
---@return boolean
function UMoveAntiCheatComponent:K2_MoveSweepTest(Start, End, TraceChannel, OutHit, bSweep, SphereRadius, PadLength) end

---刷新用于反外挂的最大跳跃高度
function UMoveAntiCheatComponent:RefreshRealMaxJumpHeight() end

---暂停移动反外挂
---@param InFlag EMoveAntiCheatPauseFlag
function UMoveAntiCheatComponent:OnPauseMoveAntiCheat(InFlag) end

---恢复移动反外挂
---@param InFlag EMoveAntiCheatPauseFlag
function UMoveAntiCheatComponent:OnResumeMoveAntiCheat(InFlag) end

---CG26 Custom信任移动模式重置时间戳
---@param OldTimeStamp number
function UMoveAntiCheatComponent:OnResetTimeStampCustomMove(OldTimeStamp) end

---返回最近是否做过相关操作
---@param MaxInterval number
---@return boolean
function UMoveAntiCheatComponent:IsLaunchRecently(MaxInterval) end

---判断当前State是否需要进行校验
---@param InGameState ASTExtraGameStateBase
---@return boolean
function UMoveAntiCheatComponent:IsGameModeStateNeedCheck(InGameState) end
