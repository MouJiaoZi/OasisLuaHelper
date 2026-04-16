---@meta

---@class USTExtraSpringArmComponent: USpringArmComponent, IObjectPoolInterface
---@field SocketOffsetInterpSpeed number
---@field TargetOffsetInterpSpeed number
---@field ArmLengthInterpSpeed number
---@field CurCameraData FCameraOffsetData
---@field DefaultCameraData FCameraOffsetData
---@field bViewTargetIsAnActor boolean
---@field AddtiveRotation FRotator
---@field CachedIgonreActor ULuaArrayHelper<AActor>
---@field CachedIgonrePrimitiveComponent ULuaArrayHelper<UPrimitiveComponent>
local USTExtraSpringArmComponent = {}

function USTExtraSpringArmComponent:ClearCameraData() end

---@param bDoTrace boolean
---@param bDoLocationLag boolean
---@param bDoRotationLag boolean
---@param DeltaTime number
function USTExtraSpringArmComponent:ForceUpdateDesiredArmLocation(bDoTrace, bDoLocationLag, bDoRotationLag, DeltaTime) end

---@return FRotator
function USTExtraSpringArmComponent:GetTargetRotation() end

---@param Actor AActor
function USTExtraSpringArmComponent:AddIgonreActor(Actor) end

---@param Actor AActor
function USTExtraSpringArmComponent:RemoveIgonreActor(Actor) end

---@param Compoent UPrimitiveComponent
function USTExtraSpringArmComponent:AddIgonreComponent(Compoent) end

---@param Compoent UPrimitiveComponent
function USTExtraSpringArmComponent:RemoveIgonreComponent(Compoent) end
