---@meta

---@class UProjectileActionEffect_Attach: UProjectileActionEffectBase
---@field ForwardOffset FFloatGetter
---@field TargetSocket string
---@field DeAttachType EProjectileDeAttachType
local UProjectileActionEffect_Attach = {}

---@param PersistComp UPersistBaseComponent
---@param State FGameplayTag
function UProjectileActionEffect_Attach:OnPawnDynamicStateEnter(PersistComp, State) end

---@param DestroyedActor AActor
function UProjectileActionEffect_Attach:OnTargetDestroyed(DestroyedActor) end

function UProjectileActionEffect_Attach:DeAttach() end
