---@meta

---@class ESLanternRacingPerf
---@field ESNormal number
---@field ESAcc number
---@field ESPickUp number
---@field ESReadyLight number
---@field ESLight number
ESLanternRacingPerf = {}


---@class FLanternRacingActionPerf
---@field GamePer ESLanternRacingPerf
---@field ExtraSkeletalMeshComTagName string
---@field Montage UAnimMontage
---@field audioEvent UAkAudioEvent
FLanternRacingActionPerf = {}


---@class FOnClientDoPerformanceCustom : ULuaMulticastDelegate
FOnClientDoPerformanceCustom = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EActionPerf: ESLanternRacingPerf) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientDoPerformanceCustom:Add(Callback, Obj) end

---触发 Lua 广播
---@param EActionPerf ESLanternRacingPerf
function FOnClientDoPerformanceCustom:Broadcast(EActionPerf) end


---@class USTExtraLanternRacingPerfComp: UActorComponent
---@field ActionsPerfArray ULuaArrayHelper<FLanternRacingActionPerf>
---@field OnClientDoCustomPerformance FOnClientDoPerformanceCustom
local USTExtraLanternRacingPerfComp = {}

---@param eGamePerformance ESLanternRacingPerf
function USTExtraLanternRacingPerfComp:ClientRealDoPerformance(eGamePerformance) end
