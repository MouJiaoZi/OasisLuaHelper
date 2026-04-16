---@meta

---@class FBulletBuffAttrModifyItemConfig
---@field WeaponIDList ULuaArrayHelper<number>
---@field WeaponTypeList ULuaArrayHelper<EWeaponTypeNew>
---@field SpeedScaleAttrModifyByBuffLayer ULuaArrayHelper<FAttrModifyItem>
FBulletBuffAttrModifyItemConfig = {}


---@class UBulletHitBuffComponent: UActorComponent, IBuffActionAttrModifyInterface
---@field BulletHitBuffName string
---@field AddBuffLayerCountOneHit number
---@field BuffSourceKey string
---@field AttrModifyListConfig ULuaArrayHelper<FBulletBuffAttrModifyItemConfig>
---@field MeleeWeaponDamageTypeList ULuaArrayHelper<EDamageType>
---@field UseValueScale boolean
local UBulletHitBuffComponent = {}

---@param BuffAction USTExtraBuffAction
---@return number
function UBulletHitBuffComponent:GetAttrModifyItemGetValueScale(BuffAction) end

---@param Victim AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function UBulletHitBuffComponent:OnReceiveAnyDamage(Victim, Damage, DamageType, InstigatedBy, DamageCauser) end
