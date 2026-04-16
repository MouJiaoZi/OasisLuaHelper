---@meta

---@class EWeaponsCompanionVoiceEvent
---@field Tick number @Tick更新
---@field FirstDead number @出现第一个死亡的玩家
---@field OnWeaponEquipOrUnEquip number @装备武器配件 or 卸下武器配件
---@field OnAddRuleActiveCount number @当激活此规则的武器增加时
---@field OnChangeUsingWeapon number @改变使用的武器
EWeaponsCompanionVoiceEvent = {}


---@class EWeaponsCompanionRuleVoiceType
---@field Play number @直接播放，不受战斗影响
---@field GiveUp number @战斗中放弃播放
---@field DelayPlay number @战斗中延迟播放
---@field PlayAndDelay number @战斗中播放先行语音，再延迟播放主语音
EWeaponsCompanionRuleVoiceType = {}


---@class FWeaponsCompanionVoiceRuleSet
---@field Rules ULuaSetHelper<UWeaponsCompanionVoiceRuleBase>
FWeaponsCompanionVoiceRuleSet = {}


---@class FWeaponsCompanionFightingDelayVoice
---@field RuleID number
---@field TeamVoice boolean
---@field VoicePack number
---@field VoiceScore number
---@field RuleScore number
---@field MaxEndTime number
FWeaponsCompanionFightingDelayVoice = {}


---@class FWeaponsCompanionDelayVoiceRecord
FWeaponsCompanionDelayVoiceRecord = {}


---@class UWeaponsCompanionVoiceComponent: UActorComponent
---@field WeaponDropTimes ULuaMapHelper<number, number>
---@field TeamPlayers ULuaArrayHelper<number>
---@field UsingWeaponID number
---@field CarryWeaponID ULuaMapHelper<number, ASTExtraWeapon>
---@field CarryWeapon_ID ULuaMapHelper<number, number>
---@field CarryWeaponEquipDelegate ULuaMapHelper<number, UWeaponsCompanionEquipDelegate>
---@field ActiveRules ULuaMapHelper<number, UWeaponsCompanionVoiceRule>
---@field EventMap ULuaMapHelper<number, FWeaponsCompanionVoiceRuleSet>
---@field ExcludeRules ULuaSetHelper<number>
---@field NeedActiveRules ULuaMapHelper<number, number>
---@field AsyncLoadIDs ULuaSetHelper<number>
---@field AsyncLoadSerialNumber number
---@field PlayedVoiceRules ULuaSetHelper<number>
---@field RulePlayVoiceTime ULuaMapHelper<number, number>
---@field DelayVoiceList ULuaArrayHelper<FWeaponsCompanionFightingDelayVoice>
---@field ErrorMessageSet ULuaSetHelper<string>
---@field PlayVoiceRecord ULuaMapHelper<number, number>
---@field DelayVoiceRecord ULuaArrayHelper<FWeaponsCompanionDelayVoiceRecord>
---@field DSReportTimer FTimerHandle
---@field FightingRules ULuaMapHelper<number, UWeaponsCompanionFightingRule>
---@field FightingExtendTime number
---@field FightingHold ULuaSetHelper<number>
---@field CheckErrorCountDown number
---@field CheckErrorCount number
---@field StopErrorCheck boolean
local UWeaponsCompanionVoiceComponent = {}

---@param gameModeComp UWeaponsCompanionGameModeComponent
---@param teamPlayerList ULuaArrayHelper<number>
function UWeaponsCompanionVoiceComponent:DSInit(gameModeComp, teamPlayerList) end

function UWeaponsCompanionVoiceComponent:ActiveStartFightingRules() end

---@param weapon ASTExtraWeapon
---@param playerController ASTExtraPlayerController
---@return number
function UWeaponsCompanionVoiceComponent:GetWeaponAbilityID(weapon, playerController) end

---@param eventType EWeaponsCompanionVoiceEvent
---@param eventParam UObject
function UWeaponsCompanionVoiceComponent:OnTriggerEvent(eventType, eventParam) end

---@param eventType EWeaponsCompanionVoiceEvent
---@param rule UWeaponsCompanionVoiceRuleBase
---@param eventParam UObject
function UWeaponsCompanionVoiceComponent:OnTriggerEventAlone(eventType, rule, eventParam) end

---@param eventType EWeaponsCompanionVoiceEvent
---@param rule UWeaponsCompanionVoiceRuleBase
function UWeaponsCompanionVoiceComponent:AddEventListener(eventType, rule) end

---@param eventType EWeaponsCompanionVoiceEvent
---@param rule UWeaponsCompanionVoiceRuleBase
function UWeaponsCompanionVoiceComponent:RemoveEventListener(eventType, rule) end

---@param rule UWeaponsCompanionVoiceRule
function UWeaponsCompanionVoiceComponent:PlayRuleVoice(rule) end

---@param rule UWeaponsCompanionVoiceRule
---@param forever boolean
function UWeaponsCompanionVoiceComponent:RemoveRule(rule, forever) end

---@param del UWeaponsCompanionEquipDelegate
function UWeaponsCompanionVoiceComponent:OnWeaponEquipOrUnEuip(del) end

---@param play boolean
function UWeaponsCompanionVoiceComponent:OnPlayVoiceSwitchChange(play) end

---@param errorMessage string
function UWeaponsCompanionVoiceComponent:ReportErrorMessage(errorMessage) end

function UWeaponsCompanionVoiceComponent:GetDebugInfo() end

