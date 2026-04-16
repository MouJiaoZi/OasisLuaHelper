---@meta

---@class FOnLostTombEscapeCountDownEventDelegate : ULuaSingleDelegate
FOnLostTombEscapeCountDownEventDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLostTombEscapeCountDownEventDelegate:Bind(Callback, Obj) end

---执行委托
function FOnLostTombEscapeCountDownEventDelegate:Execute() end


---@class ULostTombGameModeStateFightingTeam: UGameModeStateFightingTeam
---@field ClientCountDownTipIntervel number
---@field OnEscapeCountDownEventDelegate FOnLostTombEscapeCountDownEventDelegate
local ULostTombGameModeStateFightingTeam = {}

---@param NewStateTime number
function ULostTombGameModeStateFightingTeam:UpdateLeftStateTime(NewStateTime) end

function ULostTombGameModeStateFightingTeam:StartEscapeCountDown() end
