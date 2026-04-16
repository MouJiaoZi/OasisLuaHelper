---@meta

---@class FTeleportToData
---@field Location FVector
---@field Rotation FRotator
---@field bSetLoc number
---@field bSetRot number
---@field bResetVelocity number
---@field bTeleportToAckSucceed number
FTeleportToData = {}


---@class UCustomMovementServerMoveTrustClient: UCustomMovementServerMoveProxy
---@field TeleportToData FTeleportToData
local UCustomMovementServerMoveTrustClient = {}

function UCustomMovementServerMoveTrustClient:OnClientLostOnServer() end

function UCustomMovementServerMoveTrustClient:OnPreReconnectOnServer() end

function UCustomMovementServerMoveTrustClient:ClearVelocity() end

---@return boolean
function UCustomMovementServerMoveTrustClient:IsMovingOnWalkingMove() end
