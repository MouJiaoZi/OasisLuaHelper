---@meta

---@class FDestructInfo
FDestructInfo = {}


---@class UPickUpWrapperDestructibleComponent: UActorComponent, IObjectPoolInterface
---@field LastHitInfo FDestructInfo
---@field Health number
---@field OnDestructed FOnDestructed
---@field bDestructed number
local UPickUpWrapperDestructibleComponent = {}

---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
---@return number
function UPickUpWrapperDestructibleComponent:ModifyDamage(Damage, DamageType, InstigatedBy, DamageCauser) end

---@param DamagedActor AActor
---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function UPickUpWrapperDestructibleComponent:HandleTakeDamage(DamagedActor, Damage, DamageType, InstigatedBy, DamageCauser) end

---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function UPickUpWrapperDestructibleComponent:ReceiveTakeDamage(Damage, DamageType, InstigatedBy, DamageCauser) end

function UPickUpWrapperDestructibleComponent:OnRep_LastHitInfo() end

function UPickUpWrapperDestructibleComponent:OnRep_bDestructed() end

function UPickUpWrapperDestructibleComponent:ReceiveDestructed() end

function UPickUpWrapperDestructibleComponent:ReceiveResetDestructedState() end

function UPickUpWrapperDestructibleComponent:ResetDestructedState() end
