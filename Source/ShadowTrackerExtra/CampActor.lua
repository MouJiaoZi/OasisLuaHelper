---@meta

---ds only
---@class FCampPCIndex
---@field Index number @index pc -> player data
FCampPCIndex = {}


---@class ACampActor: ACampActorBase
---@field CampPlayerLocList ULuaArrayHelper<FCampPlayerLoc> @My camp player location(X,Y), for display on mini map.
---@field CampPlayerDataList ULuaArrayHelper<FCampPlayerData> @All camp player data, for display all player info and OB list.
---@field CampSortedGroupPlayerDataList ULuaArrayHelper<FCampGroupPlayerData>
---@field PCIndexList ULuaArrayHelper<FCampPCIndex> @Cached my camp PC for replicate my camp player location.
---@field UIDIndexMap ULuaMapHelper<string, number> @UID to index map cache.
---@field PlayerKeyIndexMap ULuaMapHelper<number, number> @PlayerKey to index map cache.
---@field UpdateMinimapPlayerNumPerFrame number
---@field UpdateMinimapIdx number
---@field ClientSideReady boolean
---@field NeedUpdateLocZ boolean
local ACampActor = {}

---@param RealViewer AActor
---@param ViewTarget AActor
---@param SrcLocation FVector
---@return boolean
function ACampActor:OnCampActorNetRelevantFor(RealViewer, ViewTarget, SrcLocation) end

---@param State string
function ACampActor:OnGameModeStateChanged(State) end

---@param PlayerKey number
function ACampActor:EnterSpectator(PlayerKey) end

---@param PlayerKey number
function ACampActor:LeaveSpectator(PlayerKey) end

---@param UID string
---@return number
function ACampActor:GetIndexByUID(UID) end

---@param PlayerKey number
---@return number
function ACampActor:GetIndexByPlayerKey(PlayerKey) end

function ACampActor:OnRep_CampPlayerLocList() end

function ACampActor:OnRep_CampPlayerDataList() end

function ACampActor:OnRep_CampActorInfo() end

---@return number
function ACampActor:GetCampType() end

---@return number
function ACampActor:GetCampID() end

---@param CampID number
---@param TeamIDList ULuaArrayHelper<number>
function ACampActor:GetCampTeamIDList(CampID, TeamIDList) end

---@param CampID number
---@param CampPlayerIndexList ULuaArrayHelper<number>
function ACampActor:GetCampPlayerIndexList(CampID, CampPlayerIndexList) end

---@param CampID number
---@param TeamID number
---@param TeamPlayerIndexList ULuaArrayHelper<number>
function ACampActor:GetCampTeamPlayerIndexList(CampID, TeamID, TeamPlayerIndexList) end

---@param CampPlayerStateList ULuaArrayHelper<ASTExtraPlayerState>
function ACampActor:GetCampPlayerStateList(CampPlayerStateList) end

---@param MyPlayerKey number
---@param PlayerKey number
---@return boolean
function ACampActor:IsInSameCampByPlayerKey(MyPlayerKey, PlayerKey) end

---@param MyUID string
---@param UID string
---@return boolean
function ACampActor:IsInSameCampByUID(MyUID, UID) end

---@param Data FCampBattleResultData
function ACampActor:LuaReportCampBattleResultData(Data) end

function ACampActor:GMKillAllPlayer() end

---@param NumPerFrame number
function ACampActor:GMSetUpdateMinimapPlayerNumPerFrame(NumPerFrame) end

---@param Index number
---@return boolean
function ACampActor:IndexValid(Index) end

---@return boolean
function ACampActor:ForceRemoveLogoutPlayer() end
