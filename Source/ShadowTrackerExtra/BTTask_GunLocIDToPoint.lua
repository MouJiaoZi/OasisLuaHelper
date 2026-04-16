---@meta

---@class EGunLocIDToPointType
---@field Location number
---@field FocusPoint number
---@field RunAwayPoint number
EGunLocIDToPointType = {}


---@class UBTTask_GunLocIDToPoint: UBTTaskNode
---@field IDToPointType EGunLocIDToPointType
---@field GunLocIDBBKey any
---@field TargetPointBBKey any
---@field RunAwayDistance number
---@field RunAwayRandomRadius number
---@field RunAwayRandomTimes number
local UBTTask_GunLocIDToPoint = {}
