---@meta

---@class FDecalData
---@field DecalSize number @quad size (width & height)
---@field LifeSpan number @lifespan
---@field ImpactEffectStartScaleDistance number
---@field ImpactEffectEndScaleDistance number
---@field ImpactEffectStartScaleValue number
---@field ImpactEffectEndScaleValue number
FDecalData = {}


---@class FHitEffectInstanceData
---@field InHitEffectTag string
---@field bHitCharacter boolean
---@field bIsUnderWater boolean
---@field InstanceTransform FTransform
---@field SurfaceHit FBulletHitInfoUploadData
---@field bAudioOnly boolean
---@field DecalScale FVector
---@field ImpactActor AActor
---@field TargetImpactComp UPrimitiveComponent
---@field bFXOnly boolean
---@field bIsAutonomousClient boolean
---@field bLocalControlled boolean
---@field HitDir2NormalDegree number
FHitEffectInstanceData = {}


---@class FHitEffectItemDataList
---@field ItemDataListMapNew ULuaMapHelper<EPhysicalSurface, UParticleSystem>
FHitEffectItemDataList = {}


---@class UHitEffectDataAsset: UDataAsset
---@field HitEffectDirectionOverrideDataMap ULuaMapHelper<FVector2D, FHitEffectItemDataList>
---@field bForceDefaultFX boolean
---@field ExtendFleshFX ULuaMapHelper<string, UParticleSystem>
---@field SwitchGroup string
---@field SwitchState_1 string
---@field SwitchState_2 string
---@field AdditionalRandomSoundProbability number
---@field DefaultDecal any
---@field ConcreteDecal any
---@field DirtDecal any
---@field WaterDecal any
---@field MetalDecal any
---@field WoodDecal any
---@field GrassDecal any
---@field GlassDecal any
---@field FleshDecal any
---@field FleshDecalAutomonous any
---@field SteelDecal any
---@field SandbagDecal any
---@field SandDecal any
---@field ClothDecal any
---@field PlasticDecal any
---@field LeatherDecal any
---@field CeramicsDecal any
---@field PaperDecal any
---@field StoneDecal any
---@field SnowDecal any
---@field PopCanDecal any
---@field PyreflyDecal any
---@field LeafDecal any
---@field CarDecal any
---@field AsphaltDecal any
---@field IceDecal any
---@field FoodDecal any
---@field IceEngravingDecal any
---@field SteelFeedbackFxDecal any
---@field DefaultFeedbackFxDecal any
local UHitEffectDataAsset = {}
