---@meta

---@class UTargetProducer_Blueprint: UTargetProducer
---@field bRespondToTakeDamage boolean
local UTargetProducer_Blueprint = {}

function UTargetProducer_Blueprint:GetGenericCharacter() end

---@param InRange number
function UTargetProducer_Blueprint:K2_IterateNearbyEntityByRadius(InRange) end

---是否满足过滤条件
---生效范围：服务器
---@param Target UObject
---@return boolean
function UTargetProducer_Blueprint:IsTargetFilterAccept(Target) end

---Event
---初始化事件，在逻辑组件初始化时触发
---生效范围：服务器
function UTargetProducer_Blueprint:OnInitializeEvent() end

---Event
---结束事件，在逻辑组件销毁时触发
---生效范围：服务器
function UTargetProducer_Blueprint:OnDeInitializeEvent() end

---Event
---更新事件，逻辑组件tick时触发
---生效范围：服务器
---@param InDeltaSeconds number
function UTargetProducer_Blueprint:OnUpdateEvent(InDeltaSeconds) end

---Event
---返回该Producer模块是否有效,tick时检查
---生效范围：服务器
---@return boolean
function UTargetProducer_Blueprint:CanExecuteEvent() end

---Event
---返回是否需要重新计算最优目标
---生效范围：服务器
---@param InOldTarget AActor
---@return boolean
function UTargetProducer_Blueprint:CheckIfSwitchNewTargetEvent(InOldTarget) end

---Event
---角色受击事件
---生效范围：服务器
---@param InDamage number
---@param InDamageEvent FDamageEvent
---@param EventInstigator AController
---@param InDamageCauser AActor
function UTargetProducer_Blueprint:OnTakeDamageEvent(InDamage, InDamageEvent, EventInstigator, InDamageCauser) end

---@param Entity AActor
---@param DistSqu number
---@return boolean
function UTargetProducer_Blueprint:OnNearbyEntityFind(Entity, DistSqu) end
