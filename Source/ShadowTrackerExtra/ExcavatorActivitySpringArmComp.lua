---@meta

---@class UExcavatorActivitySpringArmComp: UActivitySpringArmComponent
---@field SpringArmParentAttachedSocketName string
---@field bFollowParent boolean
---@field InputExtraRot FRotator
local UExcavatorActivitySpringArmComp = {}

---@return FRotator
function UExcavatorActivitySpringArmComp:GetTargetRotation() end

---@param Pitch number
---@param Yaw number
---@param Loc FVector2D
function UExcavatorActivitySpringArmComp:OnTouchMove(Pitch, Yaw, Loc) end

---@param bEnabled boolean
function UExcavatorActivitySpringArmComp:SetComponentTickEnabled(bEnabled) end

function UExcavatorActivitySpringArmComp:OnRep_SimulateViewData() end
