---@meta

---@class EPKRoomState
---@field Waiting number
---@field BeginCanQuit number
---@field BeginCanNotQuit number
---@field Fighting number
---@field End number
EPKRoomState = {}


---@class FPKRoomPlayerInfo
---@field Name string
---@field PlayerKey number
---@field PlayerUID number
---@field Score number
---@field UIShowText string
FPKRoomPlayerInfo = {}


---@class UPKRoomNetAlienationData: URepViaPCNetAlienationData
---@field RoomID number
---@field PKRoomState EPKRoomState
---@field RoomOwnerPlayerKey number
---@field RoomPlayerList ULuaArrayHelper<FPKRoomPlayerInfo>
---@field bQueuing boolean
---@field SortedPlayerList ULuaArrayHelper<FPKRoomPlayerInfo>
---@field RoomType number
---@field ReadyTime number
---@field BeginTime number
---@field MinBeginNumbers number
---@field MaxNumbers number
---@field bEnableAutoBegin boolean
---@field DisableTags ULuaArrayHelper<FGameplayTag>
---@field PKTimes number
---@field TlogID number
---@field NetRelevantOwner UPKRoomObj
---@field bHasEnd boolean
local UPKRoomNetAlienationData = {}

---@param PC ASTExtraPlayerController
function UPKRoomNetAlienationData:AddPlayerInfo(PC) end

---@param TmpRoomID number
function UPKRoomNetAlienationData:SetRoomID(TmpRoomID) end

---@param InRoomType number
---@param InPkTimes number
function UPKRoomNetAlienationData:SetRoomTypeAndPKTimes(InRoomType, InPkTimes) end

---@param PC ASTExtraPlayerController
function UPKRoomNetAlienationData:RemovePlayerInfo(PC) end

---@param scores ULuaArrayHelper<FPKRoomTempScore>
function UPKRoomNetAlienationData:UpdateScore(scores) end

---@param state EPKRoomState
function UPKRoomNetAlienationData:ChangeRoomState(state) end

---@param InPlayerKey number
function UPKRoomNetAlienationData:SetRoomOwnerPlayerKey(InPlayerKey) end

---@param tmpQueuing boolean
function UPKRoomNetAlienationData:SetQueuing(tmpQueuing) end

function UPKRoomNetAlienationData:OnRep_RoomOwner() end

function UPKRoomNetAlienationData:OnRep_RoomState() end

function UPKRoomNetAlienationData:OnRep_Queuing() end

function UPKRoomNetAlienationData:OnRep_RoomPlayerList() end

---@return ENetRole
function UPKRoomNetAlienationData:GetOwnerRole() end

function UPKRoomNetAlienationData:BP_PreDestroy() end

function UPKRoomNetAlienationData:BP_EarlyEnd() end

function UPKRoomNetAlienationData:BP_ShowFinishTips() end

---@param worldtimes number
---@param stage EPKRoomState
---@param remianingtimes number
function UPKRoomNetAlienationData:BroadcastBeginDownCount(worldtimes, stage, remianingtimes) end

---@param worldtimes number
---@param stage EPKRoomState
---@param remianingtimes number
function UPKRoomNetAlienationData:BPReceiveBeginDownCount(worldtimes, stage, remianingtimes) end

function UPKRoomNetAlienationData:SortPlayerList() end

---@param InRoom UPKRoomObj
function UPKRoomNetAlienationData:SetMyOwnerForNetRelevant(InRoom) end

---@param InInfo FPKRoomPlayerInfo
---@return string
function UPKRoomNetAlienationData:GetPlayerInfoUID(InInfo) end

---@param InPC ASTExtraPlayerController
function UPKRoomNetAlienationData:AddPlayerRelevant(InPC) end

---@param InPC ASTExtraPlayerController
function UPKRoomNetAlienationData:RemovePlayerRelevant(InPC) end
