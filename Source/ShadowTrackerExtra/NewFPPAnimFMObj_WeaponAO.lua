---@meta

---@class FAimOffsetParams
---@field MaxValueX number
---@field MaxValueY number
---@field InterpSpeedX number
---@field InterpSpeedY number
---@field RotatonSpeedX number
---@field ScopeRotatonSpeedX number
---@field MoveDecayX number
---@field AORatio_Stand number
---@field AORatio_Crouch number
---@field AORatio_Prone number
FAimOffsetParams = {}


---@class UNewFPPAnimFMObj_WeaponAO: UAnimFunctionModule_ObjInstance
---@field AOParams FAimOffsetParams
---@field OutAOValueX number
---@field OutAOValueY number
---@field bIsScoping boolean
---@field ScopeAlpha number
---@field AOAlpha number
---@field ScopeAOAlpha number
---@field bIsMoving boolean
---@field bIsAssetDirty boolean
---@field LastViewRotation FRotator
---@field TargetAOValueX number
---@field TargetAOValueY number
---@field VelocityX number
local UNewFPPAnimFMObj_WeaponAO = {}

---@param EventMsg string
function UNewFPPAnimFMObj_WeaponAO:HandleOwnerAnimEvent(EventMsg) end
