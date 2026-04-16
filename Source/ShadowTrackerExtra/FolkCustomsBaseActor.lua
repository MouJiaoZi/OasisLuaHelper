---@meta

---@class FFolkCustomsPlayerConfig
---@field AnimSubSlotName string
---@field PlayerAnim UAnimInstance
---@field EnablePlayerAnimFollowDriver boolean
---@field bAttachToMesh boolean
---@field RelativeTransform FTransform
---@field PlayerAttachSocket string
---@field LeftHandAttachSocket string
---@field RightHandAttachSocket string
---@field PlayerHideBoneName string
---@field SyncAnimMontageList ULuaArrayHelper<UAnimMontage>
---@field AdditionalPoses ULuaArrayHelper<UAnimationAsset>
FFolkCustomsPlayerConfig = {}


---@class FFolkCustomsPlayerInfo
---@field PlayerUID string
---@field bIsMasterPlayer boolean
FFolkCustomsPlayerInfo = {}


---@class FFolkCustomsFrameRecord
---@field RoutePointList ULuaArrayHelper<FTransform>
FFolkCustomsFrameRecord = {}


---@class FFolkSimulateSnapshot
FFolkSimulateSnapshot = {}


---@class FFolkSimulateSmooth
---@field SmoothNetUpdateTime number
---@field SmoothNetUpdateRotationTime number
---@field bAllowForwardPredict boolean
---@field bSmoothLocation boolean
---@field bSmoothRotation boolean
---@field MaxDistanceCustomSmooth number
---@field MaxDistanceForwardPredict number
---@field MaxDeltaTime number
---@field MaxPredictTime number
---@field CurrentState FFolkSimulateSnapshot
---@field PredictState FFolkSimulateSnapshot
---@field ServerState FFolkSimulateSnapshot
---@field OriginState FFolkSimulateSnapshot
FFolkSimulateSmooth = {}


---@class FFolkCustomsPathRecord
---@field Position FVector
---@field Rotator FRotator
FFolkCustomsPathRecord = {}


---@class FFirstMoveDelegate : ULuaSingleDelegate
FFirstMoveDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFirstMoveDelegate:Bind(Callback, Obj) end

---执行委托
function FFirstMoveDelegate:Execute() end


---@class AFolkCustomsBaseActor: ACharacter, ISTExtraInputInterface
---@field RightInputData_Server number
---@field bUseControllerRotation boolean
---@field bMoveWhenHasForawdInput boolean
---@field ForwardInputRate_Min number
---@field ForwardInputRate_Max number
---@field ForwardInputRate number
---@field ForwardInputRateOrigin number
---@field RightInputRate_Min number
---@field RightInputRate_Max number
---@field RightInputRate number
---@field LastRightInputRate number
---@field UpInputRate number
---@field MaxFallSpeed number
---@field bHasMoveInput boolean
---@field bHasForwardInput boolean
---@field bHasRightInput boolean
---@field bHasUpInput boolean
---@field bHasMovedStart boolean
---@field FirstMoveEvent FFirstMoveDelegate
---@field FolkSimulateSmooth FFolkSimulateSmooth
---@field FinalDir FVector
---@field MoveDirectionSensitivity FVector
---@field MoveRotationSensitivity number
---@field RouteFrameCount number
---@field RouteFrameList ULuaArrayHelper<FFolkCustomsFrameRecord>
---@field MaxParticipatePlayerNum number
---@field CustomShowMovementMode EMovementMode
---@field ForbiddenPawnStateList ULuaArrayHelper<EPawnState>
---@field EnterShowClearPawnStateList ULuaArrayHelper<EPawnState>
---@field bIgnoreEmptyPlayerInfo boolean
---@field bIgnoreEmptyPlayerInfoClient boolean
---@field bNeedTickRefresh boolean
---@field bIgnoreMasterPlayerInfo boolean
---@field PlayerConfigList ULuaArrayHelper<FFolkCustomsPlayerConfig>
---@field MasterPlayer AActor
---@field PlayerInfoList ULuaArrayHelper<FFolkCustomsPlayerInfo>
---@field PlayerInfoList_Sync ULuaArrayHelper<FFolkCustomsPlayerInfo>
---@field ParticipatePlayerList ULuaArrayHelper<AActor>
---@field ParticipatePlayerList_LastRep ULuaArrayHelper<AActor>
---@field DragonSyncAnimMontageList ULuaArrayHelper<UAnimMontage>
---@field bEnableVoiceCheck boolean
---@field voiceCheckCD number
---@field voiceCheckShowCD number
---@field voiceCheckDis number
---@field voiceCheckLeaveTime number
---@field voiceCheckVector FVector
---@field voiceDelayTime number
---@field isInVoiceDelayTime boolean
---@field MaxRecordNum number
---@field RecordDeltaTime number
---@field MaxUpdateDelayTime number
---@field MinLocationStepDistance number
local AFolkCustomsBaseActor = {}

