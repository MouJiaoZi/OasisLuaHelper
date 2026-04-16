---@meta

---@class FPushGmInput : ULuaSingleDelegate
FPushGmInput = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPushGmInput:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FPushGmInput:Execute(Param1) end


---玩家历史位置记录
---@class UAiGmPlayerTransLog: UUserWidget
local UAiGmPlayerTransLog = {}

---按钮点击-BtnPushRot
function UAiGmPlayerTransLog:OnBtnPushRot() end

---按钮点击-BtnPushLoc
function UAiGmPlayerTransLog:OnBtnPushLoc() end


---@class UAiGmPlayerInfoPanel: UUserWidget
---@field MaxLogCnt number @最大的历史记录数
---@field AIDeliveryInfoQueryInterval number @查询AI投放信息的频率，涉及到RPC，不宜太频繁
---@field HistLogInfoClass UAiGmPlayerTransLog @历史信息的UI蓝图类
---@field HistLogs ULuaArrayHelper<UAiGmPlayerTransLog> @历史记录的控件
local UAiGmPlayerInfoPanel = {}

function UAiGmPlayerInfoPanel:OnBtnLogCurrentInfoClick() end

function UAiGmPlayerInfoPanel:OnBtnClose() end

function UAiGmPlayerInfoPanel:UpdateAIDeliveryInfo() end
