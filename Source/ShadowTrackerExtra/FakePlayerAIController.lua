---@meta

---@class EFakePlayerType
---@field DefaultFakePlayer number
---@field EscapeFakePlayer number
---@field LostTombFakePlayer number
EFakePlayerType = {}


---@class EBTTeleportFailedReason
---@field OTHER number @OTHER
---@field AI_IN_SPAWN_EQUIP_PROTECT_TIME number @AI_IN_SPAWN_EQUIP_PROTECT_TIME
---@field AI_PREYED_BY_PLAYER number @AI_PREYED_BY_PLAYER
---@field AI_PLAYERS_DIST_CHECK number @AI_PLAYERS_DIST_CHECK
---@field AI_DELIVERY_TARGET_DIST_CHECK number @AI_DELIVERY_TARGET_DIST_CHECK
---@field TARGET_POINT_PLAYERS_DIST_CHECK number @TARGET_POINT_PLAYERS_DIST_CHECK
---@field TARGET_POINT_IN_TELEPORT_FORBIDDEN_AREA number @TARGET_POINT_IN_TELEPORT_FORBIDDEN_AREA
---@field TARGET_POINT_IN_DELIVERY_FORBIDDEN_AREA number @TARGET_POINT_IN_DELIVERY_FORBIDDEN_AREA
---@field TARGET_POINT_IN_SPAWN_AREA number @TARGET_POINT_IN_SPAWN_AREA
---@field TARGET_POINT_HAS_PLAYER number @TARGET_POINT_HAS_PLAYER
---@field TOTAL_FAIL_REASON_CNT number @TOTAL_FAIL_REASON_CNT
EBTTeleportFailedReason = {}


---@class EBTUnsuitableDeliveryReason
---@field OTHER number @OTHER
---@field NO_DELIVER_TARGET number @NO_DELIVER_TARGET
---@field DELIVER_TARGET_OVER_SPEED number @DELIVER_TARGET_OVER_SPEED
---@field DELIVER_TARGET_IN_VEHICLE number @DELIVER_TARGET_IN_VEHICLE
---@field DELIVER_TARGET_IN_BATTLE number @DELIVER_TARGET_IN_BATTLE
---@field DELIVER_TARGET_UNHEALTH number @DELIVER_TARGET_UNHEALTH
---@field DELIVER_TARGET_SIGNAL_LIMIT number @DELIVER_TARGET_SIGNAL_LIMIT
---@field DELIVER_TARGET_NEARBY_DYING_TEAMMATE number @DELIVER_TARGET_NEARBY_DYING_TEAMMATE
---@field DELIVER_TARGET_NEARBY_ENEMY number @DELIVER_TARGET_NEARBY_ENEMY
---@field TOTAL_FAIL_REASON_CNT number @TOTAL_FAIL_REASON_CNT
EBTUnsuitableDeliveryReason = {}


---@class EDepositMLAIType
---@field Default number
---@field DEPOSIT_BY_TELEPORT number
---@field DEPOSIT_IN_SITU number
---@field GET_CLOSE_DELIVERY_TARGET number
---@field GET_CLOSE_TO_PLAYER number
---@field DEPOSIT_WHEN_BINDING number
---@field DEPOSIT_WHEN_BORN number
---@field DEPOSIT_WHEN_INFIGHTING number
---@field DEPOSIT_WHEN_SPAWN_AI number
---@field DEPOSIT_WHEN_TEAM_AI_SPAWN number
EDepositMLAIType = {}


---@class EAIEventType
---@field None number @NONE
---@field DeliveryBind number @投递绑定
---@field DeliverySuccess number @投递成功
---@field DeliveryFailed number @投递失败
---@field IsBlocked number @IS_BLOCKED
---@field DepositSuccess number @强化托管成功
---@field UnDeposit number @强化取消托管
EAIEventType = {}


---@class EAIBotType
---@field None number @NONE
---@field Delivery number @快递AI（单人/小队）
---@field BT number @行为树AI
---@field Player number @真人
---@field Partner number @AI队友
---@field Companion number @陪玩AI
EAIBotType = {}


---@class FFakePlayerControllerDelegate : ULuaSingleDelegate
FFakePlayerControllerDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFakePlayerControllerDelegate:Bind(Callback, Obj) end

---执行委托
function FFakePlayerControllerDelegate:Execute() end


---@class FOnAIHearSound : ULuaMulticastDelegate
FOnAIHearSound = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: FVector, Param3: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAIHearSound:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 FVector
---@param Param3 AActor
function FOnAIHearSound:Broadcast(Param1, Param2, Param3) end


---@class FOnAISenseBulletHole : ULuaMulticastDelegate
FOnAISenseBulletHole = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FBulletHitInfoUploadData, Param2: APawn) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAISenseBulletHole:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FBulletHitInfoUploadData
---@param Param2 APawn
function FOnAISenseBulletHole:Broadcast(Param1, Param2) end


