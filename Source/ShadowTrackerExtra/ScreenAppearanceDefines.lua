---@meta

---@class EEnvironmentType
---@field None number
---@field Rainy number @下雨
---@field Snowy number @下雪
---@field Blizzard number @暴风雪
---@field SandStorm number @沙尘暴
---@field Max number
EEnvironmentType = {}


---@class EScreenParticleType
---@field LinearFade number @线性渐变
---@field BreathFade number @呼吸渐变
---@field BreathRotation number @呼吸旋转
---@field VerticalFlow number @垂直流动
---@field Custom number @自定义
EScreenParticleType = {}


---@class EParticleDirection
---@field Up number @由下向上
---@field Down number @由上向下
EParticleDirection = {}


---@class EScreenParamType
---@field Scalar number @标量
---@field Color number @颜色
---@field Texture number @纹理
EScreenParamType = {}


---@class FScreenParticleEffect
---@field EffectType EEnvironmentType
---@field ParticleEffect UParticleSystem
---@field ParticleParamName string
---@field KeepWorldRotation boolean
FScreenParticleEffect = {}


---@class FScreenAppearanceLOD_Mesh
---@field MeshTemplate UStaticMesh
---@field Material UMaterialInterface
FScreenAppearanceLOD_Mesh = {}


---@class FScreenAppearanceLOD_Particle
---@field ParticleTemplate UParticleSystem
FScreenAppearanceLOD_Particle = {}


---@class FScreenAppearanceScalarParameter
---@field ParameterName string
---@field ParameterValue number
FScreenAppearanceScalarParameter = {}


---@class FScreenAppearanceColorParameter
---@field ParameterName string
---@field ParameterValue FLinearColor
FScreenAppearanceColorParameter = {}


---@class FScreenAppearanceTextureParameter
---@field ParameterName string
FScreenAppearanceTextureParameter = {}


---@class FScreenAppearanceStaticBoolParameter
---@field ParameterName string
---@field ParameterValue boolean
FScreenAppearanceStaticBoolParameter = {}


---@class FScreenAppearanceLinearFadeParameter
---@field Color FLinearColor
---@field Ratio number
---@field Duration number
---@field UpOrDown EParticleDirection
---@field Radius number
---@field Opacity number
FScreenAppearanceLinearFadeParameter = {}


---@class FScreenAppearanceBreathFadeParameter
---@field Color FLinearColor
---@field Ratio number
---@field Duration number
---@field Radius number
---@field Opacity number
FScreenAppearanceBreathFadeParameter = {}


---@class FScreenAppearanceBreathRotationParameter
---@field Color FLinearColor
---@field Ratio number
---@field Duration number
---@field Radius number
---@field Opacity number
FScreenAppearanceBreathRotationParameter = {}


---@class FScreenAppearanceVerticalFlowParameter
---@field Color FLinearColor
---@field Ratio number
---@field Duration number
---@field Direction EParticleDirection
FScreenAppearanceVerticalFlowParameter = {}


---@class FScreenAppearanceParam
---@field ParamType EScreenParamType
---@field ScalarParameter FScreenAppearanceScalarParameter
---@field ColorParameter FScreenAppearanceColorParameter
---@field TextureParameter FScreenAppearanceTextureParameter
FScreenAppearanceParam = {}


---@class FScreenAppearanceCustomParameter
---@field Duration number
---@field CustomParams ULuaArrayHelper<FScreenAppearanceParam>
FScreenAppearanceCustomParameter = {}


---@class FPEBuffScreenParticleConfig
---@field ParticleType EScreenParticleType
---@field LinearFadeParameter FScreenAppearanceLinearFadeParameter
---@field BreathFadeParameter FScreenAppearanceBreathFadeParameter
---@field BreathRotationParameter FScreenAppearanceBreathRotationParameter
---@field VerticalFlowParameter FScreenAppearanceVerticalFlowParameter
---@field CustomParameter FScreenAppearanceCustomParameter
---@field DestroyOnTaskEnd boolean
FPEBuffScreenParticleConfig = {}
