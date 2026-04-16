---@meta

---检测怪物当前位置是否处于最远距离之外, 计算距离只考虑水平XY方向, 忽略垂直距离
---@class UBTService_Mob_CheckLocation: UBTService
---@field MaxAllowedDistanceFromSpawnPointSq number @允许移动的最大范围的平方
---@field bCheckInLivingRange boolean
local UBTService_Mob_CheckLocation = {}
