---@meta

---@class UObserverCameraComponent: UCustomCameraComponent
---@field SpringArmLengthModifier1 number
---@field bIsFreeCamera boolean
---@field FreeCameraRot FRotator
---@field FreeCameraDeltaRot FRotator
---@field bLockCameraRollWhenUseControllerRotation boolean
---@field bForceUseCameraComponentRotation boolean
---@field FreeCameraOffsetRadius number
---@field FreeCameraOffsetRadiusMap ULuaMapHelper<ESTEPoseState, number>
---@field DrawDebugGraphics boolean
---@field DrawDebugGraphicsOffset FVector
---@field ProbeRadius number
---@field SpecialStatePitchLimitMin number
---@field SpecialStatePitchLimitMax number
---@field DefaultFieldOfView number
---@field WeaponOffsetDistance number
---@field helicopterFppStartYaw number
---@field helicopterFppawDelta number
---@field IsinHelicopterFppState boolean
---@field PerspectiveMode EPerspectiveMode
---@field FPPFOVMin number
---@field FPPFOVMax number
---@field LastFrameControlRotCache FRotator
---@field bEnableFPPAutoAdditiveOffset boolean
local UObserverCameraComponent = {}

---@param StartRelativeLoc FVector
---@param EndRelativeLoc FVector
---@param Owner ASTExtraBaseCharacter
---@return FVector
function UObserverCameraComponent:GetNonObstacleRelativeLoc(StartRelativeLoc, EndRelativeLoc, Owner) end

---Returns camera's Point of View. Called by Camera class. Subclass and postprocess to add any effects.
---@param DeltaTime number
---@param DesiredView FMinimalViewInfo
function UObserverCameraComponent:GetCameraView(DeltaTime, DesiredView) end

---@param DeltaTime number
---@param DesiredView FMinimalViewInfo
---@return boolean
function UObserverCameraComponent:GetCameraViewBlueprint(DeltaTime, DesiredView) end

function UObserverCameraComponent:RefreshCameraWorldRot() end

---@return boolean
function UObserverCameraComponent:RefreshCameraWorldRotBlueprint() end

---@param InFieldOfView number
function UObserverCameraComponent:SetFieldOfView(InFieldOfView) end

---@param InFieldOfView number
---@return boolean
function UObserverCameraComponent:SetFieldOfViewBlueprint(InFieldOfView) end

---@param rot FRotator
---@param IsShouldAdditiveDeltaRot boolean
---@return FRotator
function UObserverCameraComponent:SetFreeCameraDeltaRot(rot, IsShouldAdditiveDeltaRot) end

---@return FRotator
function UObserverCameraComponent:GetWorldFinalRot() end

function UObserverCameraComponent:UpdateHelicopterFppCamera() end

---@return boolean
function UObserverCameraComponent:UpdateHelicopterBlueprintCamera() end

---@param NewMode EPerspectiveMode
function UObserverCameraComponent:SwitchPerspectiveMode(NewMode) end
