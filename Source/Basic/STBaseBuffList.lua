---@meta

---@class FSTBaseBuffTemplateItem
---@field ID number
---@field Name string
---@field bPreloadingOnClient boolean
---@field BuffTemplate USTBaseBuff
---@field BuffListName string
FSTBaseBuffTemplateItem = {}


---@class USTBaseBuffList: UObject
---@field BuffListName string
---@field BuffList ULuaArrayHelper<FSTBaseBuffTemplateItem>
local USTBaseBuffList = {}
