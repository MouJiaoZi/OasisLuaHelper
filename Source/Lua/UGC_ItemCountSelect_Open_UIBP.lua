---@meta

---物品数量选择面板UI类定义
local UGC_ItemCountSelect_Open_UIBP = nil

---开放化接口：InitUI（统一入口）
---功能：初始化并显示弹窗
---@param DefaultCount number @默认选择数量
---@param MaxCount number @物品最大数量
---@param ConfirmCallback function @确认回调函数，参数为选择的数量
---@param CancelCallback function @取消回调函数（可选）
---@param Title string @弹窗标题（可选，如"丢弃数量："）
---@param ConfirmText string @确定按钮文本（可选，如"丢弃"）
---@param CancelText string @取消按钮文本（可选，如"取消"）
function UGC_ItemCountSelect_Open_UIBP:InitUI(DefaultCount, MaxCount, ConfirmCallback, CancelCallback, Title, ConfirmText, CancelText) end