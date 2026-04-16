---@meta

---@class UPropertyReplaceData: UObject
---@field MetaDataKey string
---@field MetaDataMemNameListKey string
---@field bNeedCustom boolean
---@field PropertyName2ClassStr ULuaMapHelper<string, string>
---@field PropertyName2MemNameListStr ULuaMapHelper<string, string>
local UPropertyReplaceData = {}


---@class UPropertyReplaceNetAlienationData: UDsGlobalNetAlienationData, ILuaInterface
---@field RepRegisterDataClassList ULuaArrayHelper<UClass>
local UPropertyReplaceNetAlienationData = {}

---@return string
function UPropertyReplaceNetAlienationData:GetLuaModule() end

---@param DataClass UClass
function UPropertyReplaceNetAlienationData:AddRepRegisterDataClassList(DataClass) end

function UPropertyReplaceNetAlienationData:OnRep_RepRegisterDataClassList() end

function UPropertyReplaceNetAlienationData:OnRep_RepRegisterDataClassList_BP() end

---@param DataClass UClass
function UPropertyReplaceNetAlienationData:MultiAddRepRegisterDataClassList_Reliable(DataClass) end

---@param DataClass UClass
function UPropertyReplaceNetAlienationData:MultiAddRepRegisterDataClassList_Unreliable(DataClass) end

---@param DataClass UClass
function UPropertyReplaceNetAlienationData:MultiAddRepRegisterDataClassList_BP(DataClass) end
