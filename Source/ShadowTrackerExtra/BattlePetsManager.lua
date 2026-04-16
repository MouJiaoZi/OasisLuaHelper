---@meta

---@class FPlayerBattlePetConfigInfo
---@field PetItemID number
---@field PetClassPath ABattlePet
FPlayerBattlePetConfigInfo = {}


---@class FOnNewPetSpawned : ULuaMulticastDelegate
FOnNewPetSpawned = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewPet: ABattlePet, bSucc: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNewPetSpawned:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewPet ABattlePet
---@param bSucc boolean
function FOnNewPetSpawned:Broadcast(NewPet, bSucc) end


---@class ABattlePetsManager: AActor
---@field PetsConfig ULuaMapHelper<number, FPlayerBattlePetConfigInfo>
---@field MutexPawnStates ULuaArrayHelper<EPawnState>
---@field MsgMasterStateInvalidTipsID number
---@field CurrentPetID number
---@field IsCurrentPetOut boolean
---@field OnNewPetSpawnDelegate FOnNewPetSpawned
---@field IsCalling boolean
local ABattlePetsManager = {}

---@param PetID number
---@return boolean
function ABattlePetsManager:CalloutOrSpawnPet(PetID) end

---@param PetID number
---@return boolean
function ABattlePetsManager:BP_OnPreCalloutPet(PetID) end

---@param PetID number
---@return boolean
function ABattlePetsManager:BP_OnPostCalloutPet(PetID) end

---@return boolean
function ABattlePetsManager:CallbackCurrentPet() end

function ABattlePetsManager:BP_OnPreCallbackCurrentPet() end

function ABattlePetsManager:BP_OnPostCallbackCurrentPet() end

function ABattlePetsManager:DestroyCurrentPet() end

---@param PetID number
function ABattlePetsManager:BP_OnPostDestroyCurrentPet(PetID) end

---@param ActorPtr ABattlePet
---@param PetID number
function ABattlePetsManager:OnAsyncLoadingPetFinished(ActorPtr, PetID) end

---@return boolean
function ABattlePetsManager:IsCurrentPetCallout() end
