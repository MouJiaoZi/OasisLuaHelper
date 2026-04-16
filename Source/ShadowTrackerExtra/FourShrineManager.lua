---@meta

---@class FShrineActor
---@field ShrineState EShrineState
---@field Shrine AActor
FShrineActor = {}


---@class FHoldActors
---@field Actors ULuaArrayHelper<AActor>
FHoldActors = {}


---四相神殿管理器
---@class UFourShrineManager: UObject
---@field ShrineActors ULuaMapHelper<EBeastType, FShrineActor>
---@field BeastActors ULuaMapHelper<EBeastType, AActor>
---@field ShrineHoldActors ULuaMapHelper<EBeastType, FHoldActors>
local UFourShrineManager = {}

function UFourShrineManager:OnGameEnterFinish() end

function UFourShrineManager:ClearInstance() end

---@param BeastType EBeastType
---@param InActor AActor
---@return boolean
function UFourShrineManager:RegisterBeastActor(BeastType, InActor) end

---@param BeastType EBeastType
---@return boolean
function UFourShrineManager:UnRegisterBeastActor(BeastType) end

---@param BeastType EBeastType
---@param InActor AActor
---@return boolean
function UFourShrineManager:RegisterShrineActor(BeastType, InActor) end

---@param BeastType EBeastType
---@return boolean
function UFourShrineManager:UnRegisterShrineActor(BeastType) end

---@param BeastType EBeastType
---@param InActor AActor
---@return boolean
function UFourShrineManager:RegisterRelicActor(BeastType, InActor) end

---@param BeastType EBeastType
---@param InActor AActor
---@return boolean
function UFourShrineManager:UnRegisterRelicActor(BeastType, InActor) end

---@param BeastType EBeastType
---@param ShrineEvent EShrineEvent
function UFourShrineManager:TriggerEvent(BeastType, ShrineEvent) end

---@param ShrineActorType EShrineActorType
---@param BeastType EBeastType
---@param RegisterActor AActor
function UFourShrineManager:StaticRegisterActor(ShrineActorType, BeastType, RegisterActor) end
