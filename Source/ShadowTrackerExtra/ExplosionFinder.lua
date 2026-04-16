---@meta

---@class EFinderShape
---@field Line number
---@field Box number
---@field Sphere number
---@field Capsule number
---@field Cone number
---@field Fan number
---@field Complex number
EFinderShape = {}


---@class FExplosionBranch
---@field ActorFilterList ULuaArrayHelper<UActorFilter>
---@field ExplosionEffectApplierList ULuaArrayHelper<UExplosionEffectApplier>
---@field FalseBranchApplierList ULuaArrayHelper<UExplosionEffectApplier>
FExplosionBranch = {}


---@class FExplosionBranches
---@field Branches ULuaArrayHelper<FExplosionBranch>
FExplosionBranches = {}


---@class FExplosionFinderWrapper
FExplosionFinderWrapper = {}


---@class UExplosionFinderShape: UObject
local UExplosionFinderShape = {}


---@class UExplosionFinderShape_Sphere: UExplosionFinderShape
---@field Radius number
local UExplosionFinderShape_Sphere = {}


---@class UExplosionFinderShape_Box: UExplosionFinderShape
---@field Extent FVector
local UExplosionFinderShape_Box = {}


---@class UExplosionFinderShape_Capsule: UExplosionFinderShape
---@field HalfHeight number
---@field Radius number
local UExplosionFinderShape_Capsule = {}


---@class UExplosionFinderShape_Teammate: UExplosionFinderShape
---@field bIncludeSelf boolean
local UExplosionFinderShape_Teammate = {}


---@class UFinderParamProvider: UObject
---@field bReturnPhysMaterial number
---@field MaskFilter number
local UFinderParamProvider = {}


---@class UFinderParamProvider_Channel: UFinderParamProvider
---@field CollisionChannel ECollisionChannel
local UFinderParamProvider_Channel = {}


---@class UFinderParamProvider_ObjectType: UFinderParamProvider
---@field ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
local UFinderParamProvider_ObjectType = {}


---@class UExplosionFinder: UObject, IExplosionFinderInterface
---@field ActorFilters ULuaArrayHelper<UActorFilter>
---@field ExplosionEffectApplier FExplosionBranches
---@field bIterateVisibilityTest boolean
---@field bUseSurfaceDetect boolean
---@field LargeBoxEdgeThreshold number
---@field bDistinguishPhysMaterial boolean
---@field bEnableLandscapeDeform boolean
---@field DeformMaxRadius number
---@field DeformMaxDepth number
---@field DeformDelayTime number
---@field bSameTargetTakeEffectOnce boolean
---@field FinderShape EFinderShape
---@field ExplosionBranches ULuaArrayHelper<FExplosionBranch>
---@field Origin FVector
---@field Direction FVector
---@field DataVersion number
local UExplosionFinder = {}

---@param InParams FExplosionFinderParams
---@param OutHits ULuaArrayHelper<FHitResult>
---@return boolean
function UExplosionFinder:K2_Find(InParams, OutHits) end

---@param InParams FExplosionFinderParams
---@param Hits ULuaArrayHelper<AActor>
---@return boolean
function UExplosionFinder:K2_FindAndApplyEffects(InParams, Hits) end

---@param InOrigin FVector
---@param InDirection FVector
---@param InCauser AActor
---@param InInstigator AController
---@param OutHits ULuaArrayHelper<FHitResult>
---@return boolean
function UExplosionFinder:Find(InOrigin, InDirection, InCauser, InInstigator, OutHits) end

---@param InOrigin FVector
---@param InDirection FVector
---@param InCauser AActor
---@param InInstigator AController
---@return boolean
function UExplosionFinder:FindAndApplyEffect(InOrigin, InDirection, InCauser, InInstigator) end

---@param Context UObject
function UExplosionFinder:Clear(Context) end

---@param InOrigin FVector
function UExplosionFinder:ApplyLandscapeDeform(InOrigin) end

---@param Extent FVector
function UExplosionFinder:SetBox(Extent) end

---@return FVector
function UExplosionFinder:GetExtent() end

---@return number
function UExplosionFinder:GetRadius() end
