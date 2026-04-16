---@meta

---@class EMeshPerLODBiasType
---@field AutonomousHighEnd number @主端高端机
---@field AutonomousLowEnd number @主端低端机
---@field SimulatedHighEnd number @模拟端高端机
---@field SimulatedLowEnd number @模拟端低端机
EMeshPerLODBiasType = {}


---@class EMeshLODBiasTypeExt
---@field Lobby_Low number @Lobby Low Device Quality
---@field Lobby_Middle number @Lobby Middle Device Quality
---@field Lobby_High number @Lobby High Device Quality
---@field Autonomous_Low number @Self Low Device Quality
---@field Autonomous_Middle number @Self Middle Device Quality
---@field Autonomous_High number @Self High Device Quality
---@field Simulate_Low number @Simulate Low Device Quality
---@field Simulate_Middle number @Simulate Middle Device Quality
---@field Simulate_High number @Simulate High Device Quality
---@field Lobby_UltraHigh number @Lobby Ultra High Device Quality
---@field Autonomous_UltraHigh number @Self Ultra High Device Quality
---@field Simulate_UltraHigh number @Simulate Ultra High Device Quality
---@field Lobby_Higher_High number
---@field Autonomous_Higher_High number
---@field Simulate_Higher_High number
---@field AllVisible number
EMeshLODBiasTypeExt = {}


---@class FMeshPerLODBiasArray
---@field LODBiasArray ULuaArrayHelper<EMeshPerLODBiasType>
FMeshPerLODBiasArray = {}


---@class FMeshLODBiasCondition
---@field MeshLODBiasConfig number
FMeshLODBiasCondition = {}
