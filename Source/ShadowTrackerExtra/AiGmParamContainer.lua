---@meta

---@class FGMMetaDatas
---@field MetaDataMap ULuaMapHelper<string, string>
FGMMetaDatas = {}


---@class FGMEnumMetaDatas
---@field MetaDatas ULuaArrayHelper<FGMMetaDatas>
FGMEnumMetaDatas = {}


---@class UAiGmParamContainer: UUserWidget
---@field ParamWidgets ULuaArrayHelper<UAiGmParamBase>
---@field ParamClsMap ULuaMapHelper<EAiGMParamType, UAiGmParamBase>
---@field FunctionMetaDataMap ULuaMapHelper<string, FGMMetaDatas>
---@field EnumMetaDataMap ULuaMapHelper<string, FGMEnumMetaDatas>
local UAiGmParamContainer = {}
