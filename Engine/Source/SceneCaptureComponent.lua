---@meta

---@class ESceneCapturePrimitiveRenderMode
---@field PRM_LegacySceneCapture number @Legacy
---@field PRM_RenderScenePrimitives number @Render primitives in the scene, minus HiddenActors.
---@field PRM_UseShowOnlyList number @Render only primitives in the ShowOnlyActors list, or components specified with ShowOnlyComponent().
ESceneCapturePrimitiveRenderMode = {}


---@class FEngineShowFlagsSetting
---@field ShowFlagName string
---@field Enabled boolean
FEngineShowFlagsSetting = {}


---@class USceneCaptureComponent: USceneComponent
---@field PrimitiveRenderMode ESceneCapturePrimitiveRenderMode @Controls what primitives get rendered into the scene capture.
---@field HiddenComponents ULuaArrayHelper<UPrimitiveComponent> @The components won't rendered by current component.
---@field HiddenActors ULuaArrayHelper<AActor> @The actors to hide in the scene capture.
---@field ShowOnlyComponents ULuaArrayHelper<UPrimitiveComponent> @The only components to be rendered by this scene capture, if PrimitiveRenderMode is set to UseShowOnlyList.
---@field bShowAttachedActor boolean
---@field ShowOnlyActors ULuaArrayHelper<AActor> @The only actors to be rendered by this scene capture, if PrimitiveRenderMode is set to UseShowOnlyList.
---@field bCaptureEveryFrame boolean @Whether to update the capture's contents every frame.  If disabled, the component will render once on load and then only when moved.
---@field bCaptureOnMovement boolean @Whether to update the capture's contents on movement.  Disable if you are going to capture manually from blueprint.
---@field bAlwaysPersistRenderingState boolean @Whether to persist the rendering state even if bCaptureEveryFrame==false.  This allows velocities for Motion Blur and Temporal AA to be computed.
---@field LODDistanceFactor number @Scales the distance used by LOD. Set to values greater than 1 to cause the scene capture to use lower LODs than the main view to speed up the scene capture pass.
---@field MaxViewDistanceOverride number @if > 0, sets a maximum render distance override.  Can be used to cull distant objects from a reflection if the reflecting plane is in an enclosed area like a hallway or room
---@field CaptureSortPriority number @Capture priority within the frame to sort scene capture on GPU to resolve interdependencies between multiple capture components. Highest come first.
---@field ShowFlagSettings ULuaArrayHelper<FEngineShowFlagsSetting> @ShowFlags for the SceneCapture's ViewFamily, to control rendering settings for this view. Hidden but accessible through details customization
---@field LightingChannels FLightingChannels
---@field bUseLightingChannels boolean
local USceneCaptureComponent = {}

---Adds the component to our list of hidden components.
---@param InComponent UPrimitiveComponent
function USceneCaptureComponent:HideComponent(InComponent) end

---Adds all primitive components in the actor to our list of hidden components.
---@param InActor AActor
function USceneCaptureComponent:HideActorComponents(InActor) end

---Adds the component to our list of show-only components.
---@param InComponent UPrimitiveComponent
function USceneCaptureComponent:ShowOnlyComponent(InComponent) end

---Adds all primitive components in the actor to our list of show-only components.
---@param InActor AActor
function USceneCaptureComponent:ShowOnlyActorComponents(InActor) end

---Removes a component from the Show Only list.
---@param InComponent UPrimitiveComponent
function USceneCaptureComponent:RemoveShowOnlyComponent(InComponent) end

---Removes a actor's components from the Show Only list.
---@param InActor AActor
function USceneCaptureComponent:RemoveShowOnlyActorComponents(InActor) end

---Clears the Show Only list.
function USceneCaptureComponent:ClearShowOnlyComponents() end

---Clears the hidden list.
function USceneCaptureComponent:ClearHiddenComponents() end

---Changes the value of TranslucentSortPriority.
---@param NewCaptureSortPriority number
function USceneCaptureComponent:SetCaptureSortPriority(NewCaptureSortPriority) end
