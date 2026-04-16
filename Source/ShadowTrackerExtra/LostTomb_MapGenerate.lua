---@meta

---@class FLostTomb_PathLimit
---@field X number
---@field Y number
---@field Z number
---@field W number
FLostTomb_PathLimit = {}


---@class FLostTomb_LevelData
---@field SizeXY FVector2D
---@field Limit FLostTomb_PathLimit
---@field RotateCount number
FLostTomb_LevelData = {}


---@class FLostTomb_MapData
---@field LevelList ULuaMapHelper<number, FLostTomb_LevelData>
FLostTomb_MapData = {}


---@class FLostTomb_MapDetail
---@field SizeXY FVector2D
---@field MapRowCol FIntPoint
---@field LimitPathNum number
---@field ForceLimit ULuaMapHelper<number, FLostTomb_PathLimit>
---@field MapDataList ULuaArrayHelper<FLostTomb_MapData>
FLostTomb_MapDetail = {}


---@class ULostTomb_MapTable: UDataAsset
---@field MapDetail FLostTomb_MapDetail
local ULostTomb_MapTable = {}

function ULostTomb_MapTable:GenerateMap() end
