---@meta

---@class FBloodCoreData
---@field SpawnTime number
---@field Location FVector_NetQuantize
---@field PickedTime number
---@field MoveSpeed number
FBloodCoreData = {}


---@class FBloodCorePickDataNet
FBloodCorePickDataNet = {}


---@class UBloodCore: UActorComponent
---@field bCreatBloodCore boolean
---@field LifeTime number
---@field PickRadius number
---@field bIgnorePickRadius boolean
---@field bUseDynamicSpeed boolean
---@field MoveSpeed number
---@field MinDis number
---@field MaxDis number
---@field MinTime number
---@field MaxTime number
---@field bUseDelayPickedTime boolean
---@field DelayPickedTimeInterval number
---@field MinSpawnNum number
---@field MaxSpawnNum number
---@field MaxCount number
---@field SpawnInterval number
---@field SpawnRadius number
---@field NetData ULuaArrayHelper<FBloodCoreData>
---@field PrevNetData ULuaArrayHelper<FBloodCoreData>
---@field PSCs ULuaArrayHelper<UParticleSystemComponent>
---@field Victims ULuaSetHelper<AActor>
local UBloodCore = {}

---@param Victim AActor
function UBloodCore:Create(Victim) end

function UBloodCore:Clear() end

function UBloodCore:OnRep_NetData() end

---@param InVictims ULuaArrayHelper<AActor>
function UBloodCore:ClientSpawnHurtEffect(InVictims) end

---@param Location FVector
function UBloodCore:OnBloodCoreExpired(Location) end

---@param Location FVector
function UBloodCore:OnBloodCoreOverLimit(Location) end

---@param Location FVector
function UBloodCore:OnPawnPickedOneTarget(Location) end

---@param Location FVector
function UBloodCore:OnBloodCoreExploded(Location) end

---@return boolean
function UBloodCore:HasAuthority() end
