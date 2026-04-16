---@meta

---@class FTankSecondaryWeaponsInfo
---@field WeaponSocketName string
---@field bInitialiseLocationAtBegin boolean
---@field RelativeLocationToTurret FVector
---@field RelativeRotationToTurret FRotator
---@field SocketWorldLocation FVector
---@field StackedWeaponCurrentLocation FVector
FTankSecondaryWeaponsInfo = {}


---坦克动画蓝图C++
---@class USTTankVehicleAnimInstance: USTVehicleAnimInstance
---@field bEnableUpdateWeaponBone boolean
---@field WheelPerimeter number
---@field WheelRadius number
---@field LeftTrackRotator FRotator
---@field RightTrackRotator FRotator
---@field TurretSocketName string
---@field TurrentPitch number
---@field TurrentYaw number
---@field SecondaryWeaponsInfoConfigs ULuaArrayHelper<FTankSecondaryWeaponsInfo>
local USTTankVehicleAnimInstance = {}
