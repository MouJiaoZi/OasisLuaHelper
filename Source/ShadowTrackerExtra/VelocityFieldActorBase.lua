---@meta

---@class AVelocityFieldActorBase: AActivityBaseActor
---@field bActorFieldSystemEnabled boolean
local AVelocityFieldActorBase = {}

---@return string
function AVelocityFieldActorBase:GetToString() end

function AVelocityFieldActorBase:InitData() end

---@return boolean
function AVelocityFieldActorBase:GetActorFieldSystemEnabled() end

---@param bEnabled boolean
function AVelocityFieldActorBase:SetActorFieldSystemEnabled(bEnabled) end

function AVelocityFieldActorBase:OnRep_ActorFieldSystemEnable() end
