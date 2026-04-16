---@meta

---@class FSpawnParabolaTargetData
---@field InitialSpeed number
---@field MaxSpeed number
---@field BeginVelocity FVector
FSpawnParabolaTargetData = {}


---@class FRandomSpawnParaTargetData
---@field RandomInitialSpeed_L number
---@field RandomInitialSpeed_R number
---@field MaxSpeed number
---@field BeginVelocity_L FVector
---@field BeginVelocity_R FVector
FRandomSpawnParaTargetData = {}


---@class FSpawnWhirlTargetData
---@field R number
---@field EndDegree number
---@field Speed number
---@field BeginSpeed number
---@field BeginDir number
---@field LoopType ETargetLoopType
FSpawnWhirlTargetData = {}


---@class FSpawnMoveTargetData
---@field BisUseRelative boolean
---@field RelativeEnd FVector
---@field BisDirection boolean
---@field PointBegin FVector
---@field PointEnd FVector
---@field Speed number
---@field LoopType ETargetLoopType
FSpawnMoveTargetData = {}


---@class FDestroyTargetDelegate : ULuaSingleDelegate
FDestroyTargetDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDestroyTargetDelegate:Bind(Callback, Obj) end

---执行委托
function FDestroyTargetDelegate:Execute() end


---@class AAsianTargetSpawner: AUAERegionActor
---@field NormalTargetClass AAsianGameTarget
---@field ParabolaTargetClass AAsianGameParabolaTarget
---@field AsianMoveBase AAsianMoveBase
---@field SpawnerTagMin number
---@field SpawnerTagMax number
---@field DestroyDelegate FDestroyTargetDelegate
---@field SpawnEffectArray ULuaArrayHelper<FAsianTargetEffectStruct>
---@field BisTeamSpawn boolean
---@field BisUseRandom boolean
local AAsianTargetSpawner = {}

function AAsianTargetSpawner:Actived() end

function AAsianTargetSpawner:DeActived() end

---@return boolean
function AAsianTargetSpawner:BisUseSpawnerTag() end

function AAsianTargetSpawner:DestroyAllSpawnerActor() end
