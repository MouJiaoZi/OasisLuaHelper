---@meta

---Utility object for moving physics objects around.
---@class UPhysicsHandleComponent: UActorComponent
---@field bSoftAngularConstraint number
---@field bSoftLinearConstraint number
---@field bInterpolateTarget number
---@field LinearDamping number @Linear damping of the handle spring.
---@field LinearStiffness number @Linear stiffness of the handle spring
---@field AngularDamping number @Angular stiffness of the handle spring
---@field AngularStiffness number @Angular stiffness of the handle spring
---@field InterpolationSpeed number @How quickly we interpolate the physics target transform
local UPhysicsHandleComponent = {}

---Grab the specified component
---@param Component UPrimitiveComponent
---@param InBoneName string
---@param GrabLocation FVector
---@param bConstrainRotation boolean
function UPhysicsHandleComponent:GrabComponent(Component, InBoneName, GrabLocation, bConstrainRotation) end

---Grab the specified component at a given location. Does NOT constraint rotation which means the handle will pivot about GrabLocation.
---@param Component UPrimitiveComponent
---@param InBoneName string
---@param GrabLocation FVector
function UPhysicsHandleComponent:GrabComponentAtLocation(Component, InBoneName, GrabLocation) end

---Grab the specified component at a given location and rotation. Constrains rotation.
---@param Component UPrimitiveComponent
---@param InBoneName string
---@param Location FVector
---@param Rotation FRotator
function UPhysicsHandleComponent:GrabComponentAtLocationWithRotation(Component, InBoneName, Location, Rotation) end

---Release the currently held component
function UPhysicsHandleComponent:ReleaseComponent() end

---Set the target location
---@param NewLocation FVector
function UPhysicsHandleComponent:SetTargetLocation(NewLocation) end

---Set the target rotation
---@param NewRotation FRotator
function UPhysicsHandleComponent:SetTargetRotation(NewRotation) end

---Set target location and rotation
---@param NewLocation FVector
---@param NewRotation FRotator
function UPhysicsHandleComponent:SetTargetLocationAndRotation(NewLocation, NewRotation) end

---Get the current location and rotation
---@param TargetLocation FVector
---@param TargetRotation FRotator
function UPhysicsHandleComponent:GetTargetLocationAndRotation(TargetLocation, TargetRotation) end

---Set linear damping
---@param NewLinearDamping number
function UPhysicsHandleComponent:SetLinearDamping(NewLinearDamping) end

---Set linear stiffness
---@param NewLinearStiffness number
function UPhysicsHandleComponent:SetLinearStiffness(NewLinearStiffness) end

---Set angular damping
---@param NewAngularDamping number
function UPhysicsHandleComponent:SetAngularDamping(NewAngularDamping) end

---Set angular stiffness
---@param NewAngularStiffness number
function UPhysicsHandleComponent:SetAngularStiffness(NewAngularStiffness) end

---Set interpolation speed
---@param NewInterpolationSpeed number
function UPhysicsHandleComponent:SetInterpolationSpeed(NewInterpolationSpeed) end
