---@meta

---电梯在电梯井的状态
---@class ECableCarState
---@field CableCarSpawned number
---@field CableCarDescending number
---@field CableCarWaitForRunning number
---@field CableCarRunning number
---@field CableCarArrived number
---@field CableCarAscending number
---@field CableCarDestroyed number
ECableCarState = {}


---电梯井内电梯数据
---@class FCableCarData
---@field CableCarState ECableCarState
FCableCarData = {}


---索道电梯井
---@class UCableCarShaftControllerComp: UActorComponent
---@field CableCarClass AActor
---@field CableCarStartOffset FVector
---@field EndCableCarShaftLocation FVector
---@field DescentHeight number
---@field SpawnTimeAfterCableCarRun number
---@field SpawnedCableCarControllerComps ULuaArrayHelper<FCableCarData>
---@field ErrorCableCarData FCableCarData
local UCableCarShaftControllerComp = {}

---启动运行电梯
function UCableCarShaftControllerComp:ServerRunCableCar() end

function UCableCarShaftControllerComp:ServerSpawnCableCar() end

---@param CableCarControllerComp UCableCarControllerComp
function UCableCarShaftControllerComp:ServerRequestCableCarRun(CableCarControllerComp) end
