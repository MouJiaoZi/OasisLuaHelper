---@meta

--- 物品批量选择弹窗UI类定义
local UGC_ItemBatchSelect_Open_UIBP = nil

--- 构造函数，UI创建时自动调用
--- 功能: 执行初始化并设置默认参数
function UGC_ItemBatchSelect_Open_UIBP:Construct() end

--- 开放化接口：InitUI（统一入口）
--- 功能: 初始化并显示弹窗
---@param ItemList table @品列表 {ItemDefineID, ItemID, MaxCount, DefaultCount}，优先使用ItemDefineID，内部使用Common_Item显示
---@param ConfirmCallback function @认回调函数，参数为选择的数量表
---@param CloseCallback function @闭弹窗回调函数（可选）
---@param Title string @窗标题（可选，默认"批量选择"）
---@param AllTipText string @部按钮文本（可选，默认"全部"）
---@param ConfirmText string @认按钮文本（可选，默认"确认"）
---@param ItemClassPath string @表项ItemClass路径（可选，用于动态设置ReuseList的ItemClass）
function UGC_ItemBatchSelect_Open_UIBP:InitUI(ItemList, ConfirmCallback, CloseCallback, Title, AllTipText, ConfirmText, ItemClassPath) end

--- 隐藏当前面板
--- 功能: 隐藏弹窗并从父控件中移除（兼容AddToViewport和UISlot两种挂载方式）
function UGC_ItemBatchSelect_Open_UIBP:HidePanel() end

--- 动态设置ItemClass并刷新列表
--- 功能: 异步加载ItemClass，设置到ReuseList后刷新列表
---@param classPath string @temClass路径
function UGC_ItemBatchSelect_Open_UIBP:SetItemClassAndReload(classPath) end