---@meta

---@class IDamageableTagInterface
IDamageableTagInterface = {}

---@return number
function IDamageableTagInterface:GetDamageTag() end


---@class IDamageableSerializeInterface
IDamageableSerializeInterface = {}

---@return boolean
function IDamageableSerializeInterface:ForSerializeTag_VictimLocation() end


---@class IDamageStatisticsInterface
IDamageStatisticsInterface = {}

---@return boolean
function IDamageStatisticsInterface:CheckHitFlow_AddHitCount() end


---@class IShootDamageVerifyInterface
IShootDamageVerifyInterface = {}

---@return boolean
function IShootDamageVerifyInterface:GetNeedBlockVerify() end


---@class IPickerEffectInterface
IPickerEffectInterface = {}

---@param OwnerPicker AActor
---@return boolean
function IPickerEffectInterface:CheckCanBeLocked(OwnerPicker) end


---@class IDamageNumberInterface
IDamageNumberInterface = {}

---@param Damage number
---@param DamageFlags number
---@param DamageType number
---@param InstigatorController AController
---@param DamageTypeTags ULuaArrayHelper<string>
---@param DamageInstigatorPawn APawn
---@param DamagePoint FVector
---@param DamageBodyType number
function IDamageNumberInterface:HandleShowDamageNumber(Damage, DamageFlags, DamageType, InstigatorController, DamageTypeTags, DamageInstigatorPawn, DamagePoint, DamageBodyType) end
