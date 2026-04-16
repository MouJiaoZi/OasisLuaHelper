---@meta

---@class FOnMontageStoppedDelegate : ULuaMulticastDelegate
FOnMontageStoppedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Montage: UAnimMontage) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMontageStoppedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Montage UAnimMontage
function FOnMontageStoppedDelegate:Broadcast(Montage) end


---@class UAnimInstanceBase: UAnimInstance
---@field LastUpdateTime number
---@field LastUpdateDeltaTime number
---@field bUpdateWhenNotRender boolean
---@field UpdateAnimConditions ULuaArrayHelper<USubAnimUpdateCondition>
---@field FunctionModuleWhenNotRender ULuaArrayHelper<string>
---@field OnMontageStoppedEvent FOnMontageStoppedDelegate
---@field IsSyncGroupRoot_Toggle boolean
---@field IsFunctionModuleRoot boolean
---@field bNeedPostUpdateFMProcess boolean
---@field bNeedForceNewFMObjInstance boolean
---@field AnimRefMap ULuaMapHelper<UAnimationAsset, UAnimationAsset>
---@field bNeedUpdateAnimation boolean
---@field bUpdateMontageWhenNotUpdate boolean
local UAnimInstanceBase = {}

---@param DeltaSeconds number
function UAnimInstanceBase:UpdateWhenOnlyTickMontage(DeltaSeconds) end

---@param DeltaSeconds number
function UAnimInstanceBase:UpdateWhenOnlyTickMontage_BP(DeltaSeconds) end

---Stop all montages that are active *
---@param BlendOut number
function UAnimInstanceBase:StopAllMontagesIncludeSub(BlendOut) end

function UAnimInstanceBase:OnRespawned_BP() end

function UAnimInstanceBase:OnRecycled_BP() end

---@param InParentAnimInstance UAnimInstance
function UAnimInstanceBase:SetParentAnimInstance(InParentAnimInstance) end

---@param UpdateAnimAssetEvent EUpdateAnimAssetEvent
function UAnimInstanceBase:HandleUpdateAnimAssetEvent(UpdateAnimAssetEvent) end

function UAnimInstanceBase:InitFunctionModule() end

function UAnimInstanceBase:UnInitFunctionModule() end

---@param DeltaSeconds number
---@param FunctionModuleName string
---@param bSyncUpdate boolean
function UAnimInstanceBase:UpdateFuntionModuleByName(DeltaSeconds, FunctionModuleName, bSyncUpdate) end

---@param DeltaSeconds number
function UAnimInstanceBase:UpdateFuntionModule(DeltaSeconds) end

---@param DeltaSeconds number
---@param bSyncUpdate boolean
function UAnimInstanceBase:PostUpdateFuntionModule_Process(DeltaSeconds, bSyncUpdate) end

---@param DeltaSeconds number
function UAnimInstanceBase:UpdateFuntionModule_Async(DeltaSeconds) end

---@param DeltaSeconds number
function UAnimInstanceBase:PostUpdateFuntionModule(DeltaSeconds) end

function UAnimInstanceBase:CollectFunctionModule() end

function UAnimInstanceBase:ClearFunctionModule() end

function UAnimInstanceBase:EmptyFunctionModule() end

function UAnimInstanceBase:EmptyFMList() end

function UAnimInstanceBase:EmptyAddFMList() end

function UAnimInstanceBase:EmptyRemoveFMList() end

function UAnimInstanceBase:RecycleFunctionModule() end

function UAnimInstanceBase:ForceRemoveDirtyFunctionModule() end

---@param DeltaSeconds number
function UAnimInstanceBase:UpdateDirtyFunctionModule(DeltaSeconds) end

---@param DeltaSeconds number
---@param bRefreshFastReserch boolean
function UAnimInstanceBase:UpdateDirtyFunctionModule_Remove(DeltaSeconds, bRefreshFastReserch) end

---@param DeltaSeconds number
---@param bRefreshFastReserch boolean
function UAnimInstanceBase:UpdateDirtyFunctionModule_Add(DeltaSeconds, bRefreshFastReserch) end

function UAnimInstanceBase:ForceInitFunctionModule() end

function UAnimInstanceBase:ForceUnInitFunctionModule() end

---@return ESubAnimMapReplaceType
function UAnimInstanceBase:GetNativeSubAnimInstanceReplaceType() end
