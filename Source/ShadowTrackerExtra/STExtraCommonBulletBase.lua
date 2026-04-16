---@meta

---@class ASTExtraCommonBulletBase: AActor
---@field PunctureTimes number
---@field DamageTypeClass UDamageType
---@field bShowNormalTailFXImpactInfo boolean
---@field bDrawImpactNormal boolean
---@field MaxShootDistance number
---@field BulletIsActive boolean
---@field DamageValue number
---@field CurPunctureTimes number
---@field BeamTailFXCompOriginDisLoc FVector
---@field OriginLoc FVector
---@field BulletMeshComponentRef UPrimitiveComponent
local ASTExtraCommonBulletBase = {}

---@param _ImpactResult FHitResult
function ASTExtraCommonBulletBase:OnImpact(_ImpactResult) end
