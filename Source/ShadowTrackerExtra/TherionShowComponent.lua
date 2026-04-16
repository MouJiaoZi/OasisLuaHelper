---@meta

---@class FOnTherionShowTriggerInfo : ULuaMulticastDelegate
FOnTherionShowTriggerInfo = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, StageName: string, StageTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTherionShowTriggerInfo:Add(Callback, Obj) end

---触发 Lua 广播
---@param StageName string
---@param StageTime number
function FOnTherionShowTriggerInfo:Broadcast(StageName, StageTime) end


---@class UTherionShowComponent: UGameModeBaseComponent
---@field TherionShowTriggerInfo FOnTherionShowTriggerInfo
local UTherionShowComponent = {}

function UTherionShowComponent:OnGameEnterFight() end

function UTherionShowComponent:OnGameEnterFinish() end

---@param InPassedTime number
function UTherionShowComponent:NotifyGameFightingStatePassedTimeCallback(InPassedTime) end
