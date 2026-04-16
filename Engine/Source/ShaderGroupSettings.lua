---@meta

---@class FShaderGroupDesc
---@field Name string
---@field Exclude ULuaArrayHelper<string>
---@field Include ULuaArrayHelper<string>
---@field IncludePath ULuaArrayHelper<string>
---@field Prerequisite ULuaArrayHelper<string>
---@field Parent ULuaArrayHelper<string>
---@field Quality ULuaArrayHelper<string>
FShaderGroupDesc = {}


---@class FShaderLevel
FShaderLevel = {}


---@class FShaderPak
FShaderPak = {}


---@class UShaderGroupSettings: UObject
---@field Groups_IOS ULuaArrayHelper<FShaderGroupDesc>
---@field Groups_AOS ULuaArrayHelper<FShaderGroupDesc>
---@field Levels_IOS ULuaArrayHelper<FShaderLevel>
---@field Levels_AOS ULuaArrayHelper<FShaderLevel>
---@field Levels_PC ULuaArrayHelper<FShaderLevel>
---@field Paks_IOS ULuaArrayHelper<FShaderPak>
---@field Paks_AOS ULuaArrayHelper<FShaderPak>
---@field Paks_PC ULuaArrayHelper<FShaderPak>
local UShaderGroupSettings = {}
