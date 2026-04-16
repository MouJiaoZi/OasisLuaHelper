---@meta

---@class FAvatarMaterialEffectManagerDebugStruct
---@field CurValidState number
---@field ShouldLerp boolean
---@field SlotID number
FAvatarMaterialEffectManagerDebugStruct = {}


---@class FOnAvatarMaterialEffectStateChange : ULuaMulticastDelegate
FOnAvatarMaterialEffectStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SlotID: number, NamePair: FAvatarMaterialNamePair, PreState: number, CurState: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAvatarMaterialEffectStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param SlotID number
---@param NamePair FAvatarMaterialNamePair
---@param PreState number
---@param CurState number
function FOnAvatarMaterialEffectStateChange:Broadcast(SlotID, NamePair, PreState, CurState) end


---@class UAvatarMaterialEffectManager: UObject
---@field TickLerpInterval number
---@field AvatarMaterialEffectDataMapBySlot ULuaMapHelper<number, FAvatarMaterialEffectDataMeshComp>
---@field CurAvatarStateList ULuaSetHelper<number>
---@field LerpTimerHandle FTimerHandle
---@field IsLerpTickStart boolean
---@field CurRegisterState ULuaSetHelper<number>
---@field ParticleComponentTag string
---@field CurrentStateAndSlotForDebug ULuaMapHelper<string, FAvatarMaterialEffectManagerDebugStruct>
---@field OnAvatarMatEffectStateChange FOnAvatarMaterialEffectStateChange
---@field bClearCurrentValue boolean
---@field ClearCurrentValueIDList ULuaArrayHelper<number>
---@field ModifyMaterialParam ULuaArrayHelper<FModifyMaterialParam>
---@field bCanTickLerp boolean
local UAvatarMaterialEffectManager = {}

---@param InAvatarComp UAvatarComponent
function UAvatarMaterialEffectManager:InitOnCreated(InAvatarComp) end

function UAvatarMaterialEffectManager:InitBindDelegate() end

---@param SlotID number
---@param IsEquipped boolean
function UAvatarMaterialEffectManager:OnAvatarEquipped(SlotID, IsEquipped) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UAvatarMaterialEffectManager:OnAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end

---@param InSlotID number
---@param InMeshComp UMeshComponent
---@param InItemHandle UBattleItemHandleBase
---@return boolean
function UAvatarMaterialEffectManager:RegisterItemHanleData(InSlotID, InMeshComp, InItemHandle) end

---@param InSlotID number
function UAvatarMaterialEffectManager:RefreshCacheParticleComponent(InSlotID) end

---@param InSlotID number
function UAvatarMaterialEffectManager:UnRegisterItemHanleData(InSlotID) end

function UAvatarMaterialEffectManager:RefreshCurRegisterState() end

---@param InSlotID number
function UAvatarMaterialEffectManager:InitAvatarState(InSlotID) end

---@param InState number
---@return number
function UAvatarMaterialEffectManager:GetAvatarStateWeight(InState) end

---@return number
function UAvatarMaterialEffectManager:GetDefaultAvatarState() end

---@return number
function UAvatarMaterialEffectManager:GetNoneAvatarState() end

---@param InItemHandleStateList ULuaArrayHelper<number>
---@return number
function UAvatarMaterialEffectManager:GetValidAvatarState(InItemHandleStateList) end

---@param InState number
---@param InSlotID number
---@param InStateValueMap ULuaMapHelper<number, FAvatarMaterialEffectValue>
---@return number
function UAvatarMaterialEffectManager:GetSpecialValidAvatarState(InState, InSlotID, InStateValueMap) end

---@param InState number
---@param IsAdd boolean
---@param IsRefresh boolean
function UAvatarMaterialEffectManager:UpdateAvatarState(InState, IsAdd, IsRefresh) end

---@param InSlotID number
---@param IsRefresh boolean
---@param bForceUpdate boolean
function UAvatarMaterialEffectManager:UpdateAvatarStateBySlot(InSlotID, IsRefresh, bForceUpdate) end

function UAvatarMaterialEffectManager:TryStartTickLerpData() end

