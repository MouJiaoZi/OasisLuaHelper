---@meta

---@class FFolkCustomsPlayerInfo_LostTomb
---@field PlayerUID string
---@field bIsMasterPlayer boolean
FFolkCustomsPlayerInfo_LostTomb = {}


---@class FFolkPlayerConfig_LostTomb
---@field AnimSubSlotName string
---@field PlayerAnim UAnimInstance
---@field EnablePlayerAnimFollowDriver boolean
FFolkPlayerConfig_LostTomb = {}


---@class FFolkEmoteData_LostTomb
FFolkEmoteData_LostTomb = {}


---@class FNetEmoteData_LostTomb
---@field EmoteType ENetEmoteType
---@field EmoteID number
FNetEmoteData_LostTomb = {}


---@class FLostTombFolkMasterChange : ULuaSingleDelegate
FLostTombFolkMasterChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLostTombFolkMasterChange:Bind(Callback, Obj) end

---执行委托
function FLostTombFolkMasterChange:Execute() end


---@class ALostTomb_FolkActor: ACharacter, ISTExtraInputInterface, IRegionObjectInterface
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
---@field MoveRotationSensitivity number
---@field bHasMovedStart boolean
---@field FirstMoveEvent FFirstMoveDelegate
---@field FolkSimulateSmooth FFolkSimulateSmooth
---@field MaxParticipatePlayerNum number
---@field CustomShowMovementMode EMovementMode
---@field ForbiddenPawnStateList ULuaArrayHelper<EPawnState>
---@field EnterShowClearPawnStateList ULuaArrayHelper<EPawnState>
---@field bIgnoreEmptyPlayerInfo boolean
---@field bIgnoreEmptyPlayerInfoClient boolean
---@field bNeedTickRefresh boolean
---@field bIgnoreMasterPlayerInfo boolean
---@field EnterDynamicPawnState FGameplayTag
---@field PlayerConfigMaster FFolkPlayerConfig_LostTomb
---@field PlayerConfigPassenger FFolkPlayerConfig_LostTomb
---@field MasterPlayer AActor
---@field ControlPlayer AActor
---@field PlayerInfoList ULuaArrayHelper<FFolkCustomsPlayerInfo_LostTomb>
---@field PlayerInfoList_Sync ULuaArrayHelper<FFolkCustomsPlayerInfo_LostTomb>
---@field ParticipatePlayerList ULuaArrayHelper<AActor>
---@field ParticipatePlayerList_LastRep ULuaArrayHelper<AActor>
---@field DragonSyncAnimMontageList ULuaArrayHelper<UAnimMontage>
---@field bEnableVoiceCheck boolean
---@field VoiceCheckCD number
---@field VoiceCheckShowCD number
---@field VoiceCheckDis number
---@field VoiceCheckLeaveTime number
---@field VoiceCheckVector FVector
---@field VoiceDelayTime number
---@field IsInVoiceDelayTime boolean
---@field PlayerPosDiff number
---@field PlayerRecordNum number
---@field AvoidPullAngle number
---@field TerrainTraceStart number
---@field TerrainTraceEnd number
---@field IgnoreTag string
---@field bDrawDebugLocation boolean
---@field RepFolkLocationManager FLostTomb_FolkLocationManager
---@field PlayerRotationLerpSpeed number
---@field EmoteBPIDToAnimHandleMap ULuaMapHelper<number, UBackpackEmoteHandle>
---@field EmoteData FFolkEmoteData_LostTomb
---@field NetEmoteData FNetEmoteData_LostTomb
---@field EmoteList ULuaArrayHelper<number>
---@field PlayEmoteCD number
---@field bStopPlayEmote boolean
---@field bDelayDestroy boolean
---@field LostTombFolkMasterChangeEvent FLostTombFolkMasterChange
---@field bEnableAddOtherFolkActor boolean
---@field AddOtherFolkActorDistance number
---@field AddOtherFolkCheckInterval number
local ALostTomb_FolkActor = {}

function ALostTomb_FolkActor:OnRep_PlayerInfoList() end

function ALostTomb_FolkActor:OnRep_PlayerInfoList_BP() end

---Move Input Start ***************************
---@param DeltaSeconds number
function ALostTomb_FolkActor:UpdateMovementInput(DeltaSeconds) end

---@param DeltaSeconds number
function ALostTomb_FolkActor:UpdateSimulatedRotation(DeltaSeconds) end

function ALostTomb_FolkActor:EatMovementInput() end

---@param Rate number
function ALostTomb_FolkActor:MoveForward_BP(Rate) end

---@param Rate number
function ALostTomb_FolkActor:MoveRight_BP(Rate) end