---@param extendEndTime number
function UWeaponsCompanionVoiceComponent:ExtendFightingTime(extendEndTime) end

---@param fightingRuleID number
---@param holdEnable boolean
function UWeaponsCompanionVoiceComponent:FightingHoldChange(fightingRuleID, holdEnable) end

function UWeaponsCompanionVoiceComponent:RefreshAbility() end

function UWeaponsCompanionVoiceComponent:ProbabilityFightingSample() end

---@param pawn APawn
function UWeaponsCompanionVoiceComponent:OnPlayerControllerPossess(pawn) end

---@param character ASTExtraBaseCharacter
function UWeaponsCompanionVoiceComponent:OnPlayerControllerRepCharacter(character) end

function UWeaponsCompanionVoiceComponent:OnPlayerControllerPawnChange() end

---@param propSlot ESurviveWeaponPropSlot
function UWeaponsCompanionVoiceComponent:OnChangeCurrentUsingWeapon(propSlot) end

---@param propSlot ESurviveWeaponPropSlot
function UWeaponsCompanionVoiceComponent:OnChangeInventoryData(propSlot) end

---@param newWeaponManager UWeaponManagerComponent
function UWeaponsCompanionVoiceComponent:SetWeaponManager(newWeaponManager) end

function UWeaponsCompanionVoiceComponent:TickWeapon() end

---@param WeaponID number
function UWeaponsCompanionVoiceComponent:SetUsingWeapon(WeaponID) end

---@param propSlot ESurviveWeaponPropSlot
---@param weapon ASTExtraWeapon
function UWeaponsCompanionVoiceComponent:SetCarryWeapon(propSlot, weapon) end

---@param oldWeaponID number
---@param newWeaponID number
---@param isUsing boolean
function UWeaponsCompanionVoiceComponent:OnWeaponChange(oldWeaponID, newWeaponID, isUsing) end

---@param WeaponID number
function UWeaponsCompanionVoiceComponent:GetStartFightingRules(WeaponID) end

---@param WeaponID number
---@param usingRule boolean
function UWeaponsCompanionVoiceComponent:GetWeaponRules(WeaponID, usingRule) end

---@param WeaponID number
---@param rulesKey string
function UWeaponsCompanionVoiceComponent:GetWeaponRulesByKey(WeaponID, rulesKey) end

---@param ruleID number
---@param rulePath FSoftObjectPath
---@return boolean
function UWeaponsCompanionVoiceComponent:GetRulePath(ruleID, rulePath) end

---@param ruleID number
---@param loadRules ULuaMapHelper<number, number>
---@param loadResList ULuaArrayHelper<FSoftObjectPath>
---@param weaponAbilityID number
function UWeaponsCompanionVoiceComponent:CheckAddRule(ruleID, loadRules, loadResList, weaponAbilityID) end

---@param loadRules ULuaMapHelper<number, number>
---@param loadResList ULuaArrayHelper<FSoftObjectPath>
function UWeaponsCompanionVoiceComponent:LoadRules(loadRules, loadResList) end

---@param rules ULuaMapHelper<number, number>
---@param asyncLoadID number
function UWeaponsCompanionVoiceComponent:OnAsyncLoadRules(rules, asyncLoadID) end

---@param rule UWeaponsCompanionVoiceRule
---@param count number
function UWeaponsCompanionVoiceComponent:RefreshRuleActiveCount(rule, count) end

---@param deltaTime number
function UWeaponsCompanionVoiceComponent:TickCheckError(deltaTime) end

---@param ruleID number
function UWeaponsCompanionVoiceComponent:RecordPlayVoice(ruleID) end

---@param ruleID number
---@param successPlay boolean
---@param timeLeft number
function UWeaponsCompanionVoiceComponent:RecordDelayVoice(ruleID, successPlay, timeLeft) end

---@param newState string
function UWeaponsCompanionVoiceComponent:OnGameStateChange(newState) end

function UWeaponsCompanionVoiceComponent:DSEndReport() end

---@param playerController APlayerController
function UWeaponsCompanionVoiceComponent:OnPlayerRealExit(playerController) end

---@param rule UWeaponsCompanionVoiceRule
---@param selfPlayerController ASTExtraPlayerController
---@return number
function UWeaponsCompanionVoiceComponent:GetVoiceScore(rule, selfPlayerController) end

---@param voicePack number
---@return number
function UWeaponsCompanionVoiceComponent:RandomVoiceIndex(voicePack) end

---@param teamVoice boolean
---@param voicePack number
---@param randomIndex number
---@param score number
---@param ruleScore number
function UWeaponsCompanionVoiceComponent:SendPlayVoice(teamVoice, voicePack, randomIndex, score, ruleScore) end

---@param deltaTime number
function UWeaponsCompanionVoiceComponent:TickDelayVoice(deltaTime) end

function UWeaponsCompanionVoiceComponent:InitFightingRules() end

---@param rules ULuaMapHelper<number, FSoftObjectPath>
function UWeaponsCompanionVoiceComponent:OnAsyncLoadFightingRules(rules) end

---@param ruleID number
---@param fightingRuleClass UClass
function UWeaponsCompanionVoiceComponent:CreateFightingRule(ruleID, fightingRuleClass) end

function UWeaponsCompanionVoiceComponent:TickFightingValue() end

function UWeaponsCompanionVoiceComponent:RefreshFightingValue() end

function UWeaponsCompanionVoiceComponent:OnReplaceSuitSkin() end
