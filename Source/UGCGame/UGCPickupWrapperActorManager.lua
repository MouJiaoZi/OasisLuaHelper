---@meta

---@class FWrapperActorListStruct
---@field Array ULuaArrayHelper<AUGCPickUpWrapperActor>
FWrapperActorListStruct = {}


---@class UUGCPickupWrapperActorManager: UObject
---@field bInitialized boolean
---@field ClearRate number
---@field ItemIDWrapperMap ULuaMapHelper<number, FWrapperActorListStruct>
---@field CustomTypeWrapperMap ULuaMapHelper<string, FWrapperActorListStruct>
---@field ItemTagWrapperMap ULuaMapHelper<string, FWrapperActorListStruct>
local UUGCPickupWrapperActorManager = {}

function UUGCPickupWrapperActorManager:ClearInValidMap() end

---@param WrapperActor AUGCPickUpWrapperActor
function UUGCPickupWrapperActorManager:RegisterOneWrapper(WrapperActor) end

---@param WrapperActor AUGCPickUpWrapperActor
---@param DefineID FItemDefineID
function UUGCPickupWrapperActorManager:UnRegisterWrapper(WrapperActor, DefineID) end

---@return string
function UUGCPickupWrapperActorManager:PrintDebugInfo() end
