---@meta

---@class ESubAnimMapReplaceType
---@field ESubAnimMapReplace_None number
---@field ESubAnimMapReplace_TPP number
---@field ESubAnimMapReplace_FPP number
---@field ESubAnimMapReplace_NewFPP number
---@field ESubAnimMapReplace_Weapon number
ESubAnimMapReplaceType = {}


---@class FLoadAnimData
---@field LoadIndex number
---@field AnimMapData FAnimMapData
---@field TargetAnim UAnimInstance
FLoadAnimData = {}


---@class FOnWeaponSubAnimConfigReplaceEvent : ULuaMulticastDelegate
FOnWeaponSubAnimConfigReplaceEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AnimMap: USubAnimInstanceMap, UID_Runtime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeaponSubAnimConfigReplaceEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param AnimMap USubAnimInstanceMap
---@param UID_Runtime number
function FOnWeaponSubAnimConfigReplaceEvent:Broadcast(AnimMap, UID_Runtime) end


---@class USubAnimInstanceMap: UDataAsset
---@field AnimMap ULuaMapHelper<ESubAnimType, FAnimMapData>
---@field AnimLoadList ULuaArrayHelper<FLoadAnimData>
---@field SyncLoadIndex number
---@field OnWeaponSubAnimConfigReplaceStart FOnWeaponSubAnimConfigReplaceEvent
---@field OnWeaponSubAnimConfigReplaceEnd FOnWeaponSubAnimConfigReplaceEvent
local USubAnimInstanceMap = {}

---@param SyncIndex number
function USubAnimInstanceMap:OnLoadAnimComponent(SyncIndex) end

---@param SyncIndex number
function USubAnimInstanceMap:ProcessAsyncLoadFinishIndex(SyncIndex) end

---@param LoadAnimData FLoadAnimData
function USubAnimInstanceMap:ProcessLoadAnimData(LoadAnimData) end

---@param SyncIndex number
---@param LoadAnimData FLoadAnimData
---@return boolean
function USubAnimInstanceMap:DequeueLoadIndexLoadAnimData(SyncIndex, LoadAnimData) end

---@param LoadAnimData FLoadAnimData
function USubAnimInstanceMap:RemoveLoadIndexLoadAnimData(LoadAnimData) end

---@param LoadAnimData FLoadAnimData
function USubAnimInstanceMap:EnqueueLoadIndexLoadAnimData(LoadAnimData) end

function USubAnimInstanceMap:UpdateFinishPending_GameThread() end

---@param SubAnimTypeName ESubAnimType
---@param TagetAnim UAnimInstance
function USubAnimInstanceMap:ReplaceSubAnimNodeBySubAnimType(SubAnimTypeName, TagetAnim) end

---@param AnimData FAnimMapData
---@param TagetAnim UAnimInstance
function USubAnimInstanceMap:ReplaceSubAnimNodeByAnimData(AnimData, TagetAnim) end

---@param SubAnimTypeName ESubAnimType
---@param targetAnim UAnimInstance
function USubAnimInstanceMap:ResetSubAnimNodeBySubAnimType(SubAnimTypeName, targetAnim) end

---@param AnimData FAnimMapData
---@param targetAnim UAnimInstance
---@param OldAnimClass UAnimInstance
function USubAnimInstanceMap:ResetSubAnimNodeBySlot(AnimData, targetAnim, OldAnimClass) end
