---@meta

---@class FReportEventtrigger : ULuaMulticastDelegate
FReportEventtrigger = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, name: string, ObjName: string, AkComponent: UAkComponent, status: number, isplaying: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportEventtrigger:Add(Callback, Obj) end

---触发 Lua 广播
---@param name string
---@param ObjName string
---@param AkComponent UAkComponent
---@param status number
---@param isplaying boolean
function FReportEventtrigger:Broadcast(name, ObjName, AkComponent, status, isplaying) end


---@class FReportSwitchTigger : ULuaMulticastDelegate
FReportSwitchTigger = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TriggerInfo: FAkTriggerInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportSwitchTigger:Add(Callback, Obj) end

---触发 Lua 广播
---@param TriggerInfo FAkTriggerInfo
function FReportSwitchTigger:Broadcast(TriggerInfo) end


---@class FReportRTPCTigger : ULuaMulticastDelegate
FReportRTPCTigger = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TriggerInfo: FAkTriggerInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportRTPCTigger:Add(Callback, Obj) end

---触发 Lua 广播
---@param TriggerInfo FAkTriggerInfo
function FReportRTPCTigger:Broadcast(TriggerInfo) end


---@class FReportBankTigger : ULuaMulticastDelegate
FReportBankTigger = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, name: string, status: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FReportBankTigger:Add(Callback, Obj) end

---触发 Lua 广播
---@param name string
---@param status number
function FReportBankTigger:Broadcast(name, status) end


---@class FPerformStatTrigger : ULuaMulticastDelegate
FPerformStatTrigger = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, name: string, flag: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPerformStatTrigger:Add(Callback, Obj) end

---触发 Lua 广播
---@param name string
---@param flag number
function FPerformStatTrigger:Broadcast(name, flag) end


---@class UAkAudioErrorReprotStrategic: UAssetRefStrategicBase
---@field TotalPlayCount number
---@field ObjectPlayCount number
---@field Flag number
---@field bEnableStat boolean
---@field InitAudioReportClass ULuaArrayHelper<UAkAudioErrorReportBase>
---@field AudioReports ULuaArrayHelper<UAkAudioErrorReportBase>
---@field OnReportEventTrigger FReportEventtrigger
---@field OnReportBankTrigger FReportBankTigger
---@field OnReportRTPCTrigger FReportRTPCTigger
---@field OnReportSwitchTrigger FReportSwitchTigger
---@field OnPerformStatTrigger FPerformStatTrigger
---@field GameModeID string
local UAkAudioErrorReprotStrategic = {}
