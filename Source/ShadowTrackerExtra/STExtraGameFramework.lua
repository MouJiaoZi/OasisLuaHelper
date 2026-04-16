---@meta

---@class FOnGameModeDamageModify : ULuaSingleDelegate
FOnGameModeDamageModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, InDamage: number, DamageEvent: FDamageEvent, EventInstigator: AController, VictimController: AController, DamageCauser: AActor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameModeDamageModify:Bind(Callback, Obj) end

---执行委托
---@param InDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param VictimController AController
---@param DamageCauser AActor
function FOnGameModeDamageModify:Execute(InDamage, DamageEvent, EventInstigator, VictimController, DamageCauser) end


---@class ASTExtraGameFramework: AUAEGameMode
---@field PickupItemLimitInfoCollection FPickupItemLimitInfoCollection
---@field bIsOpenShovelingAbility boolean
---@field bIsAllowCloseShovelingAbility boolean
---@field bEnableDamage boolean
---@field bColllectWeaponInfo boolean
---@field bNPCKillConcerned boolean
---@field DebugGameModeID string
---@field DebugClientModeID number
---@field DebugSubModeGroup number
---@field bDisableAnticheatLog boolean
---@field bIsMatchGoalAchieved boolean
---@field bQuitGameIsNotEscape boolean
---@field bCanEnterAgain boolean
---@field GameModeAcConfig FGameAntiCheatConfig @游戏模式反外挂配置 用于针对模式打开相应的策略，避免部分针对个别玩法的策略被扩大到所有模式
---@field GameModeProfileName string
---@field OnGameModeDamageModifyDelegate FOnGameModeDamageModify
---@field OnGameModeVehicleDamageModifyDelegate FOnGameModeDamageModify
---@field CurGameModeState string
---@field WorldLoadedType number
---@field bSupportLuaExtension boolean
---@field LuaTickFreq number
---@field DynamicFeatureConfigs ULuaArrayHelper<FDynamicFeatureConfig>
---@field bSupportLuaLoginErrorMessage boolean
---@field bIsCreateSyncOBActor boolean
local ASTExtraGameFramework = {}

---@param PlayerKey number
---@param PlayerType string
---@param Result number
---@param ItemID number
---@param Count number
function ASTExtraGameFramework:ModifyGlideCountResponse(PlayerKey, PlayerType, Result, ItemID, Count) end

---@param PlayerKey number
---@param PlayerType string
---@param Result number
---@param ItemID number
---@param Count number
function ASTExtraGameFramework:ModifyDecalDyeCountResponse(PlayerKey, PlayerType, Result, ItemID, Count) end

---@param PlayerKey number
---@param PlayerType string
---@param Result number
---@param ItemID number
---@param Count number
function ASTExtraGameFramework:ModifySpecMotionRestCostCountResponse(PlayerKey, PlayerType, Result, ItemID, Count) end

---@param Killer AController
---@param VictimPlayer AController
---@param DamageType UDamageType
function ASTExtraGameFramework:OnKillHappened(Killer, VictimPlayer, DamageType) end

function ASTExtraGameFramework:CreateGameModeComponents() end

---@param InSubSystemId ESubSystemType
---@param NewComp UActorComponent
---@param bAddToRoot boolean
function ASTExtraGameFramework:RegisterComponentInternal(InSubSystemId, NewComp, bAddToRoot) end

---@param DynamicCompClass UClass
---@param AEPlayerController AUAEPlayerController
---@param bIsServerOnly boolean
---@param bUseStableCompName boolean
function ASTExtraGameFramework:CreateDynamicComponentForPlayerController_Internal(DynamicCompClass, AEPlayerController, bIsServerOnly, bUseStableCompName) end

---@param DynamicCompClass UClass
---@param AECharacter AUAECharacter
---@param bIsServerOnly boolean
---@param bUseStableCompName boolean
function ASTExtraGameFramework:CreateDynamicComponentForCharacter_Internal(DynamicCompClass, AECharacter, bIsServerOnly, bUseStableCompName) end

function ASTExtraGameFramework:ReleaseGameModeComponents() end

---@param InSubSystemId ESubSystemType
function ASTExtraGameFramework:CreateDynamicGameModeComponent(InSubSystemId) end

---@param TargetGameModeState string
function ASTExtraGameFramework:ChangeStateGM(TargetGameModeState) end

function ASTExtraGameFramework:OnGameModeStateChange() end

function ASTExtraGameFramework:DSForceEnterFinishState() end

