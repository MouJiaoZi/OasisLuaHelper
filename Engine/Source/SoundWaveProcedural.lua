---@meta

---@class FOnSoundWaveProceduralUnderflow : ULuaSingleDelegate
FOnSoundWaveProceduralUnderflow = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: USoundWaveProcedural, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSoundWaveProceduralUnderflow:Bind(Callback, Obj) end

---执行委托
---@param Param1 USoundWaveProcedural
---@param Param2 number
function FOnSoundWaveProceduralUnderflow:Execute(Param1, Param2) end


---@class USoundWaveProcedural: USoundWave
local USoundWaveProcedural = {}
