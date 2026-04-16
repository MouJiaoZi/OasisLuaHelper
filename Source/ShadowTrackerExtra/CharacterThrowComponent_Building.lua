---@meta

---@class EThrowLimitation
---@field None number
---@field Angle number
---@field PathBlocked number
---@field Collision number
EThrowLimitation = {}


---@class UCharacterThrowComponent_Building: UCharacterThrowComponent
---@field ThrowablePitch FVector2D
---@field ThrowableHeightOffset number
---@field SpiralRadius number
---@field bUseClampLimitPitch boolean
---@field ClampLimitPitch FVector2D
local UCharacterThrowComponent_Building = {}

---@return boolean
function UCharacterThrowComponent_Building:BP_CanAimCheck() end

---@return boolean
function UCharacterThrowComponent_Building:BP_CanThrowCheck() end

---@param Reason EThrowLimitation
---@param OutOrigin FVector
---@return boolean
function UCharacterThrowComponent_Building:CheckThrowLimitation(Reason, OutOrigin) end

---@return FRotator
function UCharacterThrowComponent_Building:GetCalculatedThrowVelocityDirection() end
