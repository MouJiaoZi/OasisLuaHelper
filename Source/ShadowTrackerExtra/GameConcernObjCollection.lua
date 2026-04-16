---@meta

---@class FGameWeakObjPtr
---@field WeakObjPtr UObject
FGameWeakObjPtr = {}


---@class FGameConcernWeakObjList
---@field WeakObjList ULuaArrayHelper<FGameWeakObjPtr>
FGameConcernWeakObjList = {}


---@class FGameWeakActorPtr
---@field WeakActorPtr AActor
FGameWeakActorPtr = {}


---@class FGameConcernWeakActorList
---@field WeakActorList ULuaArrayHelper<FGameWeakActorPtr>
FGameConcernWeakActorList = {}


---@class UGameConcernObjCollection: UBlueprintFunctionLibrary
---@field ConcernObjCollection ULuaMapHelper<string, FGameConcernWeakObjList>
---@field ConcernActorCollection ULuaMapHelper<string, FGameConcernWeakActorList>
local UGameConcernObjCollection = {}

---@return boolean
function UGameConcernObjCollection:IsGameConcernObjFeatureEnable() end

---@param InWorldContextObj UObject
---@param InConcernTag string
---@param InConcernObj UObject
function UGameConcernObjCollection:StaticCall_RegisterConcernObj(InWorldContextObj, InConcernTag, InConcernObj) end

---@param InWorldContextObj UObject
---@param InConcernTag string
---@param InConcernObj UObject
function UGameConcernObjCollection:StaticCall_UnRegisterConcernObj(InWorldContextObj, InConcernTag, InConcernObj) end

---@param InWorldContextObj UObject
---@param InConcernTag string
---@param InConcernActor AActor
function UGameConcernObjCollection:StaticCall_RegisterConcernActor(InWorldContextObj, InConcernTag, InConcernActor) end

---@param InWorldContextObj UObject
---@param InConcernTag string
---@param InConcernActor AActor
function UGameConcernObjCollection:StaticCall_UnRegisterConcernActor(InWorldContextObj, InConcernTag, InConcernActor) end

---@param InWorldContextObj UObject
---@param InConcernTag string
---@return FGameConcernWeakObjList
function UGameConcernObjCollection:StaticCall_GetGameConcernWeakObjList(InWorldContextObj, InConcernTag) end

---@param InWorldContextObj UObject
---@param InConcernTag string
---@return FGameConcernWeakActorList
function UGameConcernObjCollection:StaticCall_GetGameConcernWeakActorList(InWorldContextObj, InConcernTag) end

---@param InWorldContextObj UObject
---@param InConcernTag string
---@param InConcernObj UObject
---@return boolean
function UGameConcernObjCollection:StaticCall_IsRegisterConcernObj(InWorldContextObj, InConcernTag, InConcernObj) end

---@param InWorldContextObj UObject
---@param InConcernTag string
---@param InConcernActor AActor
---@return boolean
function UGameConcernObjCollection:StaticCall_IsRegisterConcernActor(InWorldContextObj, InConcernTag, InConcernActor) end

---@param InConcernTag string
---@param InConcernObj UObject
function UGameConcernObjCollection:RegisterConcernObj(InConcernTag, InConcernObj) end

---@param InConcernTag string
---@param InConcernObj UObject
function UGameConcernObjCollection:UnRegisterConcernObj(InConcernTag, InConcernObj) end

---@param InConcernTag string
---@param InConcernActor AActor
function UGameConcernObjCollection:RegisterConcernActor(InConcernTag, InConcernActor) end

---@param InConcernTag string
---@param InConcernActor AActor
function UGameConcernObjCollection:UnRegisterConcernActor(InConcernTag, InConcernActor) end

---@param InConcernTag string
---@return FGameConcernWeakObjList
function UGameConcernObjCollection:GetGameConcernWeakObjList(InConcernTag) end

---@param InConcernTag string
---@return FGameConcernWeakActorList
function UGameConcernObjCollection:GetGameConcernWeakActorList(InConcernTag) end

function UGameConcernObjCollection:ClearGameConcernObjCollection() end

---@param InConcernTag string
---@param InConcernObj UObject
---@return boolean
function UGameConcernObjCollection:IsRegisterConcernObj(InConcernTag, InConcernObj) end

---@param InConcernTag string
---@param InConcernActor AActor
---@return boolean
function UGameConcernObjCollection:IsRegisterConcernActor(InConcernTag, InConcernActor) end