function AFolkCustomsBaseActor:OnRep_PlayerInfoList() end

function AFolkCustomsBaseActor:OnRep_PlayerInfoList_BP() end

---Move Input Start ***************************
---@param DeltaSeconds number
function AFolkCustomsBaseActor:UpdateMovementInput(DeltaSeconds) end

---@param DeltaSeconds number
function AFolkCustomsBaseActor:UpdateSimulatedRotation(DeltaSeconds) end

function AFolkCustomsBaseActor:EatMovementInput() end

---@param InTargetYaw number
function AFolkCustomsBaseActor:ServerUpdateRotation(InTargetYaw) end

---@param InRightInput number
function AFolkCustomsBaseActor:ServerUpdateRightInput(InRightInput) end

---@param rate number
function AFolkCustomsBaseActor:MoveForward_BP(rate) end

---@param rate number
function AFolkCustomsBaseActor:MoveRight_BP(rate) end

---@param rate number
function AFolkCustomsBaseActor:MoveUp_BP(rate) end

---@param DeltaSeconds number
---@param OldLocation FVector
---@param OldVelocity FVector
function AFolkCustomsBaseActor:OnCharacterMovementUpdatedDelegate(DeltaSeconds, OldLocation, OldVelocity) end

function AFolkCustomsBaseActor:OnRep_bHasMovedStart() end

---@param InTriggerController ASTExtraPlayerController
function AFolkCustomsBaseActor:TriggerPlayerEnterShow(InTriggerController) end

---@param InTriggerController ASTExtraPlayerController
function AFolkCustomsBaseActor:TriggerPlayerLeaveShow(InTriggerController) end

---@param InParticipatePlayer AActor
---@param PlayerController ASTExtraPlayerController
function AFolkCustomsBaseActor:EnterShow(InParticipatePlayer, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController ASTExtraPlayerController
---@return boolean
function AFolkCustomsBaseActor:CanEnterShow(InTargetChar, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController ASTExtraPlayerController
function AFolkCustomsBaseActor:PreCharEnterShow(InTargetChar, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController ASTExtraPlayerController
function AFolkCustomsBaseActor:DoEnterShow(InTargetChar, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController ASTExtraPlayerController
function AFolkCustomsBaseActor:PostCharEnterShow(InTargetChar, PlayerController) end

---@param InParticipatePlayer AActor
---@param PlayerController ASTExtraPlayerController
function AFolkCustomsBaseActor:LeaveShow(InParticipatePlayer, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController ASTExtraPlayerController
---@return boolean
function AFolkCustomsBaseActor:CanLeaveShow(InTargetChar, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController ASTExtraPlayerController
function AFolkCustomsBaseActor:PreCharLeaveShow(InTargetChar, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController ASTExtraPlayerController
function AFolkCustomsBaseActor:DoLeaveShow(InTargetChar, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController ASTExtraPlayerController
function AFolkCustomsBaseActor:PostCharLeaveShow(InTargetChar, PlayerController) end

---@return number
function AFolkCustomsBaseActor:GetFreePlayerConfigIndex() end

function AFolkCustomsBaseActor:HandleReplaceAnimInstances() end

function AFolkCustomsBaseActor:SyncShowAnim() end

function AFolkCustomsBaseActor:ServerCloseFolk_CPP() end

---@param delatTime number
function AFolkCustomsBaseActor:UpdateVoiceCheck(delatTime) end

function AFolkCustomsBaseActor:RequestServerMovePath() end

---@param DSMovePath ULuaArrayHelper<FFolkCustomsPathRecord>
---@param UpdateServerTime number
function AFolkCustomsBaseActor:UpdateClientMovePath(DSMovePath, UpdateServerTime) end

---@param DSMovePath ULuaArrayHelper<FFolkCustomsPathRecord>
---@param UpdateServerTime number
function AFolkCustomsBaseActor:UpdateClientMovePath_BP(DSMovePath, UpdateServerTime) end

---@param InIndex number
---@return boolean
function AFolkCustomsBaseActor:HasFillPlayer(InIndex) end

---@param InIndex number
---@return boolean
function AFolkCustomsBaseActor:HasMasterPlayer(InIndex) end

---@param InCharacter ASTExtraBaseCharacter
---@return number
function AFolkCustomsBaseActor:GetSeatIndex(InCharacter) end
