---@meta

---@class UFPPSpringArmComponent: USpringArmComponent, IObjectPoolInterface
---@field SocketOffsetInterpSpeed number
---@field TargetOffsetInterpSpeed number
---@field ArmLengthInterpSpeed number
---@field ModifierFPPTemplate USpringArmModifier
---@field DefaultCompRelativeTransform FTransform
---@field CurCameraData FCameraOffsetData
---@field DefaultCameraData FCameraOffsetData
---@field bViewTargetIsAnActor boolean
---@field InVehicleCameraData FCameraOffsetData
---@field InVehicleCameraTrans FTransform
---@field ShovelingCameraData FCameraOffsetData
---@field ShouldForceUseComponentRot boolean
local UFPPSpringArmComponent = {}

function UFPPSpringArmComponent:ClearCameraData() end

---@param bDoTrace boolean
---@param bDoLocationLag boolean
---@param bDoRotationLag boolean
---@param DeltaTime number
function UFPPSpringArmComponent:ForceUpdateDesiredArmLocation(bDoTrace, bDoLocationLag, bDoRotationLag, DeltaTime) end

---@return FRotator
function UFPPSpringArmComponent:GetTargetRotation() end

---@param CameraDataType EFPPCameraDataType
---@param IsEnable boolean
function UFPPSpringArmComponent:SetFPPCameraDataEnable(CameraDataType, IsEnable) end
