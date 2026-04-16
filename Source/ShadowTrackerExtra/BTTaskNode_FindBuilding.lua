---@meta

---@class FFindBuildingRatingConfig
---@field Rating number
---@field SearchRadius number
FFindBuildingRatingConfig = {}


---@class UBTTaskNode_FindBuilding: UBTTask_BlackboardBase
---@field RatingConfig ULuaArrayHelper<FFindBuildingRatingConfig>
---@field OnlySafeBuildings boolean
---@field MaxMoveSpeed number
---@field findSpotXYOffset number
---@field findSpotZOffset number
---@field GoBackThreshold number
local UBTTaskNode_FindBuilding = {}
