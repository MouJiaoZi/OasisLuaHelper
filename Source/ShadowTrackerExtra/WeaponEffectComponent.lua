---@meta

---@class UWeaponEffectComponent: UWeaponLogicBaseComponent
---@field SoundDataMap ULuaMapHelper<EWeaponAction, UAkAudioEvent>
---@field PlayFromStartSoundDataList ULuaArrayHelper<UAkAudioEvent>
---@field LowDurabilityShootSound UAkAudioEvent
---@field MobileHighQualitySoundDataSetTemplate UPropReplaceDataSet
---@field EffectActiveKey string
---@field SoundPlayingIDDataMap ULuaMapHelper<UAkAudioEvent, number>
---@field bIsAsyncLoadingLowDurabilityShootSound boolean
---@field TypeNameToSoundDataMap ULuaMapHelper<string, UAkAudioEvent>
---@field LastAction EWeaponAction
---@field PCSoundStyle number
local UWeaponEffectComponent = {}

---@param TypeName string
function UWeaponEffectComponent:PlayWeaponSoundByTypeName(TypeName) end

---@param Sound UAkAudioEvent
---@param bIsLocalControlled boolean
---@param bIsInHouse boolean
---@param DistanceToTheWeapon number
function UWeaponEffectComponent:PlayWeaponSoundCommon(Sound, bIsLocalControlled, bIsInHouse, DistanceToTheWeapon) end

---@param Sound UAkAudioEvent
function UWeaponEffectComponent:PlayWeaponSoundSimple(Sound) end

---@param FXComp UParticleSystemComponent
---@param bEnable boolean
---@param bReset boolean
function UWeaponEffectComponent:ActiveEffectFX(FXComp, bEnable, bReset) end

---@return boolean
function UWeaponEffectComponent:GetEnablePCHighQualitySound() end

function UWeaponEffectComponent:CheckAndLoadLowDurabilityShootSound() end

---@param AkComp UAkComponent
function UWeaponEffectComponent:UpdateAKCompShootIntervalRTPC(AkComp) end

---@param Action EWeaponAction
function UWeaponEffectComponent:HandleWeaponAction(Action) end
