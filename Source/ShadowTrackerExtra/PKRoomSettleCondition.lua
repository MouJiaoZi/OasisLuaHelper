---@meta

---@class UPKRoomSettleCondition: UObject
---@field OwnerRoom UPKRoomObj
local UPKRoomSettleCondition = {}

---@param playerkey number
function UPKRoomSettleCondition:OnPlayerFinishedGame(playerkey) end


---@class UPKRoomEarlyEndCondition: UPKRoomSettleCondition
---@field bHasRemoved boolean
---@field RemoveEndTimes number
local UPKRoomEarlyEndCondition = {}


---@class UPKRoomFinishedShowEndCondition: UPKRoomSettleCondition
---@field RemoveRoomHandle FTimerHandle
local UPKRoomFinishedShowEndCondition = {}


---@class UPKRoomJoinCondition: UObject
---@field FailedTipsID number
local UPKRoomJoinCondition = {}

---@param PC ASTExtraPlayerController
---@return boolean
function UPKRoomJoinCondition:CanPlayerJoinInRoom(PC) end


---@class UPKRoomJoinWithItem: UPKRoomJoinCondition
---@field ItemIDs ULuaArrayHelper<number>
---@field bAll boolean
local UPKRoomJoinWithItem = {}


---@class UPKRoomJoinedProcess: UObject
---@field OwnerRoom UPKRoomObj
local UPKRoomJoinedProcess = {}

---@param PC ASTExtraPlayerController
function UPKRoomJoinedProcess:ProcessAfterPlayerJoinedInRoom(PC) end


---@class UPKRoomTaskCondition: UObject
---@field OwnerRoom UPKRoomObj
---@field TaskID number
local UPKRoomTaskCondition = {}

---@param PC ASTExtraPlayerController
---@return boolean
function UPKRoomTaskCondition:HasFinishedThisTask(PC) end
