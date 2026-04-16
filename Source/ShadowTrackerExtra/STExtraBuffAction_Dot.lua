---@meta

---@class FBADotInstanceStruct
FBADotInstanceStruct = {}


---@class UDamageType_BuffDot: USTExtraDamageType
local UDamageType_BuffDot = {}


---@class USTExtraBuffAction_Dot: USTExtraBuffAction
---@field IntervalTime number
---@field bPercent boolean
---@field DotValue number
---@field DotValueGetter FUTFloatPropertyGetter
---@field NeedMultiplyDamageForLayer boolean
---@field bUseBuffApplierAsDamageCauser boolean
---@field bUseBuffApplierAsDamageCauserInUGCMobile boolean
---@field bLayeredDamage boolean
---@field DamageTypeClass UDamageType
---@field HasEffectWhenNearDeath boolean
---@field DamageItemID number
local USTExtraBuffAction_Dot = {}

---@param DamageAmmount number
---@return number
function USTExtraBuffAction_Dot:CalculateLayerDamageAmmount(DamageAmmount) end
