---@meta

---@class EDir
---@field EDir_Origin number
---@field EDir_Forward number
---@field EDir_Backward number
---@field EDir_Right number
---@field EDir_Left number
EDir = {}


---@class UBTTask_UGC_GetRandomLocation: UBTTaskNode
---@field DirectionTypes ULuaArrayHelper<EDir>
---@field RadiusMin number
---@field RadiusMax number
---@field InOriginLoc any
---@field Distance number
---@field bProjectTargetToFloor boolean
---@field TraceFloorChannel ECollisionChannel
---@field bTestPathExist boolean
---@field OutTargetRandomLoc any
local UBTTask_UGC_GetRandomLocation = {}
