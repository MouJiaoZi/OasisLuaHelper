---@meta

---@class FBoolInnerArray
---@field DamageRegion ULuaArrayHelper<boolean>
FBoolInnerArray = {}


---@class FBoolOuterArray
---@field InnerArrays ULuaArrayHelper<FBoolInnerArray>
FBoolOuterArray = {}


---@class FVehicleHitState
---@field bIsInLaval boolean
---@field OldTransform FTransform
---@field AlreadyHitActors ULuaSetHelper<AActor>
FVehicleHitState = {}


---@class AUAEStaticRegionVolumeActor: AActor
---@field LavaActors ULuaSetHelper<AActor>
---@field StaticRegion FBoolOuterArray
---@field MinLoc FVector
---@field MaxLoc FVector
---@field BoxExtent number
---@field StaticRegionTextureRes number
---@field ELavaSurface EPhysicalSurface
---@field CharacterLineCastLength number
---@field CharacterProneLineCastLength number
---@field WheelVehicleLineCastLength number
---@field WheelVehicleStartOffset number
---@field VehicleStateMap ULuaMapHelper<ASTExtraBaseWheeledVehicle, FVehicleHitState>
---@field HorselTraceOffset number
---@field HorselTraceLineLength number
local AUAEStaticRegionVolumeActor = {}

---@param Character ASTExtraBaseCharacter
---@return boolean
function AUAEStaticRegionVolumeActor:IsCharacterInLava(Character) end

---@param Vehicle ASTExtraBaseWheeledVehicle
function AUAEStaticRegionVolumeActor:RegisterWheeledVehicle(Vehicle) end

---@param Vehicle ASTExtraBaseWheeledVehicle
function AUAEStaticRegionVolumeActor:UnRegisterWheeledVehicle(Vehicle) end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function AUAEStaticRegionVolumeActor:OnVehicleHit(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param Vehicle ASTExtraBaseWheeledVehicle
---@return boolean
function AUAEStaticRegionVolumeActor:IsWheelVehicleBodyInLava(Vehicle) end

---@param Vehicle ASTExtraBaseWheeledVehicle
---@param WheelIndexArray ULuaArrayHelper<number>
function AUAEStaticRegionVolumeActor:IsWheelInLava(Vehicle, WheelIndexArray) end

---@param HorseVehicle ASTExtraHorseVehicle
---@return boolean
function AUAEStaticRegionVolumeActor:IsHorseVehicleInLava(HorseVehicle) end
