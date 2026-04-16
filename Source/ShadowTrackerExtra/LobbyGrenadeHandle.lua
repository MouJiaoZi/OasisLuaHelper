---@meta

---@class ULobbyGrenadeHandle: UBattleItemHandleBase
---@field TrailSeq ULevelSequence
---@field BindGrenadeName string
---@field BindParticleName string
---@field GrenadeActor AActor
---@field HandleAttachName string
---@field HandleAttachActorName string
local ULobbyGrenadeHandle = {}

---@return string
function ULobbyGrenadeHandle:GetHandleAttachName() end

---@return string
function ULobbyGrenadeHandle:GetHandleAttachActorName() end
