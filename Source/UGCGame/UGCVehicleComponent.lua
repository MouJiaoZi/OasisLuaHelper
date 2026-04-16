---@meta

---@class FUGCVehiclePhysicsShapeType
---@field Sphere number @球体
---@field Box number @长方体
---@field Capsule number @胶囊体
FUGCVehiclePhysicsShapeType = {}


---@class FUGCVehicleGearData
---@field Ratio number
---@field DownRatio number
---@field UpRatio number
FUGCVehicleGearData = {}


---@class FUGCWheeledVehicleEngineData
---@field TorqueCurve FRuntimeFloatCurve
---@field MaxRPM number
---@field MOI number
---@field ForwardGears ULuaArrayHelper<FUGCVehicleGearData>
---@field FinalRatio number
---@field bUseGearAutoBox boolean
---@field GearSwitchTime number
---@field GearAutoBoxLatency number
FUGCWheeledVehicleEngineData = {}


---@class FUGCWheeledVehicleTurnData
---@field SteeringInputRate FVehicleInputRate
---@field SteeringCurve FRuntimeFloatCurve
FUGCWheeledVehicleTurnData = {}


---@class FUGCTireConfigMaterialFriction
---@field FrictionScale number
FUGCTireConfigMaterialFriction = {}


---@class FUGCWheeledVehicleTireData
---@field FrictionScale number
---@field TireFrictionScales ULuaArrayHelper<FUGCTireConfigMaterialFriction>
---@field LongStiff number
---@field LatStiff number
FUGCWheeledVehicleTireData = {}


---@class FUGCWheeledVehicleMiscellaneousData
---@field DragCoefficient number
---@field BrakeTorqueBase number
---@field BrakeTorqueCoefficient number
---@field HandBrakeTorqueBase number
---@field HandBrakeTorqueCoefficient number
---@field ThrottleInputRate FVehicleInputRate
---@field BrakeInputRate FVehicleInputRate
---@field HandbrakeInputRate FVehicleInputRate
FUGCWheeledVehicleMiscellaneousData = {}


---@class FUGCVehiclePhysicsShape
---@field ShapeType FUGCVehiclePhysicsShapeType
---@field Center FVector
---@field Center2 FVector
---@field Radius number
---@field BoxCenter FVector
---@field BoxEndpoint FVector
---@field BoxRotator FRotator
FUGCVehiclePhysicsShape = {}


---@class FUGCVehicleWeaponDataConfig
---@field WeaponName string
---@field WeaponOffset FTransform
FUGCVehicleWeaponDataConfig = {}


---@class FUGCVehicleSeatWeaponDataConfig
---@field EnableWeaponIndex number
---@field VehicleWeaponClass AVehicleShootWeapon
---@field WeaponOffset FTransform
FUGCVehicleSeatWeaponDataConfig = {}


---@class FUGCVehicleSeatDataConfig
---@field bOverrideDefaultConfig boolean
---@field bHideTemplateMesh boolean
---@field SeatOffset FTransform
---@field LeaveOffset FTransform
---@field EnableWeaponIndex number
---@field VehicleWeaponClass AVehicleShootWeapon
---@field WeaponOffset FTransform
---@field PluralWeaponConfigs ULuaArrayHelper<FUGCVehicleSeatWeaponDataConfig>
FUGCVehicleSeatDataConfig = {}


---@class FUGCVehicleHitHandleSingleConfig
---@field HitTarget AActor
---@field HitHandle UUGCVehicleDamageToAliveProcess
FUGCVehicleHitHandleSingleConfig = {}


---@class UUGCWheeledVehicleEngineDataAsset: UDataAsset
---@field EngineData FUGCWheeledVehicleEngineData
local UUGCWheeledVehicleEngineDataAsset = {}


---@class UUGCWheeledVehicleTurnDataAsset: UDataAsset
---@field TurnData FUGCWheeledVehicleTurnData
local UUGCWheeledVehicleTurnDataAsset = {}


---@class UUGCWheeledVehicleTireDataAsset: UDataAsset
---@field TireData FUGCWheeledVehicleTireData
local UUGCWheeledVehicleTireDataAsset = {}


---@class UUGCWheeledVehicleDifferential4WDataAsset: UDataAsset
---@field Differential4WData FVehicleDifferential4WData
local UUGCWheeledVehicleDifferential4WDataAsset = {}


---@class UUGCVehicleWeaponDataAsset: UDataAsset
---@field WeaponData FSTExtraVehicleWeaponConfig
local UUGCVehicleWeaponDataAsset = {}


---@class UUGCVehicleSeatDataAsset: UDataAsset
---@field SeatData FSTExtraVehicleSeat
---@field AnimCompClass UUAEChaVehAnimListComponent
---@field WeaponDatas ULuaArrayHelper<FUGCVehicleWeaponDataConfig>
local UUGCVehicleSeatDataAsset = {}


---@class UUGCVehicleComponent: USceneComponent, IVehicleAttrProxy, IUGCVehicleInterface
---@field RebuildVehicleSerialNumber number
---@field bUseCustomizeSeatsConfig boolean
---@field CustomizeSeatsConfig ULuaArrayHelper<FUGCVehicleSeatDataConfig>
---@field ExplosionRadiusInner number
---@field ExplosionRadiusOuter number
---@field ExplosionDamageFalloff number
---@field bCanBoostSpeed boolean
---@field Mass number
---@field AdditionalPhysicsShapes ULuaArrayHelper<FUGCVehiclePhysicsShape>
---@field BP_HitHandleConfigs ULuaArrayHelper<FUGCVehicleHitHandleSingleConfig>
local UUGCVehicleComponent = {}

function UUGCVehicleComponent:TryRebuildVehicleAttr() end

function UUGCVehicleComponent:OnRep_RebuildVehicleSerialNumber() end

function UUGCVehicleComponent:ApplySeatConfig() end

function UUGCVehicleComponent:RefreshSeatMesh() end

---@param AttrName string
---@param Value number
function UUGCVehicleComponent:SetLinearDamping(AttrName, Value) end

---@param AttrName string
---@param Value number
function UUGCVehicleComponent:SetAngularDamping(AttrName, Value) end

function UUGCVehicleComponent:ApplyPhysCollision() end

---@param OtherActor AActor
function UUGCVehicleComponent:FindDamageToAliveHandleClass(OtherActor) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function UUGCVehicleComponent:EnterVehicleCallback(Character, SeatType, bSuccess) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function UUGCVehicleComponent:LeaveVehicleCallback(Character, SeatType, bSuccess) end


---@class UUGCWheeledVehicleComponent: UUGCVehicleComponent
---@field bUseEngineAdvancedConfig boolean
---@field EngineAdvancedConfig FUGCWheeledVehicleEngineData
---@field bUseTurnAdvancedConfig boolean
---@field TurnAdvancedConfig FUGCWheeledVehicleTurnData
---@field bUseTireAdvancedConfig boolean
---@field TireAdvancedConfig FUGCWheeledVehicleTireData
---@field bUseDifferentialAdvancedConfig boolean
---@field DifferentialConfig FVehicleDifferential4WData
---@field MiscellaneousAdvancedConfig FUGCWheeledVehicleMiscellaneousData
local UUGCWheeledVehicleComponent = {}


---@class UUGCFloatingVehicleComponent: UUGCVehicleComponent
local UUGCFloatingVehicleComponent = {}
