---@meta

---@class ESpeedTreeGeometryType
---@field STG_Branch number @Branch
---@field STG_Frond number @Frond
---@field STG_Leaf number @Leaf
---@field STG_FacingLeaf number @Facing Leaf
---@field STG_Billboard number @Billboard
ESpeedTreeGeometryType = {}


---@class ESpeedTreeWindType
---@field STW_None number @None
---@field STW_Fastest number @Fastest
---@field STW_Fast number @Fast
---@field STW_Better number @Better
---@field STW_Best number @Best
---@field STW_Palm number @Palm
---@field STW_BestPlus number @BestPlus
ESpeedTreeWindType = {}


---@class ESpeedTreeLODType
---@field STLOD_Pop number @Pop
---@field STLOD_Smooth number @Smooth
ESpeedTreeLODType = {}


---@class UMaterialExpressionSpeedTree: UMaterialExpression
---@field GeometryType ESpeedTreeGeometryType
---@field WindType ESpeedTreeWindType
---@field LODType ESpeedTreeLODType
---@field BillboardThreshold number
---@field bAccurateWindVelocities boolean
local UMaterialExpressionSpeedTree = {}
