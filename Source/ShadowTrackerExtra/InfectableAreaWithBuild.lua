---@meta

---@class AInfectableAreaWithBuild: AVNInfectableArea, IBuildingActorInterface
---@field DamageableGameObjectTypeList ULuaArrayHelper<EDamageableGameObjectType>
---@field WorldSnapSetup FBuildingActorWorldSnapSetup
---@field bDeadAsShit boolean
---@field bImmuneToTeammate boolean
---@field bShouldSnapToWorldGrid boolean
---@field ReturnRate number
---@field ProhibitedActorTemplateList ULuaArrayHelper<UObject>
---@field ProhibitedActorTags ULuaArrayHelper<string>
---@field ProhibitedComponentTags ULuaArrayHelper<string>
---@field PickLocationIgnoreActorTags ULuaArrayHelper<string>
---@field PickLocationIgnoreComponentTags ULuaArrayHelper<string>
---@field bIsOverlapIgnoreOwner boolean
---@field OverlapIgnoreActorTags ULuaArrayHelper<string>
---@field OverlapIgnoreComponentTags ULuaArrayHelper<string>
---@field CanBuildUnderWater boolean
---@field bEnableUnderWaterDetection boolean
---@field VisibilitySkipTypes ULuaArrayHelper<UObject>
---@field UnderWaterMaxBuildDepth number
---@field DestroyedParticleTransformOffset FTransform
---@field PreBuildingEffectPath FSoftObjectPath
---@field PreBuildingEffectOffset FTransform
---@field DestroyBuildingEffectPath FSoftObjectPath
---@field PlacementBoxCenter FVector
---@field PlacementBoxExtent FVector
---@field Health number
---@field TraceStartOffset FVector
---@field MaxDeviation number
---@field MaxTraceDepth number
---@field bDoQuadTrace boolean
---@field bCollisionChannelCheck boolean
---@field AttachSocket string
---@field CheckCollisionChannel ECollisionChannel
---@field CheckCollisionRespon ULuaMapHelper<ECollisionChannel, ECollisionResponse>
---@field bUseControllerRotInFreeCameraView boolean
---@field RelatedSkillClass UObject
---@field bIsSelectPawnLocation boolean
---@field SelectPawnLocationPitchValue number
---@field bIsSkipAllVisibilityCheck boolean
---@field SkipAllVisibilityCheckClasses ULuaArrayHelper<UObject>
---@field ConstructingMode EBuildingActorConstructingMode
local AInfectableAreaWithBuild = {}

---@param DamagedActor AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function AInfectableAreaWithBuild:HandleBuildingTakeAnyDamage(DamagedActor, Damage, DamageType, InstigatedBy, DamageCauser) end

---@param health number
function AInfectableAreaWithBuild:OnBuildingActorDamaged(health) end
