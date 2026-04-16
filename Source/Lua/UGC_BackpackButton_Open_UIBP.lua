---@meta

--- 背包按钮UI类定义
local UGC_BackpackButton_Open_UIBP = nil

--- 构造函数，UI创建时自动调用
--- 功能: 执行初始化
function UGC_BackpackButton_Open_UIBP:Construct() end

--- 析构函数，UI销毁时自动调用
--- 功能: 清理事件绑定和引用，防止内存泄漏
function UGC_BackpackButton_Open_UIBP:Destruct() end

--- Lua初始化函数
--- 功能: 绑定UI事件，使用bInitDoOnce标记确保只初始化一次
function UGC_BackpackButton_Open_UIBP:LuaInit() end

--- 开放化接口：InitData
--- 功能: 初始化背包按钮数据
---@param BackpackUIComponent table @包UI组件引用（可选）
---@param OnClickCallback function @定义点击回调函数（可选，如果设置则优先执行此回调）
function UGC_BackpackButton_Open_UIBP:InitData(BackpackUIComponent, OnClickCallback) end

--- 开放化接口：SetClickCallback
--- 功能: 设置自定义点击回调函数
---@param Callback function @击回调函数
function UGC_BackpackButton_Open_UIBP:SetClickCallback(Callback) end

--- 显示按钮控件
--- 功能: 设置控件为可见状态
function UGC_BackpackButton_Open_UIBP:ShowUI() end

--- 隐藏按钮控件
--- 功能: 设置控件为不可见状态
function UGC_BackpackButton_Open_UIBP:HideUI() end

--- 背包按钮点击回调
--- 功能: 处理背包按钮点击事件，打开或关闭背包界面
function UGC_BackpackButton_Open_UIBP:OnBackpackButtonClicked() end