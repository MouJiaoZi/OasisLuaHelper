---@meta

---@class AMuseumGridFactory: AActivityBaseActor
---@field BornPosArr ULuaArrayHelper<FVector>
---@field bBornStep boolean
local AMuseumGridFactory = {}

function AMuseumGridFactory:TriggerSpawn() end

---@param index number
function AMuseumGridFactory:SpawnNextRowGrid(index) end

---@param pos FVector
---@param index number
---@param bSolid boolean
function AMuseumGridFactory:SpawnMuseumGrid(pos, index, bSolid) end

function AMuseumGridFactory:SpawnAllGrid() end
