---@meta

---@class EPawnPoseSwitchType
---@field StandToProne number @站到趴
---@field CrouchToProne number @蹲到趴
---@field StandToCrouch number @站到蹲
---@field ProneToCrouch number @趴到蹲
---@field CrouchToStand number @蹲到站
---@field ProneToStand number @趴到站
---@field None number @无（占位符）
EPawnPoseSwitchType = {}


---@class FGroundDustFXData
---@field Scale FVector
---@field Delay number
FGroundDustFXData = {}


---@class FGroundDustFXSurfaceData
---@field ShootGroundDustFXData ULuaMapHelper<EWeaponTypeNew, FGroundDustFXData>
---@field PawnPoseSwitchGroundDustFXData ULuaMapHelper<EPawnPoseSwitchType, FGroundDustFXData>
FGroundDustFXSurfaceData = {}


---@class UGroundDustEffectDataAsset: UDataAsset
---@field DustEffectSurfaceDataMap ULuaMapHelper<EPhysicalSurface, FGroundDustFXSurfaceData>
local UGroundDustEffectDataAsset = {}
