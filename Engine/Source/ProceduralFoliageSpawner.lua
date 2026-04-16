---@meta

---@class UProceduralFoliageSpawner: UObject
---@field RandomSeed number @The seed used for generating the randomness of the simulation.
---@field TileSize number @Length of the tile (in cm) along one axis. The total area of the tile will be TileSize*TileSize.
---@field NumUniqueTiles number @The number of unique tiles to generate. The final simulation is a procedurally determined combination of the various unique tiles.
---@field MinimumQuadTreeSize number @Minimum size of the quad tree used during the simulation. Reduce if too many instances are in splittable leaf quads (as warned in the log).
---@field FoliageTypes ULuaArrayHelper<FFoliageTypeObject> @The types of foliage to procedurally spawn.
---@field bNeedsSimulation boolean
local UProceduralFoliageSpawner = {}

---@param NumSteps number
function UProceduralFoliageSpawner:Simulate(NumSteps) end
