---@meta

---@class UMapStaticUILogic: UUAEUserWidget
---@field MapItemPool2 ULuaMapHelper<number, UUIDuplicatedItemPool>
---@field allItem2 ULuaMapHelper<number, UUserWidget>
local UMapStaticUILogic = {}

---@param itemType number
---@param itemID number
---@return number
function UMapStaticUILogic:GetItemMapID2(itemType, itemID) end

---@param itemType number
---@param itemID number
function UMapStaticUILogic:RemoveMapStaticItem2(itemType, itemID) end
