---@meta

---@class FAppearanceParameter
---@field ParameterName string
---@field ControlCurve UCurveBase
FAppearanceParameter = {}


---@class UScreenAppearanceProvider: UObject
---@field AppearanceName string
---@field bCanEverTick number
---@field bTickEnabled number
---@field TickInterval number
---@field MaterialParameterCurve ULuaArrayHelper<FAppearanceParameter>
---@field LifeSpan number
---@field RelativeTransform FTransform
---@field AppearanceScalarParamters ULuaArrayHelper<FScreenAppearanceScalarParameter>
---@field AppearanceColorParameters ULuaArrayHelper<FScreenAppearanceColorParameter>
---@field AppearanceTextureParameters ULuaArrayHelper<FScreenAppearanceTextureParameter>
---@field OwnerActor AActor
---@field Causer AActor
---@field LoadedAssets ULuaArrayHelper<UObject>
---@field SpeedScale number
local UScreenAppearanceProvider = {}

---@return string
function UScreenAppearanceProvider:GetUniqueName() end

---@param ParameterName string
---@param Param number
function UScreenAppearanceProvider:SetFloatParameter(ParameterName, Param) end

---@param ParameterName string
---@param Param FVector
function UScreenAppearanceProvider:SetVectorParameter(ParameterName, Param) end

---@param ParameterName string
---@param Param FLinearColor
function UScreenAppearanceProvider:SetColorParameter(ParameterName, Param) end

---@param ParameterName string
---@param Param UTexture
function UScreenAppearanceProvider:SetTextureParameter(ParameterName, Param) end

---@param ParameterName string
---@return number
function UScreenAppearanceProvider:GetFloatParameter(ParameterName) end

---@param ParameterName string
---@return FVector
function UScreenAppearanceProvider:GetVectorParameter(ParameterName) end

---@param ParameterName string
---@return FLinearColor
function UScreenAppearanceProvider:GetColorParameter(ParameterName) end

---@param ParameterName string
---@param ControlCurve UCurveBase
function UScreenAppearanceProvider:AddMaterialParameterCurve(ParameterName, ControlCurve) end

---@param DeltaTime number
function UScreenAppearanceProvider:ReceiveTick(DeltaTime) end

function UScreenAppearanceProvider:ReceiveBeginPlay() end

function UScreenAppearanceProvider:ReceiveEndPlay() end


---@class UScreenAppearanceProvider_Plane: UScreenAppearanceProvider
---@field MeshTemplate UStaticMesh
---@field Material UMaterialInterface
---@field PPPriority number
---@field bReportNotPPMaterialOnPC boolean
---@field DeviceQualityLODs ULuaMapHelper<number, FScreenAppearanceLOD_Mesh>
local UScreenAppearanceProvider_Plane = {}

---@param Duration number
---@param InFadeParameterName string
---@param bFadeInOrOut boolean
---@param bInFadeOutAutoDestroy boolean
function UScreenAppearanceProvider_Plane:Fade(Duration, InFadeParameterName, bFadeInOrOut, bInFadeOutAutoDestroy) end


---@class UScreenAppearanceProvider_Particle: UScreenAppearanceProvider
---@field ParticleTemplate UParticleSystem
---@field DeviceQualityLODs ULuaMapHelper<number, FScreenAppearanceLOD_Particle>
---@field bAbsoluteRotation number
---@field bAbsoluteLocation number
---@field bKeepSpawnLocation number
---@field AbsRotation FRotator
---@field AbsLocation FVector
local UScreenAppearanceProvider_Particle = {}

---@param Template UParticleSystem
function UScreenAppearanceProvider_Particle:SetParticleTemplate(Template) end

---@param PSystem UParticleSystemComponent
function UScreenAppearanceProvider_Particle:OnParticleCompleted(PSystem) end

---@param ScreenAppearance USceneComponent
function UScreenAppearanceProvider_Particle:ReceivePostScreenAppearanceCreated(ScreenAppearance) end


---@class UScreenAppearanceProvider_UGCSpecialPlane: UScreenAppearanceProvider_Plane
local UScreenAppearanceProvider_UGCSpecialPlane = {}

function UScreenAppearanceProvider_UGCSpecialPlane:AssignMaterialParameters() end


---@class UScreenAppearanceProvider_LinearFade: UScreenAppearanceProvider_UGCSpecialPlane
---@field LinearFadeParameter FScreenAppearanceLinearFadeParameter
local UScreenAppearanceProvider_LinearFade = {}


---@class UScreenAppearanceProvider_BreathFade: UScreenAppearanceProvider_UGCSpecialPlane
---@field BreathFadeParameter FScreenAppearanceBreathFadeParameter
local UScreenAppearanceProvider_BreathFade = {}


---@class UScreenAppearanceProvider_BreathRotation: UScreenAppearanceProvider_UGCSpecialPlane
---@field BreathRotationParameter FScreenAppearanceBreathRotationParameter
local UScreenAppearanceProvider_BreathRotation = {}


---@class UScreenAppearanceProvider_Custom: UScreenAppearanceProvider_UGCSpecialPlane
---@field CustomParameter FScreenAppearanceCustomParameter
local UScreenAppearanceProvider_Custom = {}


---@class UScreenAppearanceProvider_VerticalFlow: UScreenAppearanceProvider_UGCSpecialPlane
---@field VerticalFlowParameter FScreenAppearanceVerticalFlowParameter
local UScreenAppearanceProvider_VerticalFlow = {}