---@param Rate number
function ALostTomb_FolkActor:MoveUp_BP(Rate) end

---@param DeltaSeconds number
---@param OldLocation FVector
---@param OldVelocity FVector
function ALostTomb_FolkActor:OnCharacterMovementUpdatedDelegate(DeltaSeconds, OldLocation, OldVelocity) end

function ALostTomb_FolkActor:OnRep_bHasMovedStart() end

---@param InputX number
---@param InputY number
function ALostTomb_FolkActor:SetAutonomousInput(InputX, InputY) end

---@param InTriggerController AController
function ALostTomb_FolkActor:TriggerPlayerEnterShow(InTriggerController) end

---@param InTriggerController AController
function ALostTomb_FolkActor:TriggerPlayerEnterFront(InTriggerController) end

---@param InTargetChar ASTExtraBaseCharacter
function ALostTomb_FolkActor:TryLeaveCharacter(InTargetChar) end

---@param InTriggerController AController
function ALostTomb_FolkActor:TriggerPlayerLeaveShow(InTriggerController) end

---@param InParticipatePlayer AActor
---@param PlayerController AController
function ALostTomb_FolkActor:EnterShow(InParticipatePlayer, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController AController
---@return boolean
function ALostTomb_FolkActor:CanEnterShow(InTargetChar, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController AController
function ALostTomb_FolkActor:PreCharEnterShow(InTargetChar, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController AController
function ALostTomb_FolkActor:DoEnterShow(InTargetChar, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController AController
function ALostTomb_FolkActor:PostCharEnterShow(InTargetChar, PlayerController) end

---@param InParticipatePlayer AActor
---@param PlayerController AController
---@param bOffset boolean
function ALostTomb_FolkActor:LeaveShow(InParticipatePlayer, PlayerController, bOffset) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController AController
---@return boolean
function ALostTomb_FolkActor:CanLeaveShow(InTargetChar, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController AController
function ALostTomb_FolkActor:PreCharLeaveShow(InTargetChar, PlayerController) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController AController
---@param bOffset boolean
function ALostTomb_FolkActor:DoLeaveShow(InTargetChar, PlayerController, bOffset) end

---@param InTargetChar ASTExtraBaseCharacter
---@param PlayerController AController
function ALostTomb_FolkActor:PostCharLeaveShow(InTargetChar, PlayerController) end

---@return number
function ALostTomb_FolkActor:GetFreePlayerConfigIndex() end

function ALostTomb_FolkActor:HandleReplaceAnimInstances() end

function ALostTomb_FolkActor:SyncShowAnim() end

function ALostTomb_FolkActor:ServerCloseFolk_CPP() end

---@param InIndex number
---@return boolean
function ALostTomb_FolkActor:HasFillPlayer(InIndex) end

---@param InIndex number
---@return boolean
function ALostTomb_FolkActor:HasMasterPlayer(InIndex) end

---@param InCharacter ASTExtraBaseCharacter
---@return number
function ALostTomb_FolkActor:GetSeatIndex(InCharacter) end

---@param Index number
---@return FFolkPlayerConfig_LostTomb
function ALostTomb_FolkActor:GetPlayerConfig(Index) end

---@param DelatTime number
function ALostTomb_FolkActor:UpdateVoiceCheck(DelatTime) end

function ALostTomb_FolkActor:OnRep_FolkLocationManager() end

---@param Index number
---@param OutLocation FVector
---@return boolean
function ALostTomb_FolkActor:GetIndexLocation(Index, OutLocation) end

---@return boolean
function ALostTomb_FolkActor:IsPlayingEmote() end

---@param EmoteID number
---@return boolean
function ALostTomb_FolkActor:StartPlayEmoteAnim(EmoteID) end

function ALostTomb_FolkActor:ReqEmotePlayFinished() end

function ALostTomb_FolkActor:LuaReqEmotePlayFinished() end

---@param BaseCharacter ASTExtraBaseCharacter
function ALostTomb_FolkActor:PlayerStopEmote(BaseCharacter) end

function ALostTomb_FolkActor:OnRep_NetEmoteData() end

---@param EmoteID number
---@return boolean
function ALostTomb_FolkActor:PlayEmoteIsValid(EmoteID) end

---@param EmoteID number
function ALostTomb_FolkActor:AutonomousPlayEmote(EmoteID) end

---@param EmoteID number
function ALostTomb_FolkActor:ServerPlayEmote(EmoteID) end

---@param bEnter boolean
function ALostTomb_FolkActor:BPOnPlayerActiveRegionsChanged(bEnter) end
