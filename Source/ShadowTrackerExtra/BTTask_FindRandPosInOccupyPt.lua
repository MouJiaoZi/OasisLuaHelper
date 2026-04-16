---@meta

---通过给定占点找出占点内随机的一个位置
---@class UBTTask_FindRandPosInOccupyPt: UBTTaskNode
---@field OutOccupyPointActor any @给定占点Actor黑板变量
---@field OutOccupyPos any @占点内随机位置Vector黑板变量
---@field MaxTryFindTime number @最大尝试寻找次数
---@field IngorePhysicVolumeBoxZ boolean
local UBTTask_FindRandPosInOccupyPt = {}
