---@meta

---@class EDoorState
---@field Close number
---@field Open number
---@field Opening number
EDoorState = {}


---@class AGunMasterBunker: AActor
---@field DoorState EDoorState
---@field EnterLimit number
---@field AnimTime number
---@field OpenTime number
---@field LastCloseTime number
---@field EscapeMsgID number
---@field OpenDoorMsgID number
---@field NearCloseDoorMsgID number
---@field CloseDoorMsgID number
---@field TeammateOpenDoorMsgID number
---@field TeammateEscapeMsgID number
local AGunMasterBunker = {}

---@param NewDoorState EDoorState
function AGunMasterBunker:SetDoorState(NewDoorState) end

---@param PreDoorState EDoorState
function AGunMasterBunker:OnRep_DoorState(PreDoorState) end

---@param PlayerController APlayerController
function AGunMasterBunker:OpenDoor(PlayerController) end

---@param NewDoorState EDoorState
function AGunMasterBunker:PlayDoorAudio(NewDoorState) end

---@param PlayerController APlayerController
function AGunMasterBunker:EnterBunker(PlayerController) end
