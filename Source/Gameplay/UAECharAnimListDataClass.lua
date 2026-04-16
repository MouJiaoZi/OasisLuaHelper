---@meta

---@class FExtraAnimDataRecord
---@field AnimLayer number
---@field AnimDataConfigs ULuaArrayHelper<UExtraAnimDataConfigBase>
FExtraAnimDataRecord = {}


---@class FExtraAnimDataRecordArray
---@field AnimDataRecordArray ULuaArrayHelper<FExtraAnimDataRecord>
FExtraAnimDataRecordArray = {}


---@class UExtraAnimDataConfigBase: UObject
---@field ExtraAnimDataTypeName string
local UExtraAnimDataConfigBase = {}

---@param OwnerAnimList UUAECharAnimListCompBase
---@param RegistToAnimList UUAECharAnimListCompBase
---@return boolean
function UExtraAnimDataConfigBase:CanAddAnimData(OwnerAnimList, RegistToAnimList) end

---@param OwnerAnimList UUAECharAnimListCompBase
---@param RegistToAnimList UUAECharAnimListCompBase
---@return boolean
function UExtraAnimDataConfigBase:CanRemoveAnimData(OwnerAnimList, RegistToAnimList) end

---@param OwnerAnimList UUAECharAnimListCompBase
---@param RegistToAnimList UUAECharAnimListCompBase
function UExtraAnimDataConfigBase:OnAddAnimData(OwnerAnimList, RegistToAnimList) end

---@param OwnerAnimList UUAECharAnimListCompBase
---@param RegistToAnimList UUAECharAnimListCompBase
function UExtraAnimDataConfigBase:OnRemoveAnimData(OwnerAnimList, RegistToAnimList) end
