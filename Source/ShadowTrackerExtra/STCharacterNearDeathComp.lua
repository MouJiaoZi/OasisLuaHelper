---@meta

---@class FNearDeathRestoredOrignalHealthStruct
---@field GameModeClass AUAEGameMode
---@field health number
---@field BreathDecreathRate number
FNearDeathRestoredOrignalHealthStruct = {}


---@class FDeathRevivalRecoverData
---@field bForceRescueSelf boolean
---@field bCanRescueSelfAlways boolean
---@field bRescueCannotBeInterrupt boolean
---@field bAutoRescueSelf boolean
---@field OverrideRescueSelfText string
---@field RescueSkillTemplateClass AUTSkill
FDeathRevivalRecoverData = {}


---@class FOnRescueCharacterSuccessWithRef : ULuaMulticastDelegate
FOnRescueCharacterSuccessWithRef = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRescueCharacterSuccessWithRef:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraBaseCharacter
function FOnRescueCharacterSuccessWithRef:Broadcast(SelfRef) end


---@class FOnDeathRevivalFinished : ULuaMulticastDelegate
FOnDeathRevivalFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathRevivalFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraBaseCharacter
function FOnDeathRevivalFinished:Broadcast(SelfRef) end


---@class FOnDeathRevivalEnd : ULuaMulticastDelegate
FOnDeathRevivalEnd = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathRevivalEnd:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraBaseCharacter
function FOnDeathRevivalEnd:Broadcast(SelfRef) end


---@class USTCharacterNearDeathComp: UActorComponent, IObjectPoolInterface
---@field NearDeath_Swim_AnimInstanceClass FSoftClassPath
---@field OnRescueSucceedWithRef FOnRescueCharacterSuccessWithRef
---@field DeadBuffName string
---@field PawnDownEnterAnimMaxTime number
---@field DisableMultiDirDBNOEnterPawnState ULuaArrayHelper<EPawnState>
---@field PawnDownEnterMoveDirScale number
---@field PawnHighFallingZVelocity number
---@field PawnHighFallingDetectHeight number
---@field BlockChannel ECollisionChannel
---@field PawnHighFallingDetectBoxHalfSize FVector
---@field DBNO_Enter_CustomMovementGameplayTag FGameplayTag
---@field DBNO_Enter_CustomMovementClassPath FSoftClassPath
---@field CacheDBNO_Enter_CustomMovement UCustomMovementBase
---@field BreathMax number
---@field AssistAccountableDuration number
---@field EnterNearDeathDamageInvincibleTime number
---@field RescuingDelayTime number
---@field RescueFinishPoseStateIfSwimming ESTEPoseState
---@field ShouldBroadcastTipsToHealthyTeammate boolean
---@field TipsIDToHealthTeammate number
---@field IsTurnOnDebugSameTeamAccountable boolean
---@field MaxDeathTimes number
---@field ZombieInitHealth number
---@field NearDeathAttrModifyNames ULuaArrayHelper<string>
---@field IsDirectlyDie boolean
---@field HealthStatusOnServer ECharacterHealthStatus
---@field LastHealthStatusOnServer ECharacterHealthStatus
---@field ActivityCountdownUIName string
---@field CachedActivityCountdownUIName string
---@field BreathReduceRate number
---@field NDExtraDecreaseRate number
---@field NDDecreaseRate number
---@field EnterNearDeathSeconds number
---@field bIsShowingSuicideButton boolean
---@field bIsThereEnemyInSurrounding boolean
---@field CheckEnemyInterval number
---@field CheckEnemyRadius number
---@field CheckEnemyNotifyDelayTime number
---@field CachedCheckEnemyInterval number
---@field Breath number
---@field UsePercentageRatherThanValue boolean
---@field NearDeathRestoredOrignalHealth number
---@field NearDeathRestoredOrignalBreathAmount number
---@field Percentage number
---@field SwitchWeaponDelayTime number
---@field SwitchWeaponDisabledStates ULuaArrayHelper<EPawnState>
---@field DamageEventRecorded any
---@field MinRecordDeDownTime number
---@field MaxRecordDeDownTDistance number
---@field BeDownCircleIndexInverse number
---@field bFatalDamageByFriendUnit boolean
---@field bAnybodyCanHelp boolean
---@field AnybodyCanHelpTags ULuaSetHelper<string>
---@field LastRescueFinishSuccessTime number
---@field bEnableDeathRevival boolean
---@field DeathRevivalText string
---@field DeathRevivalSkillTemplateClass AUTSkill
---@field bNeedSwitchPoseDeathRevivalFinish boolean
---@field DeathRevivalFinishPoseState ESTEPoseState
---@field bIsInDeathRevival boolean
---@field bDeathRevivalSucceed boolean
---@field DeathRevivalRecoverData FDeathRevivalRecoverData
---@field OnDeathRevivalFinishedEvent FOnDeathRevivalFinished
---@field OnDeathRevivalEndEvent FOnDeathRevivalEnd
local USTCharacterNearDeathComp = {}

---@param TempPawn APawn
function USTCharacterNearDeathComp:InitializeOwner(TempPawn) end

---@return boolean
function USTCharacterNearDeathComp:IsFinishedLastBreathStatus() end

---@return boolean
function USTCharacterNearDeathComp:IsHaveLastBreathStatus() end

---@return boolean
function USTCharacterNearDeathComp:IsHealthAlive() end

---@param AddVal number
---@param ForceIgnoreInvinceTime boolean
---@return number
function USTCharacterNearDeathComp:AddHealthSafety(AddVal, ForceIgnoreInvinceTime) end

function USTCharacterNearDeathComp:MakeSureOwnerEnterDeadState() end

