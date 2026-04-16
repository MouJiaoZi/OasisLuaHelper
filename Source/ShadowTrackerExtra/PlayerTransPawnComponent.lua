---@meta

---@class FRecordDataBeforeTrans
FRecordDataBeforeTrans = {}


---@class FTransPawnFinish : ULuaMulticastDelegate
FTransPawnFinish = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewPawn: APawn, OldPawn: APawn) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTransPawnFinish:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewPawn APawn
---@param OldPawn APawn
function FTransPawnFinish:Broadcast(NewPawn, OldPawn) end


---@class FTransPawnBefore : ULuaMulticastDelegate
FTransPawnBefore = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldPawn: APawn) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTransPawnBefore:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldPawn APawn
function FTransPawnBefore:Broadcast(OldPawn) end


---@class FTransPawnShowUIFinish : ULuaSingleDelegate
FTransPawnShowUIFinish = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTransPawnShowUIFinish:Bind(Callback, Obj) end

---执行委托
function FTransPawnShowUIFinish:Execute() end


---@class UPlayerTransPawnComponent: UActorComponent, IObjectPoolInterface
---@field bHasTranToTarget boolean
---@field OriginPawn APawn
---@field TransTargetPawn APawn
---@field ExtendUIWidget UUserWidget
---@field SkillTemplateClasses ULuaArrayHelper<AUTSkill>
---@field DataBefore FRecordDataBeforeTrans
---@field Delay_TransformToTarget number
---@field Delay_TransformToOrigin number
---@field FXClass_TransformToTarget AActor
---@field FXClass_TransformToOrigin AActor
---@field FX_Delay_TransformToTarget number
---@field FX_Delay_TransformToOrigin number
---@field BlackTransToPawnStates ULuaArrayHelper<EPawnState>
---@field OnTransPawnBefore FTransPawnBefore
---@field OnTransPawnFinish FTransPawnFinish
---@field OnTransPawnShowUIFinish FTransPawnShowUIFinish
---@field TimeHandle_TransToTarget FTimerHandle
---@field TimeHandle_TransToOrigin FTimerHandle
---@field TimeHandle_FX_TransToTarget FTimerHandle
---@field TimeHandle_FX_TransToOrigin FTimerHandle
local UPlayerTransPawnComponent = {}

---@param TargetPawn APawn
function UPlayerTransPawnComponent:SetTargetPawn(TargetPawn) end

function UPlayerTransPawnComponent:TransformToTargetPawn() end

function UPlayerTransPawnComponent:TransformToTargetPawn_Internal() end

function UPlayerTransPawnComponent:TransformToOriginPawn() end

function UPlayerTransPawnComponent:TransformToOriginPawn_Internal() end

function UPlayerTransPawnComponent:TransformPawn() end

function UPlayerTransPawnComponent:AddSkills() end

function UPlayerTransPawnComponent:RemoveSkills() end

function UPlayerTransPawnComponent:CopyPawnData() end

---@param fromChar ASTExtraBaseCharacter
---@param toChar ASTExtraBaseCharacter
function UPlayerTransPawnComponent:CopyPawnData_Process(fromChar, toChar) end

---@param fromChar ASTExtraBaseCharacter
---@param toChar ASTExtraBaseCharacter
function UPlayerTransPawnComponent:CopyPawnData_Process_BP(fromChar, toChar) end

function UPlayerTransPawnComponent:RecordDataBeforeTrans() end

function UPlayerTransPawnComponent:RecoverDataBeforeTrans() end

---@param RepFXClass_TransformToTarget AActor
function UPlayerTransPawnComponent:SpawnFX_TransToTarget(RepFXClass_TransformToTarget) end

---@param RepFXClass_TransformToOrigin AActor
function UPlayerTransPawnComponent:SpawnFX_TransToOrigin(RepFXClass_TransformToOrigin) end

---@param RepFXClass_TransformToTarget AActor
function UPlayerTransPawnComponent:SpawnFX_TransToTarget_Internal(RepFXClass_TransformToTarget) end

---@param RepFXClass_TransformToOrigin AActor
function UPlayerTransPawnComponent:SpawnFX_TransToOrigin_Internal(RepFXClass_TransformToOrigin) end

---@param RepExtendUIWidget UUserWidget
---@param RepTargetUIStyle UUserWidgetStyle
function UPlayerTransPawnComponent:ShowTargetUI(RepExtendUIWidget, RepTargetUIStyle) end

---@param RepExtendUIWidget UUserWidget
---@param RepTargetUIStyle UUserWidgetStyle
function UPlayerTransPawnComponent:HideTargetUI(RepExtendUIWidget, RepTargetUIStyle) end

---@param RepExtendUIWidget UUserWidget
---@param RepTargetUIStyle UUserWidgetStyle
function UPlayerTransPawnComponent:ShowTargetUI_Internal(RepExtendUIWidget, RepTargetUIStyle) end

---@param RepExtendUIWidget UUserWidget
---@param RepTargetUIStyle UUserWidgetStyle
function UPlayerTransPawnComponent:HideTargetUI_Internal(RepExtendUIWidget, RepTargetUIStyle) end

---ñʱƷͣڻָpickup,ɫڱʱոû
---@param InParams FTransPawnCacheItemTypes
function UPlayerTransPawnComponent:TransformPawnCachedItemsUntilRecover(InParams) end
