---@meta

---@class FItemSpecialData_BloodDiamondPosData
---@field Position number
---@field ColorID number
FItemSpecialData_BloodDiamondPosData = {}


---@class FItemSpecialData_BloodDiamondData
---@field Inlay_times number
---@field ItemID number
---@field PosDataArray ULuaArrayHelper<FItemSpecialData_BloodDiamondPosData>
FItemSpecialData_BloodDiamondData = {}


---@class FItemSpecialData_EscapeMechaItemColorData
---@field ColorNameID number
---@field ColorID number
FItemSpecialData_EscapeMechaItemColorData = {}


---@class FItemSpecialData_EscapeMechaItemData
---@field ItemID number
---@field Grade number
---@field Wearout number
---@field Colors ULuaArrayHelper<FItemSpecialData_EscapeMechaItemColorData>
FItemSpecialData_EscapeMechaItemData = {}


---@class FItemSpecialData_EscapeMechaData
---@field MechaDataItemList ULuaArrayHelper<FItemSpecialData_EscapeMechaItemData>
FItemSpecialData_EscapeMechaData = {}


---@class UItemSpecialDataManager: UObject
---@field BloodDiamondDataMap ULuaMapHelper<number, FItemSpecialData_BloodDiamondData>
---@field OnBloodDiamondDataChanged FOnBloodDiamondDataChangeDelegate
---@field OnEscapeMechaDataChanged FOnMechaSkinDataChangeDelegate
---@field EscapeMechaDataMap ULuaMapHelper<number, FItemSpecialData_EscapeMechaData>
local UItemSpecialDataManager = {}

---@param Key number
---@param NewData FItemSpecialData_BloodDiamondData
function UItemSpecialDataManager:AddOrUpdateBloodDiamondDataAndBroadCast(Key, NewData) end

---@param Key number
---@param NewData FItemSpecialData_EscapeMechaItemData
function UItemSpecialDataManager:AddOrUpdateMechaSkinDataAndBroadCast(Key, NewData) end
