---@meta

---@class FActivityCountdownTipHandle
FActivityCountdownTipHandle = {}


---@class FOnPersistClientStateHandleOnDefualt : ULuaMulticastDelegate
FOnPersistClientStateHandleOnDefualt = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter, StructName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPersistClientStateHandleOnDefualt:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
---@param StructName string
function FOnPersistClientStateHandleOnDefualt:Broadcast(Character, StructName) end


---@class FOnPersistClientStateHandleOnOBIn : ULuaMulticastDelegate
FOnPersistClientStateHandleOnOBIn = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter, StructName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPersistClientStateHandleOnOBIn:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
---@param StructName string
function FOnPersistClientStateHandleOnOBIn:Broadcast(Character, StructName) end


---@class FOnPersistClientStateHandleOnOBOut : ULuaMulticastDelegate
FOnPersistClientStateHandleOnOBOut = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter, StructName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPersistClientStateHandleOnOBOut:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
---@param StructName string
function FOnPersistClientStateHandleOnOBOut:Broadcast(Character, StructName) end


---@class IActivityCountdownTipDataSyncInterface
IActivityCountdownTipDataSyncInterface = {}

---@param ShowUIName string
---@param BeginCountTime number
---@param TotalCount number
---@param ActivityUIShowMode EActivityUIShowMode
---@param TipID number
function IActivityCountdownTipDataSyncInterface:SetSyncData(ShowUIName, BeginCountTime, TotalCount, ActivityUIShowMode, TipID) end


---@class UPersistClientStateComponent: UPersistBaseComponent
---@field ForcePersonPerspectiveInfo FPersistForcePersonPerspectiveInfo
---@field ViewTargetInfo FPersistViewTargetInfo
---@field SubAnimInfo FPersistSubAnimInfo
---@field UIStyleInfo FPersistUIStyleInfo
---@field ActivityUIInfo FPersistActivityUIInfo
---@field RTPCValueInfo FPersistRTPCValueInfo
local UPersistClientStateComponent = {}

---@param PC AUAEPlayerController
function UPersistClientStateComponent:RecoverClientStateNetLoss(PC) end

function UPersistClientStateComponent:RecoverClientStateApplicationReactivated() end

---@param bSetUp boolean
---@param SubInstanceClass UAnimInstance
---@param SlotName string
---@param OwningActor UObject
---@param SubAnimTypes number
function UPersistClientStateComponent:SetUpSubAnimInstanceServer(bSetUp, SubInstanceClass, SlotName, OwningActor, SubAnimTypes) end

---@param bSetUp boolean
---@param TargetActor AActor
---@param BlendTime number
function UPersistClientStateComponent:SetUpSubViewTargetServer(bSetUp, TargetActor, BlendTime) end

---@param bSetup boolean
---@param UserWidgetStyle UUserWidgetStyle
function UPersistClientStateComponent:SetUpUIStyleInfo(bSetup, UserWidgetStyle) end

---@param bSetup boolean
---@param ShowUIName string
---@param OwningActor UObject
---@param ActivityUIShowMode EActivityUIShowMode
---@param ClientCheckParam string
function UPersistClientStateComponent:SetUpActivityUIInfo(bSetup, ShowUIName, OwningActor, ActivityUIShowMode, ClientCheckParam) end

function UPersistClientStateComponent:RefreshActivityUIInfo() end

---@param bSetup boolean
---@param ShowUINames ULuaArrayHelper<string>
---@param OwningActor UObject
---@param ActivityUIShowMode EActivityUIShowMode
function UPersistClientStateComponent:SetUpActivityUIInfos(bSetup, ShowUINames, OwningActor, ActivityUIShowMode) end

function UPersistClientStateComponent:GetUIStyleList() end

---@param bSetup boolean
---@param RTPCValues ULuaArrayHelper<FPersistRTPCKeyValue>
function UPersistClientStateComponent:SetUpRTPCValue(bSetup, RTPCValues) end

---@param bSetUp boolean
---@param bFpp boolean
---@param LockTPPReason ELockTPPReason
function UPersistClientStateComponent:SetUpForcePersonPerspective(bSetUp, bFpp, LockTPPReason) end

function UPersistClientStateComponent:RefreshForcePersonPerspective() end

---@param BeginGameStateServerTime number
---@param TotalCount number
---@param ShowUIName string
---@param ActivityUIShowMode EActivityUIShowMode
---@param TipID number
---@return FActivityCountdownTipHandle
function UPersistClientStateComponent:DisplayActivityCountdownTip(BeginGameStateServerTime, TotalCount, ShowUIName, ActivityUIShowMode, TipID) end

---@param TipHandle FActivityCountdownTipHandle
function UPersistClientStateComponent:StopDisplayActivityCountdownTip(TipHandle) end

function UPersistClientStateComponent:OnRep_ViewTargetInfo() end

function UPersistClientStateComponent:OnMainCharAnimInstanceInit() end

function UPersistClientStateComponent:OnRep_ActivityUIInfo() end
