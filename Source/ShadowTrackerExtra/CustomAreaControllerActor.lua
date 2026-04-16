---@meta

---@class FOnActorEnterArea : ULuaMulticastDelegate
FOnActorEnterArea = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EnteringActor: AActor, AreaComponent: UOverlapCheckAreaComponent, AreaTags: FGameplayTagContainer) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActorEnterArea:Add(Callback, Obj) end

---触发 Lua 广播
---@param EnteringActor AActor
---@param AreaComponent UOverlapCheckAreaComponent
---@param AreaTags FGameplayTagContainer
function FOnActorEnterArea:Broadcast(EnteringActor, AreaComponent, AreaTags) end


---@class FOnActorLeaveArea : ULuaMulticastDelegate
FOnActorLeaveArea = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LeavingActor: AActor, AreaComponent: UOverlapCheckAreaComponent, AreaTags: FGameplayTagContainer) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActorLeaveArea:Add(Callback, Obj) end

---触发 Lua 广播
---@param LeavingActor AActor
---@param AreaComponent UOverlapCheckAreaComponent
---@param AreaTags FGameplayTagContainer
function FOnActorLeaveArea:Broadcast(LeavingActor, AreaComponent, AreaTags) end


---@class FOnAreaStateChanged : ULuaMulticastDelegate
FOnAreaStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AreaComponent: UOverlapCheckAreaComponent, bIsActive: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAreaStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param AreaComponent UOverlapCheckAreaComponent
---@param bIsActive boolean
function FOnAreaStateChanged:Broadcast(AreaComponent, bIsActive) end


---@class ACustomAreaControllerActor: AActivityBaseActor
---@field OverlapCheckAreaCompSelect ULuaArrayHelper<FOverlapCheckAreaComponentSelector>
---@field AreaTags FGameplayTagContainer
---@field TagsToAddOnEnter FGameplayTagContainer
---@field TagsToRemoveOnExit FGameplayTagContainer
---@field bAutoActivate boolean
---@field ActorsInArea ULuaArrayHelper<AActor>
---@field OnActorEnterArea FOnActorEnterArea
---@field OnActorLeaveArea FOnActorLeaveArea
---@field OnAreaStateChanged FOnAreaStateChanged
---@field AreaEffectTypes ULuaArrayHelper<UAreaEffectBase>
---@field AreaEffects ULuaArrayHelper<UAreaEffectBase>
---@field AreaComponents ULuaArrayHelper<UOverlapCheckAreaComponent>
---@field bEnableAreaTick boolean
---@field AreaTickInterval number
---@field CleanupDelay number
local ACustomAreaControllerActor = {}

function ACustomAreaControllerActor:ActivateAreaController() end

function ACustomAreaControllerActor:DeactivateAreaController() end

function ACustomAreaControllerActor:GetAreaComponents() end

---@param TagToAdd FGameplayTag
function ACustomAreaControllerActor:AddGameplayTag(TagToAdd) end

---@param TagToRemove FGameplayTag
function ACustomAreaControllerActor:RemoveGameplayTag(TagToRemove) end

---@param TagToCheck FGameplayTag
---@return boolean
function ACustomAreaControllerActor:HasGameplayTag(TagToCheck) end

---@param TagsToCheck FGameplayTagContainer
---@return boolean
function ACustomAreaControllerActor:HasAllGameplayTags(TagsToCheck) end

---@param TagsToCheck FGameplayTagContainer
---@return boolean
function ACustomAreaControllerActor:HasAnyGameplayTags(TagsToCheck) end

---@param Effect UAreaEffectBase
function ACustomAreaControllerActor:AddAreaEffect(Effect) end

---@param Effect UAreaEffectBase
---@return boolean
function ACustomAreaControllerActor:RemoveAreaEffect(Effect) end

---@param EffectID string
---@return boolean
function ACustomAreaControllerActor:RemoveEffectByID(EffectID) end

---@param TargetActor AActor
---@param AreaComponent UOverlapCheckAreaComponent
function ACustomAreaControllerActor:ApplyEnterEffectsToActor(TargetActor, AreaComponent) end

---@param TargetActor AActor
---@param AreaComponent UOverlapCheckAreaComponent
function ACustomAreaControllerActor:ApplyEnterTagsToActor(TargetActor, AreaComponent) end

---@param TargetActor AActor
---@param AreaComponent UOverlapCheckAreaComponent
function ACustomAreaControllerActor:ApplyLeaveEffectsToActor(TargetActor, AreaComponent) end

---@param TargetActor AActor
---@param AreaComponent UOverlapCheckAreaComponent
function ACustomAreaControllerActor:ApplyLeaveTagsToActor(TargetActor, AreaComponent) end

---@param CheckActorArray FOverlapCheckActorArray
function ACustomAreaControllerActor:HandleActorEnterArea(CheckActorArray) end

---@param NowCheckState EAreaOverlapCheckState
function ACustomAreaControllerActor:HandleAreaStateChanged(NowCheckState) end

---@param EnteringActor AActor
---@param AreaComponent UOverlapCheckAreaComponent
function ACustomAreaControllerActor:ProcessActorEnter(EnteringActor, AreaComponent) end

---@param LeavingActor AActor
---@param AreaComponent UOverlapCheckAreaComponent
function ACustomAreaControllerActor:ProcessActorLeave(LeavingActor, AreaComponent) end

---@param DeltaTime number
function ACustomAreaControllerActor:ProcessAreaTick(DeltaTime) end

function ACustomAreaControllerActor:HandleAreaControllerCleanup() end
