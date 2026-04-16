---@meta

---@class FCampCaptainDeadDamageEvent
FCampCaptainDeadDamageEvent = {}


---游戏伤害类型
---@class USTExtraDamageType: UDamageType, IDamageStatisticsInterface
---@field DamageAdditionalRateMap ULuaMapHelper<EDamageableGameObjectType, number>
---@field AdditionaAbsoluteDamageMap ULuaMapHelper<EDamageableGameObjectType, number>
---@field MomentumAbsoluteRateMap ULuaMapHelper<EDamageableGameObjectType, number>
---@field STExtraDamageType EDamageType
---@field DamageTag number
---@field bForceDamageTag boolean
---@field STExtraDamage number
---@field DamageTagName string
---@field Tags ULuaArrayHelper<string>
---@field bIgnoreArmorDamageReduce boolean
---@field bUseArmorDamageBreakthroughParam boolean
---@field DamageBreakthroughValue number
---@field DamageBreakthroughParam1 number
---@field DamageBreakthroughParam2 number
---@field STExtraDamageAdditionalParam number
---@field CustomDataMap ULuaMapHelper<string, string>
---@field bForceWeaponAttackFlow boolean
---@field isCanDamageSelf boolean
---@field DamageScaleOfSelf number
---@field isCanDamageTeammate boolean
---@field DamageScaleOfTeammate number
---@field bPlayCamersShake boolean
---@field bOverridePawnCameraShakeClass boolean
---@field CameraShakeClass UCameraShake
---@field isCanOverrideDamageTeammateByMode boolean
---@field bDisplayDamageNum number
---@field bDisplayDamageNumFollowPawn number
---@field bDisplayFeedback_Head number
---@field bDisplayFeedback_Body number
---@field bDisplayFeedback_UpperLimbs number
---@field bDisplayFeedback_LowerLimbs number
---@field EnableRagdollTemporary boolean
---@field AddUpImpulseOnDeadBody boolean
---@field bUseNewKillInfoCaculate boolean
---@field bUseOnExtractDamageParam boolean
---@field KillTemplate string
---@field KillDownTemplate string
---@field FriendlyKillTemplate string
---@field FriendlyKillDownTemplate string
---@field DamageName string
---@field LocalCauserKillInfoTemplate string
---@field LocalVictimKillInfoTemplate string
---@field CauserTeammateKillInfoTemplate string
---@field VictimTeammateKillInfoTemplate string
---@field VictimerTlogStatisticsID number
---@field CauserTlogStatisticsID number
---@field bIsVictimerCaculateDamage boolean
---@field bIsCauserCaculateDamage boolean
local USTExtraDamageType = {}

---@param InAttacker AActor
function USTExtraDamageType:GetDamageAdditionalRateMap(InAttacker) end

---@param InAttacker AActor
function USTExtraDamageType:GetAdditionaAbsoluteDamageMap(InAttacker) end

---@param InAttacker AActor
function USTExtraDamageType:GetMomentumAbsoluteRateMap(InAttacker) end

---@param Causer AUAECharacter
---@param Victim AUAECharacter
---@param CauserInstigator AController
---@param NormalName string
---@return string
function USTExtraDamageType:GetCauserName(Causer, Victim, CauserInstigator, NormalName) end

---@param Causer AUAECharacter
---@param Victim AUAECharacter
---@param CauserInstigator AController
---@param NormalName string
---@return string
function USTExtraDamageType:GetVictimName(Causer, Victim, CauserInstigator, NormalName) end

---@param Data FClientFatalDamageRecordData
---@param Message FKillOrPutDownMessage
---@param bIsLocalCauser boolean
---@param bIsLocalVictim boolean
---@param bIsVictimTeammate boolean
---@param bIsCauserTeammate boolean
---@param bIsLocalKiller boolean
function USTExtraDamageType:GetKillOrPutDownMessageData(Data, Message, bIsLocalCauser, bIsLocalVictim, bIsVictimTeammate, bIsCauserTeammate, bIsLocalKiller) end

---@param Data FClientFatalDamageRecordData
---@param Message FKillOrPutDownMessage
---@param bIsLocalCauser boolean
---@param bIsLocalVictim boolean
---@param bIsVictimTeammate boolean
---@param bIsCauserTeammate boolean
---@param OutMessage FKillOrPutDownMessage
---@return boolean
function USTExtraDamageType:GetModifyKillDownInfo(Data, Message, bIsLocalCauser, bIsLocalVictim, bIsVictimTeammate, bIsCauserTeammate, OutMessage) end

---@param VictimName string
---@param DamageResult string
---@return string
function USTExtraDamageType:GetIsLocalCauser(VictimName, DamageResult) end

---@param CauserName string
---@param DamageResult string
---@return string
function USTExtraDamageType:GetIsLocalVictim(CauserName, DamageResult) end

---@param CauserName string
---@param VictimeName string
---@param DamageResult string
---@return string
function USTExtraDamageType:GetIsTeammateCauser(CauserName, VictimeName, DamageResult) end

---@param CauserName string
---@param VictimeName string
---@param DamageResult string
---@return string
function USTExtraDamageType:GetIsTeammateVictim(CauserName, VictimeName, DamageResult) end


---@class UCampCaptainDeadDamageType: USTExtraDamageType
local UCampCaptainDeadDamageType = {}


---宠物造成伤害类型，对于该类型的伤害，需要通过Instigator->GetInstigator()才能获取到主人的Character
---@class USTExtraDamageType_Pet: USTExtraDamageType
local USTExtraDamageType_Pet = {}
