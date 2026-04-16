---@meta

---@class FPainCausingWithBuff
---@field buffName string
---@field addLayer number
FPainCausingWithBuff = {}


---@class UPainCausingWithBuffVolComponent: UVNPainCausingVolComponent
---@field buffForAdd ULuaArrayHelper<FPainCausingWithBuff>
---@field buffForRemove ULuaArrayHelper<string>
---@field bRemoveAllBufferWhenDestroyed boolean
---@field bDontAddBuffWhenExist boolean
local UPainCausingWithBuffVolComponent = {}
