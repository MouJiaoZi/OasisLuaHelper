---@meta

---@class UOnHurtEffectHandler: UObject
---@field bUseCustomRecycleTime boolean
---@field CustomRecycleTime number
local UOnHurtEffectHandler = {}

---@param Infos FOnHurtHitInfo
---@param OwnerActor AActor
function UOnHurtEffectHandler:ExecuteHurtEffects_BP(Infos, OwnerActor) end

function UOnHurtEffectHandler:OnRecycled_BP() end

---@param bFree boolean
function UOnHurtEffectHandler:SetFree(bFree) end

function UOnHurtEffectHandler:DestroySelf() end
