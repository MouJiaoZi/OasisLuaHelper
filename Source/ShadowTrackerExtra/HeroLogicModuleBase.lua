---@meta

---@class UHeroLogicModuleBase: UPersistEffectBase
---@field CurrentHeroID number
local UHeroLogicModuleBase = {}

---@return number
function UHeroLogicModuleBase:GetCurrentHeroID() end

function UHeroLogicModuleBase:OnReceivedHeroID_BP() end

function UHeroLogicModuleBase:OnRep_CurrentHeroID() end