---@param AddVal number
---@return number
function USTCharacterNearDeathComp:SetHealthSafety(AddVal) end

---@param HealthAddtive number
function USTCharacterNearDeathComp:RescueFinishSuccessfully(HealthAddtive) end

---@return number
function USTCharacterNearDeathComp:GetRestoredHealth() end

---@param HelpWho ACharacter
---@param IsTurnInfo boolean
---@param InReduceTime number
function USTCharacterNearDeathComp:S2C_HelpOther(HelpWho, IsTurnInfo, InReduceTime) end

---@param ByWho ACharacter
---@param IsTurnInfo boolean
---@param InReduceTime number
function USTCharacterNearDeathComp:S2C_BeHelpedByOther(ByWho, IsTurnInfo, InReduceTime) end

---@param IsTurnInfo boolean
---@param InReduceTime number
---@param AutoRescue boolean
---@param ServerTime number
function USTCharacterNearDeathComp:S2C_HelpSelf(IsTurnInfo, InReduceTime, AutoRescue, ServerTime) end

---@param CarryWho ACharacter
---@param IsTurnInfo boolean
function USTCharacterNearDeathComp:S2C_CarryOther(CarryWho, IsTurnInfo) end

---@param ByWho ACharacter
---@param IsTurnInfo boolean
function USTCharacterNearDeathComp:S2C_BeCarriedByOther(ByWho, IsTurnInfo) end

function USTCharacterNearDeathComp:SuicideWhenNearDeath() end

function USTCharacterNearDeathComp:SuicideWhenNearDeathServer() end

---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEvent FDamageEvent
---@param _finalDamage number
---@param IsDamageFromVehicleExplode boolean
---@return boolean
function USTCharacterNearDeathComp:TryGotoLastBreathOrZombie(EventInstigator, DamageCauser, DamageEvent, _finalDamage, IsDamageFromVehicleExplode) end

---@param _EventInstigator AController
---@param bIgnoreSelf boolean
---@return boolean
function USTCharacterNearDeathComp:TryGotoZombieStatus(_EventInstigator, bIgnoreSelf) end

function USTCharacterNearDeathComp:AddDeadBuff() end

---@return boolean
function USTCharacterNearDeathComp:IsNearDeathInvincible() end

---@param bIgnoreSelf boolean
function USTCharacterNearDeathComp:ClearNearDeathTeammateIfNeeded(bIgnoreSelf) end

---多方向倒地进入 ******************************
---@param EventInstigatorPawn AActor
---@param HitDownTime number
---@param bInVehicleHitDown boolean
function USTCharacterNearDeathComp:HandleHitDownDataCacheAndRep(EventInstigatorPawn, HitDownTime, bInVehicleHitDown) end

---@return boolean
function USTCharacterNearDeathComp:CanSwimWhenNearDeath() end

function USTCharacterNearDeathComp:EnterSwimWhileDying() end

---@param bIgnoreSelf boolean
---@param bIgnoreSelfRevival boolean
---@return boolean
function USTCharacterNearDeathComp:HasAnyTeamatesCanHelp(bIgnoreSelf, bIgnoreSelfRevival) end

---@param bIsDirectlyDie boolean
function USTCharacterNearDeathComp:SetIsDirectlyDie(bIsDirectlyDie) end

function USTCharacterNearDeathComp:ClientNotifySuicideHUD() end

function USTCharacterNearDeathComp:ManuallyNotifyHUD() end

---@param Character ASTExtraBaseCharacter
---@return boolean
function USTCharacterNearDeathComp:CanSuicide_BP(Character) end

---@param bShow boolean
function USTCharacterNearDeathComp:NotifySuicideHUD(bShow) end

---@param PlayerUID string
---@return number
function USTCharacterNearDeathComp:GetHealerDistance(PlayerUID) end

function USTCharacterNearDeathComp:SwitchWeaponAfterRescued() end

---@param State EPawnState
function USTCharacterNearDeathComp:HandlePawnOwnerStateChanged(State) end

---@param PrevStatus ECharacterHealthStatus
---@param NewStatus ECharacterHealthStatus
function USTCharacterNearDeathComp:HandleCharacterHealthStatusChanged(PrevStatus, NewStatus) end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function USTCharacterNearDeathComp:HandleCharacterMovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end

---@param Character ASTExtraBaseCharacter
function USTCharacterNearDeathComp:HandlePawnAnimInstanceChanged(Character) end

---@return boolean
function USTCharacterNearDeathComp:GetAnybodyCanHelp() end

---@return boolean
function USTCharacterNearDeathComp:HasAnybodyCanHelpTags() end

---@param InTag string
---@return boolean
function USTCharacterNearDeathComp:AddAnybodyCanHelpTag(InTag) end

---@param InTag string
---@return boolean
function USTCharacterNearDeathComp:RemoveAnybodyCanHelpTag(InTag) end

---@return boolean
function USTCharacterNearDeathComp:IsEnableDeathRevival() end

---@param InEnableDeathRevival boolean
function USTCharacterNearDeathComp:SetEnableDeathRevival(InEnableDeathRevival) end

function USTCharacterNearDeathComp:DidDeathRevival() end

function USTCharacterNearDeathComp:ClearDeathRevival() end

---@param Rescuer ASTExtraBaseCharacter
---@param TheRescued ASTExtraBaseCharacter
function USTCharacterNearDeathComp:OnDeathRevivalInterrupted(Rescuer, TheRescued) end

---@param bRescueOther boolean
---@param Rescuer ASTExtraBaseCharacter
---@param TheRescued ASTExtraBaseCharacter
function USTCharacterNearDeathComp:OnDeathRevivalEnd(bRescueOther, Rescuer, TheRescued) end

function USTCharacterNearDeathComp:OnDeathRevivalSucceed() end
