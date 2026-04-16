---@meta

---@class EGenericAbilityWorkSide
---@field WorkOnSimulatedClient number
---@field WorkOnAutonomousClient number
---@field WorkOnServer number
EGenericAbilityWorkSide = {}


---@class EGenericAbilityOperationType
---@field Add number @添加
---@field Remove number @移除
EGenericAbilityOperationType = {}


---@class FGenericAbilityKeyArray
---@field KeyArray ULuaArrayHelper<FGenericAbilityKey>
FGenericAbilityKeyArray = {}


---@class FGenericAbilityRepItem
---@field GenericAbilityKey FGenericAbilityKey
---@field GenericAbilityRepProcessor UGenericAbilityRepProcessorBase
---@field GenericAbilityWorkSide number
---@field CachedAbilityKey FGenericAbilityKey
---@field GenericAbilityPath FSoftClassPath
---@field GenericAbilityType number
---@field CachedRepItemIndex number
FGenericAbilityRepItem = {}


---@class FGenericAbilityRepData
---@field GenericAbilityIDList ULuaArrayHelper<FGenericAbilityRepItem>
FGenericAbilityRepData = {}


---@class UGenericAbilityBase: UObject
---@field GenericAbilityTags FGameplayTagContainer
---@field GenericAbilityWorkSide number
---@field GenericAbilityKey FGenericAbilityKey
---@field GenericAbilityType number
---@field ItemHandleGiver UBattleItemHandleBase
---@field Carrier IGenericAbilityCarrierInterface
---@field bActiveOnCarrier boolean
local UGenericAbilityBase = {}

---@param InWorkSide number
---@param InNetRole ENetRole
---@return boolean
function UGenericAbilityBase:ShouldWorkOnGivenSide(InWorkSide, InNetRole) end

---@param GAID FGenericAbilityKey
---@param GAType number
---@param InHandleGiver UBattleItemHandleBase
function UGenericAbilityBase:GenericAbilityInit(GAID, GAType, InHandleGiver) end

---@param InCarrier IGenericAbilityCarrierInterface
function UGenericAbilityBase:GenericAbilityMountToCarrier(InCarrier) end

function UGenericAbilityBase:GenericAbilityUnmountFromCarrier() end

---@return boolean
function UGenericAbilityBase:CanActivateGenericAbility() end

---@return boolean
function UGenericAbilityBase:CanDeactivateGenericAbility() end

function UGenericAbilityBase:GenericAbilityActivate() end

function UGenericAbilityBase:GenericAbilityDeactivate() end

---@return boolean
function UGenericAbilityBase:IsWorkOnServerSide() end

---@return boolean
function UGenericAbilityBase:IsWorkOnClientSide() end

---@return string
function UGenericAbilityBase:GetGAInstanceID() end
