---@meta

---@class FPeakDisplayInfo
---@field PlayerUID string
---@field PlayerName string
---@field Gender number
---@field PlatformGender number
---@field bVisible boolean
FPeakDisplayInfo = {}


---@class FPeakTeamDisplayInfo
---@field LastPeakRank number
---@field LastPeakMatchScore number
---@field KillNumber number
---@field TeamName string
---@field TeamLogoID string
FPeakTeamDisplayInfo = {}


---@class FPeakSortInfo
---@field TeamID number
---@field LastPeakMatchScore number
---@field PeakSegmentLevel number
---@field RatingScore number
FPeakSortInfo = {}


---@class ASceneDisplayDirectorPeak: ASceneDisplayDirectorRep
---@field MaxDisplayPlayerNumber number
---@field bIntervalRefreshPlayer boolean
---@field RefreshTimeInterval number
---@field PeakPawnInfo ULuaArrayHelper<FPeakDisplayInfo>
---@field PeakTeamInfo FPeakTeamDisplayInfo
---@field bAddTestData boolean
---@field bShowAllPlayerListData boolean
---@field bShowRemovePlayerReason boolean
---@field GetPlayerInfoListParamsTime number
---@field TotalCoolDownTime number
---@field CoolDownTime number
---@field bHasRefreshPlayer boolean
---@field LastPassReadyIndex number
---@field bHasDestroy boolean
local ASceneDisplayDirectorPeak = {}

---ʱ
---@param ReadyStateTime number
function ASceneDisplayDirectorPeak:OnGameStateReadyTimeChanged(ReadyStateTime) end

---½ɫģϢ
function ASceneDisplayDirectorPeak:RefreshPlayerModelList() end

---AvatarϢ
---@param PeakPlayerParamsList ULuaArrayHelper<FGameModePlayerParams>
---@param index number
function ASceneDisplayDirectorPeak:RefreshAvatarInfo(PeakPlayerParamsList, index) end

---ռеAvatar
---@param WearList ULuaArrayHelper<number>
---@param index number
---@param ItemTableID number
---@param Gender number
function ASceneDisplayDirectorPeak:CollectionAvatar(WearList, index, ItemTableID, Gender) end

---մAvatar
---@param WearList ULuaArrayHelper<number>
---@param index number
function ASceneDisplayDirectorPeak:PutOnAvatar(WearList, index) end

---ȡ۷սϢ
---@param OwningGameMode ABattleRoyaleGameMode
---@param PlayerParamsList ULuaArrayHelper<FGameModePlayerParams>
function ASceneDisplayDirectorPeak:GetTeamPeakPlayerParamsList(OwningGameMode, PlayerParamsList) end

---Ӵ
function ASceneDisplayDirectorPeak:AddGameStateReadyTimeChangedDelegate() end

---Ƴ
function ASceneDisplayDirectorPeak:RemoveGameStateReadyTimeChangedDelegate() end

---@param PeakSortInfoList ULuaArrayHelper<FPeakSortInfo>
function ASceneDisplayDirectorPeak:SortPeakInfoList(PeakSortInfoList) end

function ASceneDisplayDirectorPeak:OnRep_PeakPawnInfo() end

function ASceneDisplayDirectorPeak:BP_OnRepPeakPawnInfo() end

function ASceneDisplayDirectorPeak:OnRep_PeakTeamInfo() end

function ASceneDisplayDirectorPeak:BP_OnRepPeakTeamInfo() end

function ASceneDisplayDirectorPeak:OnRep_CoolDownTime() end

function ASceneDisplayDirectorPeak:BP_OnRepCoolDownTime() end

function ASceneDisplayDirectorPeak:BP_OnActorChannelOpen() end

function ASceneDisplayDirectorPeak:DestroyPeakPlatform() end

function ASceneDisplayDirectorPeak:BP_DestroyPeakPlatform() end

---@return boolean
function ASceneDisplayDirectorPeak:IsCoolDownTimeOver() end
