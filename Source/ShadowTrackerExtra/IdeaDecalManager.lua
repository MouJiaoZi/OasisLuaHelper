---@meta

---@class EIdeaDecalParentType
---@field NoParent number
---@field MovableStaticMesh number
---@field SkeletalMesh number
---@field DestroyableStaticMesh number
EIdeaDecalParentType = {}


---@class FIdeaDecalInfo
---@field Id number
---@field Transform FTransform
---@field ParentType EIdeaDecalParentType
---@field Parent UPrimitiveComponent
---@field Instancemesh number
FIdeaDecalInfo = {}


---@class FDecalBlock
FDecalBlock = {}


---@class UIdeaDecalRenderComponent: URuntimeMeshComponent
local UIdeaDecalRenderComponent = {}


---@class AIdeaDecalManagerBase: AActor
---@field DecalMaterialsLookupTable ULuaMapHelper<FDecalBlock, UMaterialInstanceDynamic>
---@field DecalComponents ULuaArrayHelper<UIdeaDecalRenderComponent> @Decal information array that need to be rendering
local AIdeaDecalManagerBase = {}

---@param DecalTrans FTransform
---@param DecalMaterialInstance UMaterialInstanceDynamic
---@param DecalUVOffset FVector2D
---@param DecalUVScale FVector2D
---@param AutoDisappearTime number
---@param TraceAxis number
---@param bNegativeDir boolean
---@param bIgnoreTransForEndPosition boolean
function AIdeaDecalManagerBase:CreateNewDecal(DecalTrans, DecalMaterialInstance, DecalUVOffset, DecalUVScale, AutoDisappearTime, TraceAxis, bNegativeDir, bIgnoreTransForEndPosition) end

---Remove decal info by decal info id
---@param Id number
---@param NeedUpdate boolean
---@return boolean
function AIdeaDecalManagerBase:RemoveDecal(Id, NeedUpdate) end


---@class AIdeaDecalManager: AIdeaDecalManagerBase
local AIdeaDecalManager = {}