function UAvatarMaterialEffectManager:TryStopTickLerpData() end

function UAvatarMaterialEffectManager:TickLerpData() end

---@param InType EABF_AvatarExtraPartType
---@param InSlotID number
function UAvatarMaterialEffectManager:GetExtraMeshComponentsByType(InType, InSlotID) end

---@param InSlotID number
---@param InName FAvatarMaterialNamePair
---@param InValue number
---@param InStateValue FAvatarMaterialEffectValue
---@param bUseCurve boolean
---@return boolean
function UAvatarMaterialEffectManager:SetDMIParamBySlotID(InSlotID, InName, InValue, InStateValue, bUseCurve) end

---@param InSlotID number
---@param InName FAvatarMaterialNamePair
---@param InValue FLinearColor
---@return boolean
function UAvatarMaterialEffectManager:SetDMILinearColorParamBySlotID(InSlotID, InName, InValue) end

---@param InSlotID number
---@param InName FAvatarMaterialNamePair
---@param InAvatarParticleSet FAvatarParticleSet
---@param InValue number
---@return boolean
function UAvatarMaterialEffectManager:SetParticleDMIParamBySlotID(InSlotID, InName, InAvatarParticleSet, InValue) end

---@param InSlotID number
function UAvatarMaterialEffectManager:GetParticleComponentsForParam(InSlotID) end

---@param InLerpData FAvatarMaterialEffectData_Lerp
---@return number
function UAvatarMaterialEffectManager:GetAvatarMatLerpValue(InLerpData) end

---@param InLerpData FAvatarMaterialEffectData_Lerp
---@return FLinearColor
function UAvatarMaterialEffectManager:GetAvatarMatLerpLinearColorValue(InLerpData) end

---@param InLerpData FAvatarMaterialEffectData_Lerp
---@param DeltaTime number
---@return number
function UAvatarMaterialEffectManager:GetAvatarMatLoopValue(InLerpData, DeltaTime) end

---@param InLerpData FAvatarMaterialEffectData_Lerp
---@param DeltaTime number
---@return FLinearColor
function UAvatarMaterialEffectManager:GetAvatarMatLoopLinearColorValue(InLerpData, DeltaTime) end

---@param InLerpData FAvatarMaterialEffectData_Lerp
---@param DeltaTime number
---@return number
function UAvatarMaterialEffectManager:GetAvatarMatPingPongValue(InLerpData, DeltaTime) end

---@param InLerpData FAvatarMaterialEffectData_Lerp
---@param DeltaTime number
---@return FLinearColor
function UAvatarMaterialEffectManager:GetAvatarMatPingPongLinearColorValue(InLerpData, DeltaTime) end

---@return boolean
function UAvatarMaterialEffectManager:IsInBattle() end

---@param InAvatarParticleSet ULuaArrayHelper<FAvatarParticleSet>
---@param InSlotID number
function UAvatarMaterialEffectManager:OnLoadParticles(InAvatarParticleSet, InSlotID) end

---@param InAvatarParticleSet ULuaArrayHelper<FAvatarParticleSet>
---@param InSlotID number
function UAvatarMaterialEffectManager:UnLoadParticles(InAvatarParticleSet, InSlotID) end

---@param OutMatLerpData FAvatarMaterialEffectData_Lerp
---@param InMatEffectData FAvatarMaterialEffectDataRuntime
---@param InState number
function UAvatarMaterialEffectManager:UpdateMatEffectLerpData(OutMatLerpData, InMatEffectData, InState) end

---@param InEventName string
---@param InSlotID number
function UAvatarMaterialEffectManager:TriggerEvent(InEventName, InSlotID) end

---@param InEventName string
---@param InSlotID number
---@param InbTriggerEvent boolean
function UAvatarMaterialEffectManager:UpdateTriggerEventState(InEventName, InSlotID, InbTriggerEvent) end

---@param bForceUpdate boolean
function UAvatarMaterialEffectManager:ManualUpdateAvatarStateBySlot(bForceUpdate) end

---@return boolean
function UAvatarMaterialEffectManager:CanClearCurrentValue() end
