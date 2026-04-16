---@meta

---@class FActorPerceptionBlueprintInfo
---@field LastSensedStimuli ULuaArrayHelper<FAIStimulus>
---@field bIsHostile number
FActorPerceptionBlueprintInfo = {}


---@class FPerceptionUpdatedDelegate : ULuaMulticastDelegate
FPerceptionUpdatedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, UpdatedActors: ULuaArrayHelper<AActor>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPerceptionUpdatedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param UpdatedActors ULuaArrayHelper<AActor>
function FPerceptionUpdatedDelegate:Broadcast(UpdatedActors) end


---@class FActorPerceptionUpdatedDelegate : ULuaMulticastDelegate
FActorPerceptionUpdatedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Actor: AActor, Stimulus: FAIStimulus) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorPerceptionUpdatedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Actor AActor
---@param Stimulus FAIStimulus
function FActorPerceptionUpdatedDelegate:Broadcast(Actor, Stimulus) end


---AIPerceptionComponent is used to register as stimuli listener in AIPerceptionSystem and gathers registered stimuli. UpdatePerception is called when component gets new stimuli (batched)
---@class UAIPerceptionComponent: UActorComponent
---@field SensesConfig ULuaArrayHelper<UAISenseConfig>
---@field DominantSense UAISense @Indicated sense that takes precedence over other senses when determining sensed actor's location. Should be set to one of the senses configured in SensesConfig, or None.
---@field OnPerceptionUpdated FPerceptionUpdatedDelegate
---@field OnTargetPerceptionUpdated FActorPerceptionUpdatedDelegate
local UAIPerceptionComponent = {}

---@param Actor AActor
---@param EndPlayReason EEndPlayReason
function UAIPerceptionComponent:OnOwnerEndPlay(Actor, EndPlayReason) end

---Notifies AIPerceptionSystem to update properties for this "stimuli listener"
function UAIPerceptionComponent:RequestStimuliListenerUpdate() end

---@param OutActors ULuaArrayHelper<AActor>
function UAIPerceptionComponent:GetPerceivedHostileActors(OutActors) end

---If SenseToUse is none all actors currently perceived in any way will get fetched
---@param SenseToUse UAISense
---@param OutActors ULuaArrayHelper<AActor>
function UAIPerceptionComponent:GetCurrentlyPerceivedActors(SenseToUse, OutActors) end

---If SenseToUse is none all actors ever perceived in any way (and not forgotten yet) will get fetched
---@param SenseToUse UAISense
---@param OutActors ULuaArrayHelper<AActor>
function UAIPerceptionComponent:GetKnownPerceivedActors(SenseToUse, OutActors) end

---@param SenseToUse UAISense
---@param OutActors ULuaArrayHelper<AActor>
function UAIPerceptionComponent:GetPerceivedActors(SenseToUse, OutActors) end

---Retrieves whatever has been sensed about given actor
---@param Actor AActor
---@param Info FActorPerceptionBlueprintInfo
---@return boolean
function UAIPerceptionComponent:GetActorsPerception(Actor, Info) end

---Note that this works only if given sense has been already configured for this component instance
---@param SenseClass UAISense
---@param bEnable boolean
function UAIPerceptionComponent:SetSenseEnabled(SenseClass, bEnable) end
