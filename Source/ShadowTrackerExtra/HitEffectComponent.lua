---@meta

---@class FHitEffectCachedData
---@field CustomFXLifeTime number
FHitEffectCachedData = {}


---@class FRTPCParamData
---@field RTPCKey string
---@field Value number
---@field InterpolationTimeMs number
FRTPCParamData = {}


---@class UHitEffectComponent: UActorComponent
---@field HitEffectShouldHideCheckInterval number
---@field RTPCParamInfo FRTPCParamData
---@field AutonomousHitEffectCacheLimit number
---@field SimulatedHitEffectCacheLimit number
---@field DefaultHitEffect UHitEffectDataAsset
---@field DefaultHitEffect_PC UHitEffectDataAsset
---@field ExtraHitEffects ULuaMapHelper<string, UHitEffectDataAsset>
---@field FXLifeTimeParamName string
---@field AutonomousHitEffectList ULuaArrayHelper<FHitEffectCachedData>
---@field SimulatedHitEffectList ULuaArrayHelper<FHitEffectCachedData>
---@field CachedImpactFXMap ULuaMapHelper<UHitEffectDataAsset, UParticleSystem>
---@field RegisteredSpecialHitEffectDataAssetList ULuaArrayHelper<UHitEffectDataAsset>
---@field SoundVolume number
---@field bIsAsyncLoadingAsset boolean
---@field OnDataAssetLoadedDelegate FOnDataAssetLoadedDelegate
---@field OnUpdateHitEffectSettingDelegate FOnUpdateHitEffectSettingDelegate
---@field HitEffectCachedList ULuaArrayHelper<UObject>
---@field UserSetting_Type number
---@field UserSetting_Color number
local UHitEffectComponent = {}

---@param TargetEffectDataAsset UHitEffectDataAsset
function UHitEffectComponent:RegisterSpecialHitEffectDataAssetSetting(TargetEffectDataAsset) end

function UHitEffectComponent:UpdateSpecialHitEffectDataAssetSetting() end

---@param Volume number
function UHitEffectComponent:SetOutputBusVolume(Volume) end

---@param RTPC string
---@param Value number
---@param InterpolationTimeMs number
function UHitEffectComponent:SetRTPCValue(RTPC, Value, InterpolationTimeMs) end
