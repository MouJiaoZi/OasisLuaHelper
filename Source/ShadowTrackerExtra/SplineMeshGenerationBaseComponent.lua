---@meta

---@class USplineMeshGenerationBaseComponent: UActorComponent
---@field OwnerActorComponentNames ULuaArrayHelper<string>
---@field bOnlyLoadForDevelopment number
---@field bNeedLoadForClient number
---@field bNeedLoadForServer number
---@field bEditorAdjustAttachedSceneLocationToCenter number
---@field OwnerActorNameComponents ULuaMapHelper<string, UActorComponent>
local USplineMeshGenerationBaseComponent = {}

function USplineMeshGenerationBaseComponent:UserConstructionScript() end

function USplineMeshGenerationBaseComponent:UserConstructionScript_Implementation() end

---@param SceneComponent USceneComponent
---@param AttachToSceneComponent USceneComponent
function USplineMeshGenerationBaseComponent:UserConstructionScript_PostAddSceneComponent(SceneComponent, AttachToSceneComponent) end

---@param Owner AActor
function USplineMeshGenerationBaseComponent:InitializeNameComponents(Owner) end
