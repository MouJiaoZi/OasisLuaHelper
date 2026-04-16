---@meta

--- 初始化UI（唯一入口）
--- 参考 UGC_Common_Item_UIBP:SetItemInfo 设计
---@param Item number|table @品ID(number)或物品DefineID(table)
---@param Count number|nil @品数量（默认1）
---@param bHighlight boolean|nil @否高亮显示（默认true）
---@param OnSelect function|nil @择回调
---@param OnDetails function|nil @情回调
function UGC_PickUpItem_S_UIBP:InitUI(Item, Count, bHighlight, OnSelect, OnDetails) end