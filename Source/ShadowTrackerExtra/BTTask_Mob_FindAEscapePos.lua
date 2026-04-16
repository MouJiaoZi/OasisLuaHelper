---@meta

---@class UBTTask_Mob_FindAEscapePos: UBTTaskNode
---@field EscapeFromBBKey any @逃跑远离对象
---@field OutEscapePos any @逃离位置点Vector黑板变量
---@field MinEscapeDistance number @最近逃跑距离(厘米)
---@field MaxEscapeDistance number @最远逃跑距离(厘米)
---@field EscapeAreaAngle number @逃跑区域角度（与目标反向）
---@field MaxSearchTime number @最大搜索次数
---@field bNeedFinalPointOnNav boolean @最终点是否需要在Navmesh上
---@field TraceHeightOffset number
---@field bDoOnlyStaticTrace boolean @只做静态物体检测(忽略水)
---@field bDoWaterTest boolean @是否进行水体检测（为true不能找水中的）
---@field bLimitPosInOwnerLivingRange boolean
---@field bDebugDraw boolean
---@field DebugDrawPointTime number
local UBTTask_Mob_FindAEscapePos = {}
