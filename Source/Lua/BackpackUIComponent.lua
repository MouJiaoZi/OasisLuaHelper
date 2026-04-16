---@meta

---@class EBtnFuncType
---@field Inner number
---@field Custom number
EBtnFuncType = {}


---需启用及配合新背包系统使用，具体参见https://developer.gp.qq.com/wikieditor/#/catalog/20104
---@class BackpackUIComponent
local BackpackUIComponent = {}

---获取背包按钮控件
---生效范围：客户端
---@return UWidget @背包按钮控件
function BackpackUIComponent:GetHUDBtn() end

---获取默认背包模式
---生效范围：客户端
---@return number @背包模式
function BackpackUIComponent:GetDefaultMode() end

---显示背包按钮逻辑
---生效范围：客户端
---@param bVisible bool @是否显示
function BackpackUIComponent:ShowHUDBtn(bVisible) end

---关闭战斗背包界面
---生效范围：客户端
function BackpackUIComponent:CloseBattleMainPanel() end

---关闭大厅背包界面
---生效范围：客户端
function BackpackUIComponent:CloseLobbyPanel() end

---打开大厅背包界面
---生效范围：客户端
---@param Mode number @1:背包+装备栏 2:背包+仓库 3:背包+装备栏+仓库
function BackpackUIComponent:OpenLobbyBackpackMainUI(Mode) end

---打开战斗背包界面
---生效范围：客户端
---@param Style number @0全屏，1半屏
---@param Mode number @1:背包+装备栏 2:背包+仓库 3:背包+装备栏+仓库
function BackpackUIComponent:OpenBattleMainPanel(Style, Mode) end

---背包UI打开后执行
---@param Panel UUserWidget @背包主界面控件
function BackpackUIComponent:OnOpenBattleMainPanel(Panel) end

---背包UI关闭后执行
---@param Panel UUserWidget @背包主界面控件
function BackpackUIComponent:OnCloseBattleMainPanel(Panel) end

---当打开删除弹窗时调用
---@param Panel UUserWidget @面板控件
function BackpackUIComponent:OnOpenDeletePanel(Panel) end

---点击上锁格子的响应函数
---生效范围：客户端
---@param type number @类型 [0:背包数据, 1:仓库数据]
function BackpackUIComponent:ClickLockBackpackItem(type) end

---当打开解锁弹窗时调用
---@param Panel UUserWidget @面板控件
function BackpackUIComponent:OnClickLockBackpackItem(Panel) end

---是否显示丢弃区域
---生效范围：客户端
---@return boolean @是否显示丢弃区域
function BackpackUIComponent:IsDiscardAreaVisible() end

---当打开存入取出代币时调用
---@param Panel UUserWidget @面板控件
function BackpackUIComponent:OnOpenSaveOrWithDrawPanel(Panel) end

---默认排序函数
---生效范围: 客户端
---@param Data1 table @物品数据1 {DefineID:物品DefineID, Idx:格子索引}
---@param Data2 table @物品数据2 {DefineID:物品DefineID, Idx:格子索引}
---@return boolean @true:物品1在前, false:物品2在前
function BackpackUIComponent.CompareQuality(Data1, Data2) end