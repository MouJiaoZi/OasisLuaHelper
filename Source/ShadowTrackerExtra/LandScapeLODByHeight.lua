---@meta

---@class FHeightLOD
---@field Height number
---@field LOD number
FHeightLOD = {}


---@class ULandScapeLODByHeight: UActorComponent
---@field heightLODMapping ULuaArrayHelper<FHeightLOD>
---@field CheckInternal number
---@field CurrentGroundHeight number
local ULandScapeLODByHeight = {}

function ULandScapeLODByHeight:Start() end

function ULandScapeLODByHeight:Stop() end

function ULandScapeLODByHeight:MappingLODByHeight() end
