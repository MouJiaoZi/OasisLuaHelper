---@meta

---@class FRoomUIItemInfo
---@field OwnerUID number
---@field RoomID number
---@field HasNumbers number
---@field MaxNumbers number
---@field RoomState number
---@field UIDS ULuaArrayHelper<number>
FRoomUIItemInfo = {}


---@class FRegionPlayerUIDS
---@field PlayerUIDS ULuaArrayHelper<number>
---@field MaxNum number
---@field ArrSize number
FRegionPlayerUIDS = {}


---@class APKActivateActor: AUAERegionActor
---@field MyID number
---@field PlayerKey2RoomID ULuaMapHelper<number, number>
---@field RoomInfoList ULuaArrayHelper<FRoomUIItemInfo>
---@field AllRoomUIDs FRegionPlayerUIDS
---@field RoomClass UPKRoomObj
---@field TransformPositions ULuaArrayHelper<FVector>
---@field RoomType number
---@field bEnableTransform boolean
---@field UIDReplicated boolean
---@field InfoReplicated boolean
local APKActivateActor = {}

---@param OverlappedActor AActor
---@param Other AActor
function APKActivateActor:OnPlayerEnter(OverlappedActor, Other) end

---@param OverlappedActor AActor
---@param Other AActor
function APKActivateActor:OnPlayerLeave(OverlappedActor, Other) end

---@param PC ASTExtraPlayerController
---@return boolean
function APKActivateActor:CanPlayerJoinThisRegionPK(PC) end

---@param PlayerList ULuaArrayHelper<ASTExtraPlayerController>
function APKActivateActor:OnPKBegin(PlayerList) end

---@param PlayerList ULuaArrayHelper<ASTExtraPlayerController>
function APKActivateActor:BPPKBegin(PlayerList) end

---@param InRoomID number
function APKActivateActor:BPPKDownCountWithoutQuit(InRoomID) end

---@param InRoomID number
function APKActivateActor:BPBeforeDestroyRoom(InRoomID) end

---@param PlayerList ULuaArrayHelper<ASTExtraPlayerController>
function APKActivateActor:OnPKEnd(PlayerList) end

---@param PlayerList ULuaArrayHelper<ASTExtraPlayerController>
function APKActivateActor:BPPKEnd(PlayerList) end

function APKActivateActor:NotifyInfoHasUpdate() end

---@param PlayerList ULuaArrayHelper<ASTExtraPlayerController>
function APKActivateActor:BPAfterTransformRemoveDelayList(PlayerList) end

---@param InPCs ULuaArrayHelper<ASTExtraPlayerController>
function APKActivateActor:TranslatePlayersToTargetPostion(InPCs) end

---@return FVector
function APKActivateActor:GetInteractivatePosition() end

function APKActivateActor:OnRep_UIDS() end

function APKActivateActor:OnRep_Infos() end

---@param PC ASTExtraPlayerController
---@return number
function APKActivateActor:RequestCreatePKRoom(PC) end

---@param InInfo FRoomUIItemInfo
---@return string
function APKActivateActor:GetRoomUIItemOwnerUID(InInfo) end

---@param RoomID number
---@param roomInfo FRoomUIItemInfo
function APKActivateActor:UpdateRoomInfo(RoomID, roomInfo) end

---@param roomInfo FRoomUIItemInfo
function APKActivateActor:AddRoomInfo(roomInfo) end

function APKActivateActor:GenerateRoomUIDS() end

function APKActivateActor:AddRoomUIDS() end

---@param changeK number
function APKActivateActor:ChangeRoomUIDS(changeK) end
