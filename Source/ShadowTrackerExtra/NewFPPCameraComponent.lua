---@meta

---@class FNewFPPUnVisableAreaCheckDetails
---@field YawDirOffsetValue number
---@field PitchDirOffsetValue number
FNewFPPUnVisableAreaCheckDetails = {}


---@class UNewFPPCameraComponent: UCameraComponent, IObjectPoolInterface
---@field FreeCameraDeltaRot FRotator @FreeCamera
---@field bIsFreeCamera boolean
---@field UpperArmAreaCheckDetails ULuaArrayHelper<FNewFPPUnVisableAreaCheckDetails>
---@field InterpolateDesiredRotationValue number
---@field TryFindVaildCameraViewInterval number
---@field FreeCameraOffsetRadius number
---@field FreeCameraOffsetRadiusMap ULuaMapHelper<ESTEPoseState, number>
---@field ProbeRadius number
---@field DrawDebugGraphics boolean
---@field DrawDebugGraphicsOffset FVector
---@field bEnableFreeCamera boolean
---@field bLimitPitchAndYaw boolean
---@field YawLimit number
---@field PitchLimit number
---@field OriginFieldOfView number
---@field ModifyFreeCameraRotation FLimitFreeRotationDelegate
---@field CameraRotatorOffset FRotator
---@field bActiveCameraRotatorOffset boolean
local UNewFPPCameraComponent = {}

function UNewFPPCameraComponent:BeginPlay() end

---@param DeltaSeconds number
function UNewFPPCameraComponent:OnPostTickFlush(DeltaSeconds) end

---@param rot FRotator
---@param IsShouldAdditiveDeltaRot boolean
---@return FRotator
function UNewFPPCameraComponent:SetFreeCameraDeltaRot(rot, IsShouldAdditiveDeltaRot) end

---@param InFOV number
function UNewFPPCameraComponent:SetOriginFieldOfView(InFOV) end

function UNewFPPCameraComponent:ResetFieldOfView() end

---@param InRotator FRotator
---@return FRotator
function UNewFPPCameraComponent:GetWorldFinalRot(InRotator) end

---@param StartRelativeLoc FVector
---@param EndRelativeLoc FVector
---@param Owner ASTExtraBaseCharacter
---@return FVector
function UNewFPPCameraComponent:GetNonObstacleRelativeLoc(StartRelativeLoc, EndRelativeLoc, Owner) end
