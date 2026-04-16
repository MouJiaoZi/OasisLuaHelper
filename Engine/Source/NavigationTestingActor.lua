---@meta

---@class ENavCostDisplay
---@field TotalCost number
---@field HeuristicOnly number
---@field RealCostOnly number
ENavCostDisplay = {}


---@class ANavigationTestingActor: AActor, INavAgentInterface, INavPathObserverInterface
---@field bActAsNavigationInvoker number
---@field NavAgentProps FNavAgentProperties
---@field QueryingExtent FVector
---@field ProjectedLocation FVector
---@field ProjectedTile FIntVector
---@field ProjectedPloyId number
---@field bProjectedLocationValid number
---@field bSearchStart number
---@field bUseHierarchicalPathfinding number
---@field bGatherDetailedInfo number @if set, all steps of A* algorithm will be accessible for debugging
---@field bDrawDistanceToWall number
---@field bShowNodePool number @show polys from open (orange) and closed (yellow) sets
---@field bShowBestPath number @show current best path
---@field bShowDiffWithPreviousStep number @show which nodes were modified in current A* step
---@field bShouldBeVisibleInGame number
---@field CostDisplayMode ENavCostDisplay @determines which cost will be shown
---@field TextCanvasOffset FVector2D @text canvas offset to apply
---@field bPathExist number
---@field bPathIsPartial number
---@field bPathSearchOutOfNodes number
---@field PathfindingTime number @Time in micro seconds
---@field PathCost number
---@field PathfindingSteps number
---@field FilterClass UNavigationQueryFilter @"None" will result in default filter being used
---@field ShowStepIndex number
---@field OffsetFromCornersDistance number
local ANavigationTestingActor = {}
