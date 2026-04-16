---@meta

---@class UVNPainCausingVolComponent: UBoxComponent, IVNInstigatorInterface
---@field DamagePerSec number @Damage done per second to actors in this volume when bPainCausing=true
---@field DamageType UDamageType @Type of damage done
---@field DamageEventType EDamageType
---@field PainInterval number @If pain causing, time between damage applications.
---@field BACKUP_bPainCausing number @Checkpointed bPainCausing value
---@field bShouldUseTraceMethod number
---@field bToOwnerOnly boolean
---@field bTryGrandparent boolean
---@field Duration number
---@field bSingleInstanceOnly boolean
---@field SpecificItemID number
---@field ItemType number
---@field bInstantDamage boolean
---@field bApplyToOwner boolean
---@field bInitSelfDestroyTimer boolean
---@field SubDamageType EMeleeDamageSubType
---@field DamagebleActorTemplate ULuaArrayHelper<AActor>
local UVNPainCausingVolComponent = {}

---@param Damage number
function UVNPainCausingVolComponent:OnDamagePulse(Damage) end

---@param bResume boolean
function UVNPainCausingVolComponent:SetInfinateLifeTime(bResume) end

---@param activatedComp UPrimitiveComponent
---@param otherActor AActor
---@param otherComp UPrimitiveComponent
---@param otherBodyIndex number
---@param bFromSweep boolean
---@param sweepResult FHitResult
function UVNPainCausingVolComponent:OnBeginOverlap(activatedComp, otherActor, otherComp, otherBodyIndex, bFromSweep, sweepResult) end
