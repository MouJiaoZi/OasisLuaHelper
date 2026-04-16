---@meta

---@class EDeathMatchWWISENotifyReason
---@field None number
---@field Reload number
---@field NormalKill number
---@field RedTeamFirstKill number
---@field BlueTeamFirstKill number
---@field RedTeamLeading number
---@field BlueTeamLeading number
---@field RedTeamAlmostWin number
---@field BlueTeamAlmostWin number
---@field RedTeamAlmostCompletelyWin number
---@field BlueTeamAlmostCompoletelyWin number
---@field RedTeamHalfTimeLeading number
---@field BlueTeamHalfTimeLeading number
---@field RedTeamTimeEndLeading number
---@field BlueTeamTimeEndLeading number
---@field RedTeamHasSuperGod number
---@field BlueTeamHasSuperGod number
---@field RedTeamEndSuperGod number
---@field BlueTeamEndSuperGod number
---@field RedTeamRampage number
---@field BlueTeamRampage number
---@field RedTeamWillOccupyHardPoint number
---@field BlueTeamWillOccupyHardPoint number
---@field RedTeamWillOccupyHardPoint_Time number
---@field BlueTeamWillOccupyHardPoint_Time number
---@field RedTeamWillHardPointHalfTime number
---@field BlueTeamWillHardPointHalfTime number
EDeathMatchWWISENotifyReason = {}


---@class FWWIEBankContainer
FWWIEBankContainer = {}


---@class UDeathMatchWWISEManagerComponent: UActorComponent
---@field bSingle boolean
---@field RandEventPool ULuaMapHelper<EDeathMatchWWISENotifyReason, FWWIEBankContainer>
---@field GlobalEventPool ULuaMapHelper<EDeathMatchWWISENotifyReason, UAkAudioEvent>
local UDeathMatchWWISEManagerComponent = {}

---@param MedalIDList ULuaArrayHelper<number>
function UDeathMatchWWISEManagerComponent:DeathMatchMedalNotify(MedalIDList) end

function UDeathMatchWWISEManagerComponent:OnReload() end

---@param KillerData FDeathMatchPlayerStateData
---@param VictimerData FDeathMatchPlayerStateData
---@param GlobalNotifyReason EDeathMatchGlobalAudioType
function UDeathMatchWWISEManagerComponent:OnGlobalNotify(KillerData, VictimerData, GlobalNotifyReason) end

---@param KillerData FDeathMatchPlayerStateData
---@param VictimerData FDeathMatchPlayerStateData
---@param GlobalNotifyReason EDeathMatchGlobalAudioType
---@return EDeathMatchWWISENotifyReason
function UDeathMatchWWISEManagerComponent:GetNotifyReasonWithTwoTeam(KillerData, VictimerData, GlobalNotifyReason) end

function UDeathMatchWWISEManagerComponent:OnPlayerStateRep() end

---@param KillerData FDeathMatchPlayerStateData
---@param VictimerData FDeathMatchPlayerStateData
---@param GlobalNotifyReason EDeathMatchGlobalAudioType
---@return EDeathMatchWWISENotifyReason
function UDeathMatchWWISEManagerComponent:GetNotifyReasonWithSingle(KillerData, VictimerData, GlobalNotifyReason) end

---@param KillerData FDeathMatchPlayerStateData
---@param VictimerData FDeathMatchPlayerStateData
---@param GlobalNotifyReason EDeathMatchGlobalAudioType
---@param OutReason EDeathMatchWWISENotifyReason
---@return boolean
function UDeathMatchWWISEManagerComponent:GetNotifyReasonOverrideLua(KillerData, VictimerData, GlobalNotifyReason, OutReason) end
