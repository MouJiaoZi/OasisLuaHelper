---@meta

---@class EScreenParticleEffectType
---@field ESPET_None number
---@field ESPET_Rainy number @下雨
---@field ESPET_Snowy number @下雪
---@field ESPET_Blizzard number @暴风雪
---@field ESPET_DustStorm number @沙尘暴
---@field ESPET_MicroRegion number @火山灰
---@field ESPET_ShootingStar number @流星雨
---@field ESPET_Aurora number @极光
---@field ESPET_Max number
EScreenParticleEffectType = {}


---@class FAppearanceMatIndoorData
---@field IndoorParamName string
---@field IndoorRatio number
---@field prevValue number
FAppearanceMatIndoorData = {}


---@class FAppearanceMatPeriodData
---@field ParamName string
---@field HalfPeriod number
---@field CurrentTime number
FAppearanceMatPeriodData = {}


---@class FAppearanceMatData
---@field AppearanceKey string
---@field LifeSpan number
---@field PeriodParams ULuaArrayHelper<FAppearanceMatPeriodData>
---@field IgnoreIndoor boolean
---@field SetDiffParamIndoor boolean
---@field IndoorParams ULuaArrayHelper<FAppearanceMatIndoorData>
---@field LastIndoorState boolean
---@field HideUI boolean
---@field ParentMaterial UMaterialInterface
---@field bHoldMatRef boolean
FAppearanceMatData = {}


---@class FScreenParticleEffectData
---@field EffectType EScreenParticleEffectType
---@field bUseParticle boolean
---@field ParticleEffect UParticleSystem
---@field ParticleParamName string
---@field ExtraScreenAppearanceList ULuaArrayHelper<string>
---@field KeepWorldRotation boolean
---@field IsShowing boolean
---@field CurrentParamValue number
---@field IsDisabled boolean
---@field bUseCurve boolean
---@field Curve UCurveBase
---@field bAutoStop boolean
---@field Duration number
FScreenParticleEffectData = {}


---@class FAppearanceMeshData
FAppearanceMeshData = {}


---@class USTScreenAppearanceComponent: UActorComponent, IObjectPoolInterface
---@field AppearancePresentList ULuaArrayHelper<FAppearanceMatData>
---@field AppearanceMeshRelativeTransform FTransform
---@field AppearanceMeshDataList ULuaArrayHelper<FAppearanceMeshData>
---@field ScreenParticleEffectList ULuaArrayHelper<FScreenParticleEffectData>
---@field CustomScreenEffectMap ULuaMapHelper<number, FScreenParticleEffectData>
---@field CurAppearanceList ULuaArrayHelper<FAppearanceMatData>
local USTScreenAppearanceComponent = {}

---@param AppearanceName string
---@param bNewActive boolean
---@param bReset boolean
function USTScreenAppearanceComponent:SetAppearanceActive(AppearanceName, bNewActive, bReset) end

---@param bNewActive boolean
---@param bReset boolean
function USTScreenAppearanceComponent:SetAllAppearancesActive(bNewActive, bReset) end

---@param AppearancePresentIndex number
function USTScreenAppearanceComponent:OnAsyncLoadingFinished(AppearancePresentIndex) end

---@param AppearanceName string
---@param ParamName string
---@param Tex UTexture
function USTScreenAppearanceComponent:SetTextureParameterValue(AppearanceName, ParamName, Tex) end

---@param AppearanceName string
---@param StopFromPlayFunc boolean
function USTScreenAppearanceComponent:StopScreenAppearance(AppearanceName, StopFromPlayFunc) end

function USTScreenAppearanceComponent:StopAllScreenAppearance() end

---@param AppearanceName string
---@return boolean
function USTScreenAppearanceComponent:IsScreenAppearancePlaying(AppearanceName) end

---@param InKey number
---@param InEffectData FScreenParticleEffectData
function USTScreenAppearanceComponent:PlayScreenEffect(InKey, InEffectData) end

---@param InKey number
function USTScreenAppearanceComponent:StopScreenEffect(InKey) end

---@param InKey number
function USTScreenAppearanceComponent:OnPlayScreenEffect_Internal(InKey) end

---@param EffectType EScreenParticleEffectType
---@param InEffectValue number
function USTScreenAppearanceComponent:PlayScreenParticleEffect(EffectType, InEffectValue) end

---@param EffectType EScreenParticleEffectType
---@param InEffectValue number
function USTScreenAppearanceComponent:SetScreenParticleParam(EffectType, InEffectValue) end

---@param EffectType EScreenParticleEffectType
function USTScreenAppearanceComponent:HandleEffectLoadFinish(EffectType) end

---@param EffectType EScreenParticleEffectType
function USTScreenAppearanceComponent:StopScreenParticleEffect(EffectType) end

function USTScreenAppearanceComponent:StopAllScreenParticleEffect() end
