---@meta

---@class ALevelBlockGizmoActor: AActor
local ALevelBlockGizmoActor = {}


---@class ULevelBlockGizmoComponent: UPrimitiveComponent
---@field SourceLandscapeActor TLazyObjectPtr<ALandscape>
---@field TargetLandscapeActor TLazyObjectPtr<ALandscape>
---@field Extent FVector2D
---@field TargetLandscapeRect FIntPoint
---@field bHeightmap number
---@field bWeightmaps number
---@field bVisibility number
---@field bHideFoliage number
---@field BoxThickness number
local ULevelBlockGizmoComponent = {}
