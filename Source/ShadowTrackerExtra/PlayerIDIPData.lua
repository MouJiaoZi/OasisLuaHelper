---@meta

---@class FClientNotifyChangeDelegate : ULuaMulticastDelegate
FClientNotifyChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, UpKeys: ULuaArrayHelper<string>, ClearKeys: ULuaArrayHelper<string>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClientNotifyChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param UpKeys ULuaArrayHelper<string>
---@param ClearKeys ULuaArrayHelper<string>
function FClientNotifyChangeDelegate:Broadcast(UpKeys, ClearKeys) end


---@class UPlayerIDIPData: UNetAlienationData, ILuaInterface
---@field bIsIDIP boolean
---@field TagStr string
---@field CppTaskTransList ULuaMapHelper<number, FJumpHappyPersist>
---@field ClientNotifyChangeDelegate FClientNotifyChangeDelegate
local UPlayerIDIPData = {}

---@param UID number
---@param JumpHappyData FJumpHappyPersist
---@param value number
function UPlayerIDIPData:AddTaskList(UID, JumpHappyData, value) end

---@return string
function UPlayerIDIPData:GetLuaModule() end

---@param InOwner UNetAlienationDataComponent
function UPlayerIDIPData:BindDelegate(InOwner) end

---@param PC APlayerController
function UPlayerIDIPData:OnPlayerPostLogin(PC) end

---@param UpKeys ULuaArrayHelper<string>
---@param ClearKeys ULuaArrayHelper<string>
function UPlayerIDIPData:ClientNotifyChange(UpKeys, ClearKeys) end

---@param PC ASTExtraPlayerController
---@param IDIPKey number
---@param Param number
function UPlayerIDIPData:GetOrAddData_IDIP(PC, IDIPKey, Param) end

---@param PC ASTExtraPlayerController
---@param IDIPKey number
---@param Param number
function UPlayerIDIPData:UpdateData_IDIP(PC, IDIPKey, Param) end

---@param PC ASTExtraPlayerController
---@param IDIPKey FGameplayTag
---@param Param number
function UPlayerIDIPData:GetOrAddData_Persist(PC, IDIPKey, Param) end

---@param PC ASTExtraPlayerController
---@param IDIPKey FGameplayTag
---@param Param number
function UPlayerIDIPData:UpdateData_Persist(PC, IDIPKey, Param) end
