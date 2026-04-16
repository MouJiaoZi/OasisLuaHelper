---@meta

---@class USTExtraVehicleSpringArmComponent: USpringArmComponent
---@field SocketOffsetInterpSpeed number
---@field TargetOffsetInterpSpeed number
---@field ArmLengthInterpSpeed number
---@field UseRotationLimit boolean
---@field bRotationLimitIsRelativeOwnerComp boolean
---@field YawMin number
---@field YawMax number
---@field PitchMin number
---@field PitchMax number
---@field ModifierTemplate USpringArmModifier
---@field bModifyCurCameraData boolean
---@field CurActiveDataList ULuaArrayHelper<FCameraOffsetData>
---@field CurCameraData FCameraOffsetData
---@field bViewTargetIsAnActor boolean
---@field CachedIgonreActor ULuaArrayHelper<AActor>
local USTExtraVehicleSpringArmComponent = {}

---@param bDoTrace boolean
---@param bDoLocationLag boolean
---@param bDoRotationLag boolean
---@param DeltaTime number
function USTExtraVehicleSpringArmComponent:ForceUpdateDesiredArmLocation(bDoTrace, bDoLocationLag, bDoRotationLag, DeltaTime) end

function USTExtraVehicleSpringArmComponent:ClearCameraData() end

---@param CustomCameraData FCameraOffsetData
---@param IsEnable boolean
function USTExtraVehicleSpringArmComponent:SetCustomCameraDataEnable(CustomCameraData, IsEnable) end

---@param DataName string
---@return boolean
function USTExtraVehicleSpringArmComponent:IsCameraDataEnableByName(DataName) end

---@return FRotator
function USTExtraVehicleSpringArmComponent:GetTargetRotation() end

---@param Actor AActor
function USTExtraVehicleSpringArmComponent:AddIgonreActor(Actor) end

---@param Actor AActor
function USTExtraVehicleSpringArmComponent:RemoveIgonreActor(Actor) end