---@class FRetrieveCurEnvRoadSpline : ULuaSingleDelegate
FRetrieveCurEnvRoadSpline = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: AController) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRetrieveCurEnvRoadSpline:Bind(Callback, Obj) end

---执行委托
---@param Param1 AController
function FRetrieveCurEnvRoadSpline:Execute(Param1) end


---@class FOnAICharacterDeadDelegate : ULuaMulticastDelegate
FOnAICharacterDeadDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAICharacterDeadDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
function FOnAICharacterDeadDelegate:Broadcast(Character) end


---@class FAIEnterRevivalStateDelegate : ULuaSingleDelegate
FAIEnterRevivalStateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAIEnterRevivalStateDelegate:Bind(Callback, Obj) end

---执行委托
function FAIEnterRevivalStateDelegate:Execute() end


---@class FAILeaveRevivalStateDelegate : ULuaSingleDelegate
FAILeaveRevivalStateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAILeaveRevivalStateDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FAILeaveRevivalStateDelegate:Execute(Param1) end


---@class FAIDelayPickupInitEquipFinished : ULuaSingleDelegate
FAIDelayPickupInitEquipFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAIDelayPickupInitEquipFinished:Bind(Callback, Obj) end

---执行委托
function FAIDelayPickupInitEquipFinished:Execute() end


---@class AFakePlayerAIController: ABaseAIController, IUAEOBHelperInterface
---@field bFilterSoundType boolean
---@field SoundTypes ULuaArrayHelper<ESoundType>
---@field CharacterClass ASTExtraBaseCharacter
---@field OnEnterJumping FFakePlayerControllerDelegate
---@field OnCharacterDeadDelegate FOnAICharacterDeadDelegate
---@field OnDelayPickupInitEquipFinishedDelegate FAIDelayPickupInitEquipFinished
---@field DeliveryTarget ASTExtraPlayerCharacter
---@field PreDeliveryTarget ASTExtraPlayerCharacter
---@field LastKillerKey number
---@field PlayerTeamId number
---@field TeamID number
---@field PlayerKey number
---@field PlayerUID number
---@field PlayerName string
---@field AIType number
---@field AIStyle number
---@field AICategory number
---@field AIIntent number
---@field Aggressiveness number
---@field DeployOperatorType number
---@field bSuperTeamAI boolean
---@field bMLAI boolean
---@field bMidDropMLAI boolean
---@field bInitMidDropMLAI boolean
---@field MidDropMLAIDepositDistance number
---@field MidDropMLAIFlowID number
---@field InitMidMLAIFlowID number
---@field bMidDropMLAITeleported boolean
---@field bMLTeamBehaviorGather boolean
---@field bIsTeamAIDeliver boolean
---@field bMLAIWeaponEquipRefreshed boolean
---@field PreyedPlayerKey number
---@field bUseDynamicNAV boolean
---@field bEnterFightingWhenTakingPlaneForMLAI boolean
---@field TeamLeaderBlackboardKey string
---@field BehaviorTreeIndexRunWhenFighting number @Fighting 时运行行为树索引
---@field DeliverTargetMaxSpeedLimit number
---@field CarRacingReplayAILevel number
---@field InitRandomSpawnEquipGroupSet ULuaArrayHelper<FAIEquipSpawnGroup>
---@field bGetEquipmentFromXls boolean
---@field MLAIAutoDepositPhase AI_Phase
---@field MLAIAutoUnDepositPhase AI_Phase
---@field MLAIContinuousHitsRandomRange FVector2D
---@field bUseDefaultDamageScale boolean
---@field DefaultDamageScale number
---@field bPartnerAI boolean
---@field bCompanionAI boolean
---@field bCanUseVehicleAsNavAgent boolean
---@field bClampModifiersRareLevel boolean
---@field EquipModifiersMaxRareLevel number
---@field FakePlayerAIControllerPossess FFakePlayerAIControllerPossess
---@field FakePlayerAIControllerUnPossess FFakePlayerAIControllerPossess
---@field bUseAIDynamicDamageBasedAILevelConfig boolean
---@field bUseAIMobaHeroBasedAILevelConfig boolean
---@field FakePlayerType EFakePlayerType
---@field bUseAIAttackMonsterFixedHitRate boolean
---@field AIAttackMonsterFixedHitRate number
---@field ModelStatNew FAiModelStatGen @新的采集逻辑
---@field DeliverySucceedDistance2DSquared number
---@field DeliverySucceedCheckInterval number
---@field DeliveryExpireTime number
local AFakePlayerAIController = {}

---@param Phase AI_Phase
function AFakePlayerAIController:HandleMessage(Phase) end

---@param NewRotation FRotator
function AFakePlayerAIController:BPSetControlRotation(NewRotation) end

