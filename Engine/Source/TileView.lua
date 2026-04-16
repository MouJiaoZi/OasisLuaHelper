---@meta

---A flow panel that presents the contents as a set of tiles all uniformly sized.
---@class UTileView: UTableViewBase
---@field ItemWidth number
---@field ItemHeight number
---@field Items ULuaArrayHelper<UObject>
---@field SelectionMode ESelectionMode
---@field OnGenerateTileEvent FOnGenerateRowUObject
local UTileView = {}

---Set item width
---@param Width number
function UTileView:SetItemWidth(Width) end

---Set item height
---@param Height number
function UTileView:SetItemHeight(Height) end

---Refreshes the list
function UTileView:RequestListRefresh() end
