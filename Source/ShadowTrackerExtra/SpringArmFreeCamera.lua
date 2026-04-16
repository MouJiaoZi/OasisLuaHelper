---@meta

---@class USpringArmFreeCamera: UObject
---@field FreeCamRotationExtra FRotator
---@field bFreeCamAutoReturnEnabled boolean
---@field bUseLocalSpaceClamp boolean
---@field bClampPitch boolean
---@field ResultMinPitch number
---@field ResultMaxPitch number
---@field FreeCamRotationReturnRate number
local USpringArmFreeCamera = {}

---@param SpringArm USpringArmComponent
function USpringArmFreeCamera:InitDefaultData(SpringArm) end

---عfreecameraֹС۾״̬¾ͷ
---@param DeltaTime number
function USpringArmFreeCamera:UpdateFreeCamera(DeltaTime) end

---@param deltaRot FRotator
---@param IsShouldAdditiveDeltaRot boolean
---@return FRotator
function USpringArmFreeCamera:SetFreeCameraInput(deltaRot, IsShouldAdditiveDeltaRot) end

---@param bEnabled boolean
function USpringArmFreeCamera:SetFreeCameraAutoReturn(bEnabled) end

function USpringArmFreeCamera:ResetFreeCamera() end

---@param min number
---@param max number
function USpringArmFreeCamera:SetFreeCameraPitchLimit(min, max) end

---@param DesiredRot FRotator
function USpringArmFreeCamera:GetControlRotation(DesiredRot) end

---@return FRotator
function USpringArmFreeCamera:GetLookRotation() end
