---@meta

---@class FBuffApplierFunctionByConfig
---@field BuffApplyFunction FBuffApplierFunction
---@field MaxDsitance number
FBuffApplierFunctionByConfig = {}


---@class FBuffApplierFunctionWrapper
---@field BuffApplyFunctionByConfigList ULuaArrayHelper<FBuffApplierFunctionByConfig>
FBuffApplierFunctionWrapper = {}


---@class UExplosionEffectApplier_AddBuff: UExplosionEffectApplier
---@field BuffApplyFunction FBuffApplierFunctionWrapper
local UExplosionEffectApplier_AddBuff = {}

---@param Context FExplosionFinderParams
---@param FoundTargets ULuaArrayHelper<FHitResult>
---@param ExtraScale number
function UExplosionEffectApplier_AddBuff:FilterTargets(Context, FoundTargets, ExtraScale) end


---@class UExplosionEffectApplier_AddBuffByDistance: UExplosionEffectApplier
---@field BuffApplyFunctionByConfigs ULuaArrayHelper<FBuffApplierFunctionByConfig>
local UExplosionEffectApplier_AddBuffByDistance = {}
