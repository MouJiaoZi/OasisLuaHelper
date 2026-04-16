---@meta

---@class EClientReplayFeature
---@field DeathReplay number
---@field ClientCompleteReplay number
EClientReplayFeature = {}


---@class EClientCompleteReplayModeType
---@field Unkonwn number
---@field Classic number
---@field Escape number
EClientCompleteReplayModeType = {}


---@class EDeathReplayRecordEventType
---@field Default number
---@field ApplyDamage number
---@field TakeDamage number
EDeathReplayRecordEventType = {}


---@class FRecordDeathReplayEventInfo
---@field Time number
---@field EventType EDeathReplayRecordEventType
---@field CauserUID number
---@field CauserName string
---@field VictimUID number
---@field VictimName string
---@field DamageType EDamageType
---@field Damage number
---@field DamagePositionType EAvatarDamagePosition
---@field bFallDown boolean
---@field bKill boolean
---@field Distance number
---@field ReduceDurability number
---@field bBreakArmor boolean
---@field SkillID number
---@field DamageItemID number
---@field AmmoID number
FRecordDeathReplayEventInfo = {}


---@class FVictimWeaponItemInfo
---@field WeaponDefineID FItemDefineID
---@field AttachmentIDs ULuaArrayHelper<number>
---@field bIsCurrentWeapon boolean
FVictimWeaponItemInfo = {}


---@class FVictimWeaponInfo
---@field WeaponList ULuaArrayHelper<FVictimWeaponItemInfo>
FVictimWeaponInfo = {}


---@class FOnPrePlayDeathReplay : ULuaSingleDelegate
FOnPrePlayDeathReplay = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPrePlayDeathReplay:Bind(Callback, Obj) end

---执行委托
function FOnPrePlayDeathReplay:Execute() end


---@class FOnReceivedDamageEventInfo : ULuaSingleDelegate
FOnReceivedDamageEventInfo = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReceivedDamageEventInfo:Bind(Callback, Obj) end

---执行委托
function FOnReceivedDamageEventInfo:Execute() end


---@class UClientGamePlayback: UFilebasedPlayback, ILuaInterface
---@field bDeathPlaybackEnable boolean
---@field bClientCompleteReplayEnable boolean
---@field CachedVictimWeaponInfoMap ULuaMapHelper<number, FVictimWeaponInfo>
---@field FirstSeePlayerTimeMap ULuaMapHelper<string, number>
---@field EnabledGameModeWhiteList ULuaArrayHelper<string>
---@field EnabledGameModeBlackList ULuaArrayHelper<string>
---@field PlaybackTimeBeforeDeath number
---@field PlaybackTimeBeforeDeathForAI number
---@field MinValidRecordLenthRequired number
---@field DeathToStopRecordTime number
---@field CompleteReplayOverrideCheckpointInterval number
---@field DeathReplayOverrideCheckpointInterval number
---@field bBadNetworkWhileRecording boolean
---@field ClientReceivedEvents ULuaArrayHelper<FRecordDeathReplayEventInfo>
---@field MaxDamageEventCount number
---@field MaxDamgeEventAgeSeconds number
---@field OnReceivedDamageEventInfoDelegate FOnReceivedDamageEventInfo
---@field PrePlayDeathReplayDelegate FOnPrePlayDeathReplay
---@field CachedBattleData ULuaArrayHelper<number>
---@field CachedRecordModeType EClientCompleteReplayModeType
---@field ClientReplayFeatures ULuaArrayHelper<EClientReplayFeature>
---@field BoundWeaponEventCharacters ULuaSetHelper<ASTExtraBaseCharacter>
local UClientGamePlayback = {}

---@return string
function UClientGamePlayback:GetLuaModule() end

---@return boolean
function UClientGamePlayback:IsSwitchedOffByDevice() end

---@param bEnable boolean
function UClientGamePlayback:EnableDeathPlayback(bEnable) end

---@param bEnable boolean
function UClientGamePlayback:SetClientCompleteReplayRecordEnable(bEnable) end

function UClientGamePlayback:OnPlayerControllerReconnected() end

---@return boolean
function UClientGamePlayback:IsInRecordingDeathReplay() end

---@return boolean
function UClientGamePlayback:IsInRecordingClientCompleteReplay() end

---@return boolean
function UClientGamePlayback:IsInPlayingDeathReplay() end

---@return boolean
function UClientGamePlayback:IsInPlayingClientCompleteReplay() end

---@return boolean
function UClientGamePlayback:PlayReplayFromFile() end

---@return boolean
function UClientGamePlayback:PlayReplayWithNetworkKeepAlive() end

---@return boolean
function UClientGamePlayback:IsPlayWithNetAliveEnabled() end

---@return boolean
function UClientGamePlayback:DumpCurDataToFile() end

---@return string
function UClientGamePlayback:GetReplayTargetName() end

---@return string
function UClientGamePlayback:GetReplayVictimName() end

---@param InVictimUID number
function UClientGamePlayback:CacheVictimWeaponAndAttachments(InVictimUID) end

---@param InVictimUID number
---@param OutWeaponInfo FVictimWeaponInfo
---@return boolean
function UClientGamePlayback:GetCachedVictimWeaponInfo(InVictimUID, OutWeaponInfo) end

---@param Slot ESurviveWeaponPropSlot
function UClientGamePlayback:OnWeaponInventoryDataChanged(Slot) end

---@param Weapon ASTExtraWeapon
---@param WeaponOwner AActor
function UClientGamePlayback:OnWeaponEquipChanged(Weapon, WeaponOwner) end

---@param Weapon ASTExtraWeapon
---@param WeaponOwner AActor
function UClientGamePlayback:OnWeaponUnEquipChanged(Weapon, WeaponOwner) end

---@param Weapon ASTExtraWeapon
function UClientGamePlayback:OnWeaponGetChanged(Weapon) end

---@param IsEquip boolean
---@param AttachHandle UBackpackWeaponAttachHandle
function UClientGamePlayback:OnAttachmentEquipOrUnEquip(IsEquip, AttachHandle) end

---@param Data ULuaArrayHelper<number>
function UClientGamePlayback:SaveBattleResultDataToReplay(Data) end

function UClientGamePlayback:Test() end

function UClientGamePlayback:OnEditorStopRecording() end

---@param RecordFeature EClientReplayFeature
---@param ModeType EGameModeType
---@return boolean
function UClientGamePlayback:IsEnableByGameType(RecordFeature, ModeType) end
