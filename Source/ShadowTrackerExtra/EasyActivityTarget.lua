---@meta

---@class AEasyActivityTarget: AActivityBaseActor
---@field MaxHealth number
---@field CurHealth number
---@field BisAlive boolean
---@field BisInvincible boolean
local AEasyActivityTarget = {}

---@param Damage number
function AEasyActivityTarget:ChangeHealth(Damage) end

function AEasyActivityTarget:Reset() end

function AEasyActivityTarget:DoInHealthZero() end

---@return boolean
function AEasyActivityTarget:BP_BisTakeDamage() end

function AEasyActivityTarget:ConfirmDied() end

function AEasyActivityTarget:OnRep_BisAlive() end

function AEasyActivityTarget:BPOnRep_BisAlive() end
