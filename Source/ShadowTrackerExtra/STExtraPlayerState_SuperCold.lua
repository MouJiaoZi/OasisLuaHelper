---@meta

---@class ASTExtraPlayerState_SuperCold: ASTExtraPlayerState
---@field MakeFiresNum number
---@field DeerBBQNum number
---@field ChichenBBQNum number
---@field UseKFNum number @ҵڣʹú͵
---@field UseUAVNum number
---@field KFUsingTime number
---@field UAVUsingTime number
---@field SkateboardUsingCount number
---@field SkateboardUsingTime number
---@field SkateboardUsingDistance number
---@field AnimalKillFlow ULuaArrayHelper<FKillAnimalData>
---@field UAVRecord ULuaSetHelper<number>
---@field KFRecord ULuaSetHelper<number>
local ASTExtraPlayerState_SuperCold = {}

---@param Type number
---@param Num number
function ASTExtraPlayerState_SuperCold:RecordKillAnimalInfo(Type, Num) end

---@param UAVID number
function ASTExtraPlayerState_SuperCold:RecordUseUAVInfo(UAVID) end

---@param KFID number
function ASTExtraPlayerState_SuperCold:RecordUseKFInfo(KFID) end

---@param AnimalType number
---@return number
function ASTExtraPlayerState_SuperCold:GetKillAnimalNumByType(AnimalType) end
