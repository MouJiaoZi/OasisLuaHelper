---@meta

---@class UPartHitSimpleComponent: UPartHitComponent
---@field HitBoxComponentTag string
---@field HitBoxAttachSocket string
---@field bDebugDrawHitPos boolean
---@field DebugDrawHitPosTime number
local UPartHitSimpleComponent = {}

---@param InHitPos FVector
---@param InImpactVec FVector
---@param InBoneName string
---@return EAvatarDamagePosition
function UPartHitSimpleComponent:GetHitBodyType(InHitPos, InImpactVec, InBoneName) end

---@param InHitPos FVector
---@return EAvatarDamagePosition
function UPartHitSimpleComponent:GetHitBodyTypeByHitPos(InHitPos) end

---@param hitPos FVector
---@param Projvec FVector
---@param centerPos FVector
---@param bodyDef FBodyTypeDef
---@return EAvatarDamagePosition
function UPartHitSimpleComponent:CalcHitBodyType(hitPos, Projvec, centerPos, bodyDef) end
