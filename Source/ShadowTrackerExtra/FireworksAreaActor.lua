---@meta

---@class FFireworkAreaEmitterCfg
---@field AreaBoxComponnentName string
---@field EmittEffectPath ULuaArrayHelper<string>
---@field TrailingEffectPath string
---@field ExplosionEffectPath string
---@field MinEffectCount number
---@field MaxEffectCount number
---@field DelayPlayTime number
---@field PlayIntervalTime number
---@field TotalPlayTime number
---@field TotalShowTime number
---@field TrailingSpeed number
---@field TrailingDistance number
---@field IsPlaySequence boolean
---@field IsAdjustRotation boolean
FFireworkAreaEmitterCfg = {}


---@class FFireworkAreaDimensionCfg
---@field AreaBoxComponnentName string
---@field Dimension FIntVector
---@field OffsetSpeed FVector
---@field OffsetAccle FVector
FFireworkAreaDimensionCfg = {}


---@class FFireworkAreaAudioEventCfg
---@field EffectPath string
---@field AudioPath string
FFireworkAreaAudioEventCfg = {}


---@class FFireworkAreaReplay
FFireworkAreaReplay = {}


---烟花播放区域
---@class AFireworksAreaActor: AActor
---@field AreaTotalTime number
---@field FireworksEffectClass AFireworksActor
---@field BReadTable boolean
---@field BAudioReadTable boolean
---@field FireworksTable string
---@field BlurprintTable string
---@field FireworksDataMinID number
---@field FireworksDataMaxID number
---@field ExplosionOffset FVector
---@field PlayDimension ULuaArrayHelper<FFireworkAreaDimensionCfg>
---@field FireworksCfg ULuaArrayHelper<FFireworkAreaEmitterCfg>
---@field FireworksAudio ULuaArrayHelper<FFireworkAreaAudioEventCfg>
---@field BUpdateScaleUsually boolean
---@field EffectRefreshInterval number
---@field EffectRefreshIntervalTime number
---@field BLoadAssetAsync boolean
---@field BReplayAsset boolean
---@field FireworksReplayArray ULuaArrayHelper<FFireworkAreaReplay>
---@field LimitTickDeviceLevel number
---@field LimitTickInterval number
---@field FireworksParticleDelegate FAssetLoadSuccessDelegateWithID
---@field FireworksAudioDelegate FAssetLoadSuccessDelegateWithID
---@field ReadyFireworks ULuaArrayHelper<AFireworksActor>
---@field UsingFireworks ULuaArrayHelper<AFireworksActor>
---@field FireworksParticleSystemMap ULuaMapHelper<string, UParticleSystem>
---@field FireworksAkAudioEventmMap ULuaMapHelper<string, UAkAudioEvent>
local AFireworksAreaActor = {}

---@param Time number
function AFireworksAreaActor:SetPlayTime(Time) end

---@param Actor AFireworksActor
function AFireworksAreaActor:UnspawnFireworksActor(Actor) end

---@param LoadObject UObject
---@param resID number
function AFireworksAreaActor:OnLoadFireworksParticleSuccess(LoadObject, resID) end

---@param LoadObject UObject
---@param resID number
function AFireworksAreaActor:OnLoadFireworksAudioSuccess(LoadObject, resID) end

function AFireworksAreaActor:AdjustRotattion() end

function AFireworksAreaActor:BPEndFireworks() end
