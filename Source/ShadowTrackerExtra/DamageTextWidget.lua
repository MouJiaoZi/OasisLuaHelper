---@meta

---@class UDamageTextWidget: UDamageNumberWidget
---@field HelmetSocketName string
---@field HelmetOffsetZ number
local UDamageTextWidget = {}

---@param TargetActor AActor
---@param DamageStr string
---@param bHeadShot boolean
---@param TeamColorInfo FDamageNumberTeamColorInfo
function UDamageTextWidget:AddDamageText(TargetActor, DamageStr, bHeadShot, TeamColorInfo) end