---@param Deltatime number
function ASTExtraGameFramework:TickCheckAIStats(Deltatime) end

---@param ReportType string
---@param ReportSubType string
---@param ReportKeyWords string
---@param ReportKeyWordsCount number
---@param bReplace boolean
---@param StatType number
function ASTExtraGameFramework:OnAddStringMsgToTLog(ReportType, ReportSubType, ReportKeyWords, ReportKeyWordsCount, bReplace, StatType) end

function ASTExtraGameFramework:OnReportStringMsgToTLog() end

function ASTExtraGameFramework:OnBeginRecording() end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param VictimController AController
---@param DamageCauser AActor
---@param VictimActor AActor
---@param ExtraResult FExtraDamageCalculationResult
---@return number
function ASTExtraGameFramework:ModifyFinalDamage(Damage, DamageEvent, EventInstigator, VictimController, DamageCauser, VictimActor, ExtraResult) end

---@param RecoverValue number
---@param CauserInstigator AController
---@param TargetController AController
---@param RecoveryCauser AActor
---@param TargetActor AActor
---@param ExtraRecoverTags ULuaArrayHelper<FGameplayTag>
---@param ExtraResult FExtraDamageCalculationResult
---@return number
function ASTExtraGameFramework:ModifyFinalRecoverHealth(RecoverValue, CauserInstigator, TargetController, RecoveryCauser, TargetActor, ExtraRecoverTags, ExtraResult) end

---@param PlayerKey number
---@param OutReport ULuaArrayHelper<FWeaponUseReport>
---@return boolean
function ASTExtraGameFramework:GetPlayerWeaponUseReport(PlayerKey, OutReport) end

---允许GameMode约束某些物品的拾取
---@param InTargetItem FItemDefineID
---@param InTargetBackpack UBackpackComponent
---@param InTargetPickupCount number
---@param OutLimitedItemCount number
---@return boolean
function ASTExtraGameFramework:CheckPickupItemLimitedCount(InTargetItem, InTargetBackpack, InTargetPickupCount, OutLimitedItemCount) end

---@param Index number
---@param MaxCount number
function ASTExtraGameFramework:SetPickupItemListLimitedCount(Index, MaxCount) end

---@param Index number
---@param MaxCount number
function ASTExtraGameFramework:SetPickupItemLimitedCount(Index, MaxCount) end

---@param Index number
function ASTExtraGameFramework:RemovePickupItemLimitedCount(Index) end

---@param InSubSystemConfig UGMSubSystemBase
function ASTExtraGameFramework:RemoveUnuseComponent(InSubSystemConfig) end

---@param TargetGameModeState string
---@return boolean
function ASTExtraGameFramework:IsInState(TargetGameModeState) end

---@param NewPlayer UPlayer
---@param InRemoteRole ENetRole
---@param Portal string
---@param Options string
---@param UniqueId FUniqueNetIdRepl
---@param ErrorMessage string
---@return string
function ASTExtraGameFramework:LuaLogin(NewPlayer, InRemoteRole, Portal, Options, UniqueId, ErrorMessage) end

---@param NewPlayer APlayerController
function ASTExtraGameFramework:LuaPostLogin(NewPlayer) end

---@param Exiting APlayerController
function ASTExtraGameFramework:LuaOnPlayerRealExit(Exiting) end

---@param NewPlayer AFakePlayerAIController
function ASTExtraGameFramework:LuaPostAILogin(NewPlayer) end

function ASTExtraGameFramework:LuaTick() end

---@param Killer AController
---@param Victimer AController
---@param VictimPawn APawn
---@param DamageType number
---@param DamageEvent FDamageEvent
function ASTExtraGameFramework:LuaKilled(Killer, Victimer, VictimPawn, DamageType, DamageEvent) end

---@param Damage number
---@param DamageType number
---@param InstigatorPlayerState ASTExtraPlayerState
---@param VictimPlayerState ASTExtraPlayerState
---@return number
function ASTExtraGameFramework:LuaModifyDamage(Damage, DamageType, InstigatorPlayerState, VictimPlayerState) end

---@param PlayerController APlayerController
function ASTExtraGameFramework:ModifyTeamID(PlayerController) end

---@param DamageInstigator AController
---@param VictimPawn APawn
function ASTExtraGameFramework:LuaGotoNearDeath(DamageInstigator, VictimPawn) end

---@param PlayerKey number
---@param AIController AFakePlayerAIController
function ASTExtraGameFramework:HandleNetWorkOnAIAdd(PlayerKey, AIController) end
