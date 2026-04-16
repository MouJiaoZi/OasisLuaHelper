---@meta

---@class FRecordData_PawnInfo
---@field PawnState number
---@field Location FVector
---@field MeshLocation FVector
---@field Velocity FVector
---@field CurrentFrame number
FRecordData_PawnInfo = {}


---@class URecordData_PawnInfoData: URecordData
---@field KeyFrame ULuaArrayHelper<FRecordData_PawnInfo>
local URecordData_PawnInfoData = {}


---@class URecordDataInstance_PawnInfo: URecordDataInstance
local URecordDataInstance_PawnInfo = {}
