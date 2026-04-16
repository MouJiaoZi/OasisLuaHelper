---@meta

---@class APortal: AActor
---@field TargetNum number @Ŵ
---@field TargetPosition FVector
---@field PortalIndex number
---@field PendedPortalActors ULuaArrayHelper<AActor> @Ѿ͵Ľɫײظ
local APortal = {}

---@param NewChar ACharacter
---@return boolean
function APortal:AddPlayer(NewChar) end

---@param TargetPos FVector
function APortal:SetTargetPosition(TargetPos) end

---@param Index number
function APortal:SetPortalIndex(Index) end

---@param TeleportedTargetActor AActor
function APortal:SetTargetActor(TeleportedTargetActor) end
