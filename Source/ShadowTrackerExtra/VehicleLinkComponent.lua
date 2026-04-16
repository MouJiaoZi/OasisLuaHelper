---@meta

---@class FRepLinkMeshParam
---@field RelativeLocation FVector
---@field RelativeQuat FQuat
FRepLinkMeshParam = {}


---<仅用于载具主控端上报延迟处理的Tick
---@class FVehicleLinkMeshPostPhysxTick
FVehicleLinkMeshPostPhysxTick = {}


---@class UVehicleLinkComponent: UVehicleComponent
---@field PostPhysxComponentTick any
---@field RepdNewWorldLocation FVector
---@field RepdNewWorldRotation FRotator
---@field EnableAdjustOnSimulateProxy boolean
---@field MinLocalDistSquared number
---@field LocationAdjustAlpha number
---@field MinLocalAngularDif number
---@field AngularAdjustAlpha number
---@field EnableAdjustVelocity boolean
---@field MinLineraVelocitySquaredDif number
---@field MinAngularVelocitySquaredDif number
---@field ForceAdjust boolean
---@field LinkMeshRelativeLocation FVector
---@field NoCtrAdjustMinDisSquared number
---@field RepLinkMeshParam FRepLinkMeshParam
---@field bRepHasConstraint boolean
local UVehicleLinkComponent = {}

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleLinkComponent:HandleOnSeatAttached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleLinkComponent:HandleOnSeatDetached(Character, SeatType, SeatIdx) end

function UVehicleLinkComponent:OnRep_HasConstraint() end
