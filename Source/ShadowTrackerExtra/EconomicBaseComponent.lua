---@meta

---@class FEcoTypeConfigStruct
---@field ParamToMoney ULuaMapHelper<number, number>
---@field ParamToID ULuaMapHelper<number, number>
FEcoTypeConfigStruct = {}


---@class UEconomicBaseComponent: UActorComponent
---@field MultiAllEconomic number
---@field EconomictypeRealMap ULuaMapHelper<number, number>
---@field EcoTypeParmRealMap ULuaMapHelper<number, FEcoTypeConfigStruct>
---@field EconomictypeTips ULuaMapHelper<number, string>
---@field EconomicDataTableName string
---@field PlayerEconomic ULuaMapHelper<string, number>
local UEconomicBaseComponent = {}

---@param Player ASTExtraPlayerController
---@param IncreaseMoney number
---@param type number
function UEconomicBaseComponent:IncreasePlayerEconomic(Player, IncreaseMoney, type) end

---@param Player ASTExtraPlayerController
---@param UpdateMoney number
function UEconomicBaseComponent:SetPlayerEconomic(Player, UpdateMoney) end

---@param Player ASTExtraPlayerController
---@param DecreaseMoney number
---@return boolean
function UEconomicBaseComponent:DeCreasePlayerEconomicNotBlowZero(Player, DecreaseMoney) end

---@param Player ASTExtraPlayerController
---@param type number
---@param Multi number
function UEconomicBaseComponent:IncreasePlayerEconomicByEconomictype(Player, type, Multi) end

function UEconomicBaseComponent:InitEconomictypeRealMap() end

function UEconomicBaseComponent:DebugEconomicInfo() end

---@param Player ASTExtraPlayerController
function UEconomicBaseComponent:SetPlayerEconomicToZero(Player) end

---@param Player ASTExtraPlayerController
function UEconomicBaseComponent:ClearPlayerMoneyTypeCache(Player) end
