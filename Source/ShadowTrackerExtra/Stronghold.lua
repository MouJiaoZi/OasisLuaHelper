---@meta

---@class FStrongholdMiniMapData
---@field MapIconID number
---@field DelayShowCD number
---@field UnActivatedIndex number
---@field ActivatedIndex number
---@field GrayIndex number
FStrongholdMiniMapData = {}


---@class FStrongholdWeaponBoxConfig
---@field WeaponBoxType string
---@field RelativeLocation FVector
---@field RelativeRotation FRotator
---@field bAttachToLifer boolean
FStrongholdWeaponBoxConfig = {}


---据点actor, feishen, 20200107
---@class AStronghold: AActor, ICircleFloatInterface
---@field StrongholdMiniMapData FStrongholdMiniMapData
---@field DelayActiveStrongholdCD number
---@field RevivalTowerPath string
---@field WeaponBoxConfigs ULuaArrayHelper<FStrongholdWeaponBoxConfig>
---@field VehicleTypes ULuaMapHelper<string, number>
---@field DelaySpawnVehicleCD number
---@field FuelPercentMax number
---@field ActiveByStartVolume boolean
---@field bFreezeVehicle boolean
---@field UnfreezeVehicleTime number
---@field bRegisterGameMode boolean
---@field CircleContainMaxFloatLength number
local AStronghold = {}

function AStronghold:ActiveStrongHold() end

function AStronghold:OnWeaponBoxOpened() end
