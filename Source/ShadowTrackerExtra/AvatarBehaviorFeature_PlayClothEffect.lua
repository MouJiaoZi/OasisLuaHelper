---@meta

---@class UAvatarBehaviorFeature_PlayClothEffect: UAvatarBehaviorFeature_UtilFuncLayer
---@field PlayClothEffectBehaviorParam FPlayClothEffectBehaviorParam
---@field ParticleSystemComponents ULuaMapHelper<number, UParticleSystemComponent>
local UAvatarBehaviorFeature_PlayClothEffect = {}

---@return boolean
function UAvatarBehaviorFeature_PlayClothEffect:IsInWater() end

---@param KillNum number
function UAvatarBehaviorFeature_PlayClothEffect:HandleKillSomeOneEvent(KillNum) end

---@param KillNum number
function UAvatarBehaviorFeature_PlayClothEffect:HandleKillSomeOneEventByPSDelegate(KillNum) end

---@param KillNum number
function UAvatarBehaviorFeature_PlayClothEffect:HandleKillSomeOneEventByPCDelegate(KillNum) end
