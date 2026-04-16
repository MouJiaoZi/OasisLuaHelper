---@meta

---@class UBWPKControllerComponent: UActorComponent
---@field bIsRoomOwner boolean
---@field RoomID number
---@field CurrentState EPKRoomState
---@field RoomType number
local UBWPKControllerComponent = {}

---@param PC ASTExtraPlayerController
---@param TipsID number
---@param bUseText boolean
---@param text1 string
---@param text2 string
function UBWPKControllerComponent:CilentDisplayTipsAndAudio(PC, TipsID, bUseText, text1, text2) end

function UBWPKControllerComponent:RequestLeaveRoom() end

---@param roomID number
function UBWPKControllerComponent:RequestEnterRoom(roomID) end

function UBWPKControllerComponent:FastEnterRoom() end

---@param PlayerKey number
function UBWPKControllerComponent:RequestKickRoom(PlayerKey) end

function UBWPKControllerComponent:RequestCreateRoom() end

---@param PlayerKey number
function UBWPKControllerComponent:TransferRoomOwner(PlayerKey) end

---@param UID string
function UBWPKControllerComponent:InvitePlayer(UID) end

function UBWPKControllerComponent:BeginRoomPK() end

---@param UID string
function UBWPKControllerComponent:RequestPlayerRoomInfo(UID) end

---@param bRoomOWner boolean
---@param roomID number
---@param state EPKRoomState
---@param roomtype number
function UBWPKControllerComponent:SetRoomOwner(bRoomOWner, roomID, state, roomtype) end

---@param state EPKRoomState
function UBWPKControllerComponent:ChangeRoomState(state) end

function UBWPKControllerComponent:FinishPKAndNeedSettle() end

function UBWPKControllerComponent:ClientFinishedPK() end

---@param UID string
---@param roomID number
---@param roomType number
function UBWPKControllerComponent:ReceivedInvited(UID, roomID, roomType) end

---@param UID string
---@param roomID number
---@param roomType number
function UBWPKControllerComponent:BP_ReceiveInvited(UID, roomID, roomType) end

---@param UID string
---@param info FRoomUIItemInfo
function UBWPKControllerComponent:ReceiveRequestPlayerInfo(UID, info) end

---@param TipsID number
---@param bUseText boolean
---@param text1 string
---@param text2 string
function UBWPKControllerComponent:ReceiveShowTipsWithAudio(TipsID, bUseText, text1, text2) end

---@param TipsID number
---@param bUseText boolean
---@param text1 string
---@param text2 string
function UBWPKControllerComponent:BP_ReceiveShowTipsWithAudio(TipsID, bUseText, text1, text2) end

---@param UID string
---@param info FRoomUIItemInfo
function UBWPKControllerComponent:BP_ReceiveRequestPlayerInfo(UID, info) end

function UBWPKControllerComponent:OnRep_bIsRoomOwner() end

---@param Score FPKRoomTempScore
function UBWPKControllerComponent:OnPlayerQuit(Score) end

---@param Score FPKRoomTempScore
function UBWPKControllerComponent:OnPlayerFinish(Score) end

function UBWPKControllerComponent:LostConnectLeaveRoom() end

function UBWPKControllerComponent:RecoverConnectionRefresh() end

function UBWPKControllerComponent:OnPawnPossessedBy() end
