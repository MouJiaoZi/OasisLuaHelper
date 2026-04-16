---@meta

---@class FUTBuffSyncData
---@field BuffName string
---@field BuffID number
---@field BuffInstanceID number
---@field LayerCount number
---@field RemainingTime number
---@field ExpireTime number
---@field AttachCounter number
---@field BlackBoardSyncData FBlackBoardSyncDataArrayWrapper
FUTBuffSyncData = {}


---@class UTBuffSyncDataWrapper: UObject
---@field BuffSyncData FUTBuffSyncData
local UTBuffSyncDataWrapper = {}


---Buff管理组件
---@class USTBaseBuffSystemComponent: UActorComponent, IUTSkillInstanceNodeContainerInterface, IObjectPoolInterface
---@field OnBuffAttached FSimpleBuffDelegate
---@field OnBuffDetached FSimpleBuffDelegate
---@field UGC_BuffAttachedDelegate FSimpleBuffDelegate @Buff添加委托 生效范围：SC @param BuffName Buff名字
---@field UGC_BuffDetachedDelegate FSimpleBuffDelegate @Buff移除委托 生效范围：SC @param BuffName Buff名字
---@field BuffSyncTimer number
---@field BuffSynIndexMap ULuaMapHelper<number, number>
---@field BuffSyncList ULuaArrayHelper<FUTBuffSyncData>
---@field BuffSyncDataWrapperList ULuaArrayHelper<UTBuffSyncDataWrapper>
---@field ServerBuffString string
---@field BuffSyncRemainingPeriod number
---@field SimulateTickInterval number
---@field ActorOwner AActor
---@field bSyncBuffRequired boolean
---@field ResetForDeathDelayTimerHandler FTimerHandle
---@field RepBuffListDelayTimerHandler FTimerHandle
local USTBaseBuffSystemComponent = {}

---@param BuffName string
---@param BuffCauser AController
---@param LayerCount number
---@param BuffApplierActor AActor
---@param CauserActor AActor
---@return number
function USTBaseBuffSystemComponent:AddBuff(BuffName, BuffCauser, LayerCount, BuffApplierActor, CauserActor) end

---@param NewBuffName string
---@return boolean
function USTBaseBuffSystemComponent:IsBufferMutexed(NewBuffName) end

---@param BuffInstanceID number
---@param bRemoveLayerOnly boolean
---@return boolean
function USTBaseBuffSystemComponent:RemoveBuffByInstanceID(BuffInstanceID, bRemoveLayerOnly) end

---@param BuffTag FGameplayTag
---@param bRemoveLayerOnly boolean
---@return boolean
function USTBaseBuffSystemComponent:RemoveBuffsByGameplayTag(BuffTag, bRemoveLayerOnly) end

---@param BuffName string
---@param bRemoveLayerOnly boolean
---@param BuffApplierActor AActor
---@param pCauser AController
---@return boolean
function USTBaseBuffSystemComponent:RemoveBuff(BuffName, bRemoveLayerOnly, BuffApplierActor, pCauser) end

---@param BuffName string
---@return boolean
function USTBaseBuffSystemComponent:HasBuff(BuffName) end

---@param BuffTag FGameplayTag
---@return boolean
function USTBaseBuffSystemComponent:HasBuffByTag(BuffTag) end

---@param BuffName string
---@return boolean
function USTBaseBuffSystemComponent:IsBuffPendingRemove(BuffName) end

function USTBaseBuffSystemComponent:ClearAllBuff() end

---@param BuffName string
---@return number
function USTBaseBuffSystemComponent:GetBuffIDByName(BuffName) end

---@param BuffName string
---@return number
function USTBaseBuffSystemComponent:GetBuffMaxLayer(BuffName) end

---@param InstanceID number
---@return boolean
function USTBaseBuffSystemComponent:IsInstanceValid(InstanceID) end

---@param BuffName string
---@return FBuffInstancedItem
function USTBaseBuffSystemComponent:K2_GetBuffInstanceByName(BuffName) end

---@param InstanceID number
---@return FBuffInstancedItem
function USTBaseBuffSystemComponent:K2_GetBuffInstanceByInstanceID(InstanceID) end

---@param BuffName string
---@param BuffInstance FBuffInstancedItem
---@return boolean
function USTBaseBuffSystemComponent:GetBuffInstanceByName(BuffName, BuffInstance) end

---@param BuffName string
---@return number
function USTBaseBuffSystemComponent:GetBuffInstanceIDByName(BuffName) end

---@param BuffName string
---@param BuffApplierActor AActor
---@return number
function USTBaseBuffSystemComponent:GetBuffInstanceIDWithApplier(BuffName, BuffApplierActor) end

---@param BuffInstanceID number
---@param ExpirySeconds number
---@return boolean
function USTBaseBuffSystemComponent:SetBuffExpiry(BuffInstanceID, ExpirySeconds) end

---@param InstanceID number
---@return number
function USTBaseBuffSystemComponent:GetBuffExpiry(InstanceID) end

---@param BuffID number
---@return string
function USTBaseBuffSystemComponent:GetBuffName(BuffID) end

---@param PC APlayerController
function USTBaseBuffSystemComponent:OnSwitchedDS(PC) end

function USTBaseBuffSystemComponent:OnRep_BuffSyncList() end

function USTBaseBuffSystemComponent:RepBuffSyncListPtr() end

---@param BuffInstanceID number
---@param Name string
---@param Type EUAEBlackboardType
function USTBaseBuffSystemComponent:ReplicateBlackboard(BuffInstanceID, Name, Type) end

---@param InstanceID number
function USTBaseBuffSystemComponent:ReplicateAllBlackboard(InstanceID) end
