---@meta

---物品详情对比面板定义
local UGC_ItemDetailsCompare_Open_UIBP = nil

---开放化接口：InitUI
---初始化对比面板，最多接收两个物品
---@param Item1 FItemDefineID|number @第一个物品（FItemDefineID或ItemID，必选）
---@param DataType1 string @第一个物品的DataType（EItemDataTypeStrs枚举值，必选）
---@param Item2 FItemDefineID|number|nil @第二个物品（可选，nil时隐藏右侧面板）
---@param DataType2 string|nil @第二个物品的DataType（可选）
---@param Select boolean|nil @当前选中哪个物品（true=第一个，false=第二个，nil=都不选中，可选）
function UGC_ItemDetailsCompare_Open_UIBP:InitUI(Item1, DataType1, Item2, DataType2, Select) end