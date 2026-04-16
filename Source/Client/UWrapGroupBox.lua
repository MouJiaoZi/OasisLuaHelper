---@meta

---@class UWrapGroupBox: UWrapBox
---@field OnUpdateItem FOnUpdateItemDelegate
---@field ItemClass UUserWidget
---@field PreviewCount number
---@field LastItemClass UUserWidget
local UWrapGroupBox = {}

---@param __ItemCount number
function UWrapGroupBox:Reload(__ItemCount) end

---@param __ItemClass UUserWidget
function UWrapGroupBox:Reset(__ItemClass) end

---返回所有Item指针
---@param ResultItemList ULuaArrayHelper<UUserWidget>
function UWrapGroupBox:GetAllItems(ResultItemList) end
