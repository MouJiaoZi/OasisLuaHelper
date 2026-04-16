---@meta

---@class FUTSkillEntryConfig
---@field Entry EUTSkillEntry @entry button for associated skill - burgesswang 2016-9-23
---@field SkillIndex number @skill index which this config associated to - burgesswang 2016-9-23
---@field Interrupts string @skill indices which can be interrupted by this skill, separated by semicolon - burgesswang 2016-9-22
FUTSkillEntryConfig = {}


---@class FSkillActiveEvent : ULuaMulticastDelegate
FSkillActiveEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SkillIndex: number, Active: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSkillActiveEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param SkillIndex number
---@param Active boolean
function FSkillActiveEvent:Broadcast(SkillIndex, Active) end


---@class UUAESkillManagerComponent: UUTSkillManagerComponent
---@field SkillEntryConfigs ULuaArrayHelper<FUTSkillEntryConfig> @skill entry bindings, defining which button triggers which skill - burgesswang 2016-9-22
---@field TriggerSkillEventFromRole ENetRole
---@field CurrentGSListener UGSListenerBase
---@field TriggerSkillListenerByString ULuaArrayHelper<UUAESkillStringEventEffectMapForEditor>
---@field TriggerSkillListenerByUAEEume ULuaArrayHelper<UUAESkillEventEffectMapForEditor>
---@field TriggerSkillListenerByUTEume ULuaArrayHelper<UUTSkillEventEffectMapForEditor>
---@field TriggerSkillListenerByGS ULuaArrayHelper<UUAEGSLisenterEffectMapForEditor>
---@field CardChangeProtectTime number
local UUAESkillManagerComponent = {}

---@param SkillID number
---@return number
function UUAESkillManagerComponent:GetRestCoolDownTime(SkillID) end

---@param SkillID number
---@param EventTypeStr string
---@param bWithRPC boolean
function UUAESkillManagerComponent:TriggerStringEvent(SkillID, EventTypeStr, bWithRPC) end

---@param SkillUID number
---@param EventTypeStr string
function UUAESkillManagerComponent:ServerTriggerStringEvent(SkillUID, EventTypeStr) end

---@param UAEEvent EUAESkillEvent
---@param SkillIndex number
---@param bLocal boolean
function UUAESkillManagerComponent:TriggerCurSkillEvent(UAEEvent, SkillIndex, bLocal) end

---@param UAEEvent EUAESkillEvent
---@param SkillUID number
function UUAESkillManagerComponent:ServerTriggerCurSkillEvent(UAEEvent, SkillUID) end

---@param ItemDefineID FItemDefineID
---@param EventType UTSkillEventType
function UUAESkillManagerComponent:ServerTriggerSkillEvent(ItemDefineID, EventType) end

---@param InAction string
---@param InEventActor AActor
function UUAESkillManagerComponent:OnEventPlayerAction(InAction, InEventActor) end

---@param InEventName string
---@param skillUID number
---@param fromRole ENetRole
function UUAESkillManagerComponent:TriggerSkillEvent_RPC_String(InEventName, skillUID, fromRole) end

---@param InEventEume EUAESkillEvent
---@param skillUID number
---@param fromRole ENetRole
function UUAESkillManagerComponent:TriggerSkillEvent_RPC_EUAESkillEvent(InEventEume, skillUID, fromRole) end

---@param InEventEume UTSkillEventType
---@param skillUID number
---@param fromRole ENetRole
function UUAESkillManagerComponent:TriggerSkillEvent_RPC_UTSkillEventType(InEventEume, skillUID, fromRole) end

---@param InEventEume UTSkillEventType
---@param skillUID number
---@param fromRole ENetRole
function UUAESkillManagerComponent:TriggerSkillEvent_UTSkillEventType(InEventEume, skillUID, fromRole) end

---@param SkillUID number
function UUAESkillManagerComponent:ResimulateSkillStringEvent(SkillUID) end

---@param SkillUID number
function UUAESkillManagerComponent:ResimulateSkillEvent(SkillUID) end

---@param Listener UGSListenerBase
function UUAESkillManagerComponent:OnGsListenerTrigger(Listener) end

---@param GSLisenterEffectMapForEditorTemplate UUAEGSLisenterEffectMapForEditor
---@param InSkill AUTSkill
function UUAESkillManagerComponent:HandleAddGsListener(GSLisenterEffectMapForEditorTemplate, InSkill) end

---@param GSLisenterEffectMapForEditorTemplate UUAEGSLisenterEffectMapForEditor
function UUAESkillManagerComponent:HandleRemoveGsListener(GSLisenterEffectMapForEditorTemplate) end

---@param SelfCharacter ASTExtraCharacter
---@param state EPawnState
function UUAESkillManagerComponent:OnTargetCharacterStateLeave(SelfCharacter, state) end

---@param SkillUID number
function UUAESkillManagerComponent:HandleSkillCastEvent(SkillUID) end

---@param Tag FGameplayTag
function UUAESkillManagerComponent:OnSkillDynamicStateInterruptedServer(Tag) end
