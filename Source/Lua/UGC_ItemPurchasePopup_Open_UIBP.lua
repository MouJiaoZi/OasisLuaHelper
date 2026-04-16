---@meta

--- 物品购买弹窗UI类定义
local UGC_ItemPurchasePopup_Open_UIBP = nil

--- 构造函数，UI创建时自动调用
--- 功能: 执行初始化并设置默认参数
function UGC_ItemPurchasePopup_Open_UIBP:Construct() end

--- 开放化接口：InitUI（统一入口）
--- 功能: 初始化并显示购买弹窗
---@param ItemData number|FItemDefineID @品ID(number)或物品定义结构体(FItemDefineID)
---@param DefaultCount number @认选择数量
---@param MaxCount number @大可选数量
---@param PriceIcon Texture|string @币图标（可选）
---@param Price number @品单价
---@param ConfirmCallback function @认回调函数，参数为选择的数量
---@param CloseCallback function @闭回调函数（可选）
---@param Title string @窗标题（可选，如"购买道具"）
---@param TipTitle string @品名称（可选）
---@param TipContent string @品描述（可选）
---@param ConfirmText string @认按钮文本（可选，如"购买"）
function UGC_ItemPurchasePopup_Open_UIBP:InitUI(ItemData, DefaultCount, MaxCount, PriceIcon, Price, ConfirmCallback, CloseCallback, Title, TipTitle, TipContent, ConfirmText) end

---异步加载Common_Item控件
---功能：通过UGCBackpackSystemV2外部接口异步创建Common_Item控件并挂到CanvasPanel_CommonItem容器
function UGC_ItemPurchasePopup_Open_UIBP:LoadCommonItemWidget() end

--- 设置物品显示信息
--- 功能: 根据物品ID或物品定义结构体使用通用物品控件显示物品信息
function UGC_ItemPurchasePopup_Open_UIBP:SetItemInfo() end

--- 隐藏弹窗
--- 功能: 隐藏弹窗并从父控件中移除（兼容AddToViewport和UISlot两种挂载方式）
function UGC_ItemPurchasePopup_Open_UIBP:HidePanel() end