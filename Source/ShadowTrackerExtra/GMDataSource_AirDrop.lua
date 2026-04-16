---@meta

---@class UGMDataSource_AirDrop: UGMDataSource
---@field AirdropId number
---@field AirDropPlaneParams FAirDropPlaneParams
---@field ActivityEmptyAirDropPlaneParams FAirDropPlaneParams
---@field SuperAirDropPlaneParams FAirDropPlaneParams
---@field VehicleAirDropPlaneParams FAirDropPlaneParams
---@field ZombieAirDropPlaneParams FAirDropPlaneParams
---@field ZombieAirDropTargetSourceID number
---@field BossWarningActorClass AActor
---@field AirDropConfigs ULuaArrayHelper<FAirDropConfig>
---@field bCanUseDelayDrop boolean
---@field AirDropPlaneBluePrint AAirDropPlane
---@field AirDropBoxBlueprint AAirDropBoxActor
---@field SuperAirDropRandomParams FFlareGunAirDropRandomParams
---@field VehicleAirDropRandomParams FFlareGunAirDropRandomParams
---@field SpotType ULuaArrayHelper<ESpotType>
---@field StuffBoxToWorldBoundaryMinDis number
local UGMDataSource_AirDrop = {}
