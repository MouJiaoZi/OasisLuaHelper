---@meta

---@class FOnTriggerEventSkillIDModify : ULuaSingleDelegate
FOnTriggerEventSkillIDModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, SkillCompPtr: UUTSkillManagerComponent, EventType: UTSkillEventType, InSkillID: number, OutSkillID: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTriggerEventSkillIDModify:Bind(Callback, Obj) end

---执行委托
---@param SkillCompPtr UUTSkillManagerComponent
---@param EventType UTSkillEventType
---@param InSkillID number
---@param OutSkillID number
function FOnTriggerEventSkillIDModify:Execute(SkillCompPtr, EventType, InSkillID, OutSkillID) end


---@class UUAECharacterSkillManagerComponent: UUAESkillManagerComponent
local UUAECharacterSkillManagerComponent = {}

---@param Pawn AActor
function UUAECharacterSkillManagerComponent:SetSkillOwner(Pawn) end

---@param SkillID number
---@param EventType UTSkillEventType
---@return boolean
function UUAECharacterSkillManagerComponent:TriggerEvent(SkillID, EventType) end

---@param UAEEvent EUAESkillEvent
---@param SkillIndex number
---@param bLocal boolean
function UUAECharacterSkillManagerComponent:TriggerCurSkillEvent(UAEEvent, SkillIndex, bLocal) end

---@param bAttach boolean
function UUAECharacterSkillManagerComponent:SetSkillAnimListAttach(bAttach) end

---@param Target UObject
---@param MemberMethodName string
---@return boolean
function UUAECharacterSkillManagerComponent:BindOnTriggerEventSkillIDModifyEvent(Target, MemberMethodName) end

function UUAECharacterSkillManagerComponent:UnbindOnTriggerEventSkillIDModifyEvent() end
