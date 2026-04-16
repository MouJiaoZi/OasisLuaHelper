---@meta

---@class FEnteringFloatingBoardPlayerData
FEnteringFloatingBoardPlayerData = {}


---@class AFloatingBoardActor: APlatformBoardBaseActor
---@field DownSpeed number
---@field UpSpeed number
---@field DownHeight number
---@field DelayDownTime number
---@field PlayerCharacterExistingAera FVector
---@field ExistingPlayerCharacterArray ULuaArrayHelper<FEnteringFloatingBoardPlayerData>
---@field OverLappingCount number
---@field CurLocationZ number
local AFloatingBoardActor = {}

---@param Character ACharacter
---@param NewMovementBase UPrimitiveComponent
function AFloatingBoardActor:HandlePlayerMovementBaseChanged(Character, NewMovementBase) end
