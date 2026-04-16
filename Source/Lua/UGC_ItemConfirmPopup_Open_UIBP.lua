---@meta

--- 物品确认弹窗UI类定义
local UGC_ItemConfirmPopup_Open_UIBP = nil

--- 构造函数，UI创建时自动调用
--- 功能: 执行初始化并设置默认参数
function UGC_ItemConfirmPopup_Open_UIBP:Construct() end

--- 开放化接口：InitUI（统一入口）
--- 功能: 初始化并显示确认弹窗
---@param ItemData number|FItemDefineID @品ID(number)或物品定义结构体(FItemDefineID)
---@param Count number @品数量
---@param ConfirmCallback function @认回调函数（可选）
---@param CancelCallback function @消回调函数（可选）
---@param CloseCallback function @闭弹窗回调函数（可选）
---@param Title string @窗标题（可选，默认"提示"）
---@param TipText string @窗描述文本（可选）
---@param ConfirmText string @定按钮文本（可选，默认"确定"）
---@param CancelText string @消按钮文本（可选，默认"取消"）
function UGC_ItemConfirmPopup_Open_UIBP:InitUI(ItemData, Count, ConfirmCallback, CancelCallback, CloseCallback, Title, TipText, ConfirmText, CancelText) end

---异步加载Common_Item控件
---功能：通过UGCBackpackSystemV2外部接口异步创建Common_Item控件并挂到CanvasPanel_CommonItem容器
function UGC_ItemConfirmPopup_Open_UIBP:LoadCommonItemWidget() end

--- 隐藏当前面板
--- 功能: 隐藏弹窗（不调用RemoveFromParent，避免触发Destruct导致事件绑定和回调被清除，
---       使得下次打开时确认/取消按钮失效）
function UGC_ItemConfirmPopup_Open_UIBP:HidePanel() end

--- 设置物品显示信息
--- 功能：根据物品ID或物品定义结构体使用通用物品控件显示物品信息
function UGC_ItemConfirmPopup_Open_UIBP:SetItemInfo() end