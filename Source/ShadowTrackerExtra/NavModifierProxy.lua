---@meta

---@class ELogicAreaType
---@field BreakableWall number @可破坏墙壁
---@field BreakableHouse number @可炸毁房子
ELogicAreaType = {}


---@class ANavModifierProxy: AActor
---@field X number @The size of the cube in the X dimension
---@field Y number @The size of the cube in the Y dimension
---@field Z number @The size of the cube in the Z dimension
---@field LogicAreaID number
---@field LogicAreaType ELogicAreaType
---@field AreaClass UNavArea
local ANavModifierProxy = {}
