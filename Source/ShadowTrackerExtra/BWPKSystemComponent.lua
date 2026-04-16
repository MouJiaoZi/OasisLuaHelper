---@meta

---@class FPKRoomWaitingList
---@field WaitingList ULuaArrayHelper<number>
FPKRoomWaitingList = {}


---@class UBWPKSystemComponent: UGameModeBaseComponent
---@field RoomID2PKActivateActorID ULuaMapHelper<number, number>
---@field PlayerKey2RoomID ULuaMapHelper<number, number>
---@field RoomID2Room ULuaMapHelper<number, UPKRoomObj>
---@field PKActivateActors ULuaArrayHelper<APKActivateActor>
---@field CurrentRoomID number
---@field ConfigInfoPath string
---@field RoomType2TotalTime ULuaMapHelper<number, number>
---@field RoomType2WaitingList ULuaMapHelper<number, FPKRoomWaitingList>
---@field WaitingRoomSet ULuaSetHelper<number>
---@field TickCountForWaitingList number
local UBWPKSystemComponent = {}

---@param RoomClass UClass
---@param PC ASTExtraPlayerController
---@param ActivateActorID number
---@return number
function UBWPKSystemComponent:CreatePKRoom(RoomClass, PC, ActivateActorID) end

---@param RoomID number
---@param PlayerKey number
---@return boolean
function UBWPKSystemComponent:AddPlayerWithRoom(RoomID, PlayerKey) end

---@param OwnerPlayerKey number
---@param PlayerKey number
---@return boolean
function UBWPKSystemComponent:AddPlayerWithOwner(OwnerPlayerKey, PlayerKey) end

---@param PlayerKey number
---@return boolean
function UBWPKSystemComponent:RemovePlayerWithKey(PlayerKey) end

---@param InExitPlayer APlayerController
function UBWPKSystemComponent:RemovePlayer(InExitPlayer) end

---@param RoomID number
---@param PlayerKey number
function UBWPKSystemComponent:ChangeRoomOwner(RoomID, PlayerKey) end

---@param RoomID number
function UBWPKSystemComponent:RoomBeginPK(RoomID) end

---@param RoomID number
function UBWPKSystemComponent:RemoveRoom(RoomID) end

---@param RoomID number
function UBWPKSystemComponent:RemoveRoomListUI(RoomID) end

---@param PlayerKey number
function UBWPKSystemComponent:EndPKClearPlayer(PlayerKey) end

---@param playerkey number
---@param FinalShow FPKRoomTempScore
function UBWPKSystemComponent:QuitPk(playerkey, FinalShow) end

---@param playerkey number
---@param FinalShow FPKRoomTempScore
function UBWPKSystemComponent:FinishPk(playerkey, FinalShow) end

---@param PKRegion APKActivateActor
---@return number
function UBWPKSystemComponent:RegisterActiavteActor(PKRegion) end

---@param playerkey number
---@param roomid number
---@return boolean
function UBWPKSystemComponent:CheckCanJoinRegionRoom(playerkey, roomid) end

---@param playerKey number
---@return FRoomUIItemInfo
function UBWPKSystemComponent:RequestRoomInfo(playerKey) end

---@param InPlayerKey number
---@return boolean
function UBWPKSystemComponent:IsInRoom(InPlayerKey) end

---@param InPlayerKey number
---@param playerNum number
function UBWPKSystemComponent:ChangeMinBeginNum(InPlayerKey, playerNum) end

---@param InPlayerKey number
---@param InTime number
function UBWPKSystemComponent:AddRoomPKTims(InPlayerKey, InTime) end

---@param RoomID number
function UBWPKSystemComponent:UpdateActivateActorRoomInfo(RoomID) end

---@param PlayerKey number
---@param RoomID number
function UBWPKSystemComponent:AddActivateActorRoomPlayer(PlayerKey, RoomID) end

---@param PlayerKey number
---@param RoomID number
function UBWPKSystemComponent:RemoveActivateActorRoomPlayer(PlayerKey, RoomID) end

function UBWPKSystemComponent:ReadConfigInfo() end

function UBWPKSystemComponent:LongTickForWaitingList() end
