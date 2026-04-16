---@meta

---@class USTBaseBuffManager: UObject
---@field BuffListTemplateToIDs ULuaMapHelper<USTBaseBuffList, number>
---@field BuffInstancedTemplateMap ULuaMapHelper<number, USTBaseBuff>
---@field AllBuffIDNameMap ULuaMapHelper<number, string>
---@field BuffManagerBlueprintPath string
local USTBaseBuffManager = {}


---@class UBuffCommandlet: UCommandlet
local UBuffCommandlet = {}


---@class UBuffEventActionCommandlet: UCommandlet
local UBuffEventActionCommandlet = {}


---@class UFindBuffsByActionNameCommandlet: UCommandlet
local UFindBuffsByActionNameCommandlet = {}
