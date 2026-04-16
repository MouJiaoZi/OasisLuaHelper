---@meta

---@class ManagerParticleType
---@field None number
---@field PurpleColor number
---@field GoldColor number
---@field AirdropColor number
---@field Other number
ManagerParticleType = {}


---@class ParticleFilterType
---@field None number
---@field custom number
ParticleFilterType = {}


---@class FParticleNotifyData
---@field Loc FVector
---@field Type ManagerParticleType
---@field BisActive boolean
---@field ExintTag number
FParticleNotifyData = {}


---@class FRepParticleData
---@field NotifyActiveData ULuaArrayHelper<FParticleNotifyData>
FRepParticleData = {}


---@class ALightBeamManagerBaseActor: AUAERegionActor
---@field ParticleArray ULuaArrayHelper<UParticleSystemComponent>
---@field RepParticleData FRepParticleData
---@field FileterType ParticleFilterType
local ALightBeamManagerBaseActor = {}

function ALightBeamManagerBaseActor:ReleaseInstance() end

function ALightBeamManagerBaseActor:InitManager() end

function ALightBeamManagerBaseActor:OnRep_RepParticleData() end

---@param ActiveData ULuaArrayHelper<FParticleNotifyData>
function ALightBeamManagerBaseActor:ClientUpdateParticleLocation(ActiveData) end

---@param ParticleSystem UParticleSystemComponent
---@param Loc FVector
---@param type ManagerParticleType
---@param ExintTag number
function ALightBeamManagerBaseActor:UpdateParticleSystemCompData(ParticleSystem, Loc, type, ExintTag) end

---@param ActiveData FParticleNotifyData
---@return number
function ALightBeamManagerBaseActor:AddParticleNotifyData(ActiveData) end

---@param Index number
---@param BisActive boolean
---@return boolean
function ALightBeamManagerBaseActor:SetRepParticleActiveStateByIndex(Index, BisActive) end

function ALightBeamManagerBaseActor:DoRep_RepParticleData() end

function ALightBeamManagerBaseActor:ClientRefreshParticle() end

function ALightBeamManagerBaseActor:DefaultCustomClientUpdateParticleLocation() end

function ALightBeamManagerBaseActor:DeactiveAllParticle() end