---@param DeliverTargetPlayer ASTExtraPlayerCharacter
function AFakePlayerAIController:SetDeliverTarget(DeliverTargetPlayer) end

---@param PreDeliverTargetPlayer ASTExtraPlayerCharacter
function AFakePlayerAIController:SetPreDeliverTarget(PreDeliverTargetPlayer) end

function AFakePlayerAIController:PickupInitialItemListForRobustness() end

---@return FAIEquipSpawnGroup
function AFakePlayerAIController:GetInitRandomEquipGroup() end

function AFakePlayerAIController:OpenParachute() end

---@param Id number
---@param Count number
function AFakePlayerAIController:AddItem(Id, Count) end

---@param Id number
function AFakePlayerAIController:UseItem(Id) end

---@param Id number
function AFakePlayerAIController:DisuseItem(Id) end

---@param vehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
function AFakePlayerAIController:TryEnterVehicle(vehicle, SeatType) end

function AFakePlayerAIController:TryExitVehicle() end

---@param Leader ASTExtraPlayerCharacter
function AFakePlayerAIController:SetParachuteTeamLeader(Leader) end

function AFakePlayerAIController:ParachuteJump() end

---@param bInMLAI boolean
---@return boolean
function AFakePlayerAIController:ChangeToMachineLearningAI(bInMLAI) end

---@param bInMLAI boolean
function AFakePlayerAIController:ExpectToMachineLearningAI(bInMLAI) end

---@param InAILevel number
function AFakePlayerAIController:UpdateAILevel(InAILevel) end

---@param InAIStyle number
function AFakePlayerAIController:UpdateAIStyle(InAIStyle) end

---@param InAggressiveness number
function AFakePlayerAIController:UpdateAIAggressiveness(InAggressiveness) end

---@param InDeployOperatorType number
function AFakePlayerAIController:SetAIDeployOperatorType(InDeployOperatorType) end

---@param InAILevel number
---@param DepositDistance number
---@param InTargetUID number
---@param InFlowID number
function AFakePlayerAIController:ChangeToMiddleDropMLAI(InAILevel, DepositDistance, InTargetUID, InFlowID) end

---@param bGather boolean
function AFakePlayerAIController:SetMLTeamBehaviorGather(bGather) end

---@param bDestroyOld boolean
function AFakePlayerAIController:RefreshMLAIWeaponEquip(bDestroyOld) end

function AFakePlayerAIController:StopPartnerAI() end

---@return boolean
function AFakePlayerAIController:IsDriver() end

---@return number
function AFakePlayerAIController:GetMLAISurvivalTime() end

---@return number
function AFakePlayerAIController:GetRecordSecSincePlane() end

---@return boolean
function AFakePlayerAIController:IsAddEquipmentSafety() end

function AFakePlayerAIController:GetPlayerTeammates() end

function AFakePlayerAIController:GetSameInitMidMLAIFlowIDTeammates() end

function AFakePlayerAIController:GetMLAIStatisticKnockDownInfo() end

---@param VictimController AController
---@return boolean
function AFakePlayerAIController:IsMLAIKiller(VictimController) end

---@return boolean
function AFakePlayerAIController:IsInFightingPhase() end

---@return boolean
function AFakePlayerAIController:IsCarRacingReplayAI() end

---@param bEnable boolean
function AFakePlayerAIController:SetCanUseVehicleAsNavAgent(bEnable) end

---@param InPlayerName string
function AFakePlayerAIController:SetAIPlayerName(InPlayerName) end

---@param PreyController AController
function AFakePlayerAIController:PreyedByPlayer(PreyController) end

---@return boolean
function AFakePlayerAIController:IsDisguisedPlayer() end

---@param ItemID number
---@return boolean
function AFakePlayerAIController:CanAIPlayerDisguise(ItemID) end

---@return boolean
function AFakePlayerAIController:CanRevive() end

---@param Params FGameModeAIPlayerParams
function AFakePlayerAIController:ScriptInitWithPlayerParams(Params) end

---@param bAllocate boolean
function AFakePlayerAIController:RequestDepositMLAI(bAllocate) end

---@param AICharacter ASTExtraBaseCharacter
---@param InState EPawnState
function AFakePlayerAIController:OnAICharacterEnterState(AICharacter, InState) end

---@param AICharacter ASTExtraBaseCharacter
---@param InState EPawnState
function AFakePlayerAIController:OnAICharacterLeaveState(AICharacter, InState) end

---@param Type EDepositMLAIType
function AFakePlayerAIController:TryRequestDepositMLAI(Type) end

---@param Phase AI_Phase
function AFakePlayerAIController:ReceiveAIPhaseChange(Phase) end

function AFakePlayerAIController:GetMyObserverList() end

---@param EventType EAIEventType
---@param InPlayerUID number
function AFakePlayerAIController:EventRecordInReplay(EventType, InPlayerUID) end

function AFakePlayerAIController:ReportBattleResultToReplay() end
