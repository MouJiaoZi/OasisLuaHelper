---@meta

---获取指定角度内的随机点
---@class UBTTask_GetRandomLocationWithAngle: UBTTaskNode
---@field AlwaysSuccess boolean
---@field bUseRadiusBBK boolean
---@field FixedRadius number
---@field RadiusBBK any
---@field AngleLimit FVector2D
---@field SearchLimit number
---@field bCheckAngleWhenSearchInBox boolean
---@field MinDistSq number
---@field FilterClass UNavigationQueryFilter
---@field InOriginLoc any
---@field OutTargetRandomLoc any
local UBTTask_GetRandomLocationWithAngle = {}
