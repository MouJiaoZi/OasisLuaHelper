---@meta

---Stores info on the type of motor that will be used for a given bone
---@class FPhysicalAnimationData
---@field BodyName string @The body we will be driving. We specifically hide this from users since they provide the body name and bodies below in the component API.
---@field bIsLocalSimulation number @Whether the drive targets are in world space or local
---@field OrientationStrength number @The strength used to correct orientation error
---@field AngularVelocityStrength number @The strength used to correct angular velocity error
---@field PositionStrength number @The strength used to correct linear position error. Only used for non-local simulation
---@field VelocityStrength number @The strength used to correct linear velocity error. Only used for non-local simulation
---@field MaxLinearForce number @The max force used to correct linear errors
---@field MaxAngularForce number @The max force used to correct angular errors
FPhysicalAnimationData = {}


---@class UPhysicalAnimationComponent: UActorComponent
---@field StrengthMultiplyer number @Multiplies the strength of any active motors. (can blend from 0-1 for example)
local UPhysicalAnimationComponent = {}

---Sets the skeletal mesh we are driving through physical animation. Will erase any existing physical animation data.
---@param InSkeletalMeshComponent USkeletalMeshComponent
function UPhysicalAnimationComponent:SetSkeletalMeshComponent(InSkeletalMeshComponent) end

---Applies the physical animation settings to the body given.
---@param BodyName string
---@param PhysicalAnimationData FPhysicalAnimationData
function UPhysicalAnimationComponent:ApplyPhysicalAnimationSettings(BodyName, PhysicalAnimationData) end

---Applies the physical animation settings to the body given and all bodies below.
---@param BodyName string
---@param PhysicalAnimationData FPhysicalAnimationData
---@param bIncludeSelf boolean
function UPhysicalAnimationComponent:ApplyPhysicalAnimationSettingsBelow(BodyName, PhysicalAnimationData, bIncludeSelf) end

---Updates strength multiplyer and any active motors
---@param InStrengthMultiplyer number
function UPhysicalAnimationComponent:SetStrengthMultiplyer(InStrengthMultiplyer) end

---Applies the physical animation profile to the body given and all bodies below.
---@param BodyName string
---@param ProfileName string
---@param bIncludeSelf boolean
---@param bClearNotFound boolean
function UPhysicalAnimationComponent:ApplyPhysicalAnimationProfileBelow(BodyName, ProfileName, bIncludeSelf, bClearNotFound) end

---Returns the target transform for the given body. If physical animation component is not controlling this body, returns its current transform.
---@param BodyName string
---@return FTransform
function UPhysicalAnimationComponent:GetBodyTargetTransform(BodyName) end
