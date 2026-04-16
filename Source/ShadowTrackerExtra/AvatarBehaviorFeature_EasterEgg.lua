---@meta

---@class UAvatarBehaviorFeature_EasterEgg: UAvatarBehaviorFeature
---@field MeleeCount number
---@field preFrameCount number
---@field EasterEggBehaviorParam FEasterEggBehaviorParam
---@field ParticleSystemComponents ULuaArrayHelper<UParticleSystemComponent>
local UAvatarBehaviorFeature_EasterEgg = {}

---@param SkillIndex number
function UAvatarBehaviorFeature_EasterEgg:OnMelee(SkillIndex) end

---@param HitInfo FUTSkillHitInfo
function UAvatarBehaviorFeature_EasterEgg:OnSkillHit(HitInfo) end

---@param state EPawnState
function UAvatarBehaviorFeature_EasterEgg:OnPawnStateEnter(state) end

---@param SelfRef ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function UAvatarBehaviorFeature_EasterEgg:OnPostTakeDamage(SelfRef, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param bIsEquip boolean
---@param WeaponOwner AActor
---@param Weapon ASTExtraWeapon
function UAvatarBehaviorFeature_EasterEgg:OnWeaponChange(bIsEquip, WeaponOwner, Weapon) end

function UAvatarBehaviorFeature_EasterEgg:ActivateParticleSystemComponents() end

function UAvatarBehaviorFeature_EasterEgg:DeactivateParticleSystemComponents() end
