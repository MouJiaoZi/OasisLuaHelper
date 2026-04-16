---@meta

---@class ETeamMatchStageType
---@field TeamMatchStageType_0 number @Invalid
---@field TeamMatchStageType_1 number @Invalid
---@field TeamMatchStageType_2 number @Invalid
---@field TeamMatchStageType_3 number @Invalid
---@field TeamMatchStageType_4 number @Invalid
---@field TeamMatchStageType_5 number @Invalid
---@field TeamMatchStageType_6 number @Invalid
---@field TeamMatchStageType_7 number @Invalid
---@field TeamMatchStageType_8 number @Invalid
---@field TeamMatchStageType_9 number @Invalid
---@field TeamMatchStageType_10 number @Invalid
---@field TeamMatchStageType_11 number @Invalid
---@field TeamMatchStageType_12 number @Invalid
---@field TeamMatchStageType_13 number @Invalid
---@field TeamMatchStageType_14 number @Invalid
---@field TeamMatchStageType_15 number @Invalid
ETeamMatchStageType = {}


---@class ETeamMatchCampType
---@field Invalid number
---@field Red number
---@field Blue number
ETeamMatchCampType = {}


---@class FTeamMatchStage
---@field Stage string
---@field LuaPath string
---@field Time number
---@field AllowStages ULuaArrayHelper<ETeamMatchStageType>
FTeamMatchStage = {}


---@class UTeamMatchGameplayStatics: UBlueprintFunctionLibrary
local UTeamMatchGameplayStatics = {}
