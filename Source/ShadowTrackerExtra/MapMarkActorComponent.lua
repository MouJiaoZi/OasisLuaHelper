---@meta

---@class UMapMarkActorComponent: UActorComponent
---@field MapMarkActorPath string
---@field MapMarkSoftObjectPath FSoftObjectPath
---@field bCheckPlayerHeight boolean
---@field PlayerHeightThreshold number
---@field TickInterval number
---@field bSetParticleSizeEnabled boolean
---@field bComfirmHasDestroyAllActors boolean
local UMapMarkActorComponent = {}

---@return boolean
function UMapMarkActorComponent:CanModifyMapMarkParticleActorBase() end

---@param World UWorld
---@return boolean
function UMapMarkActorComponent:CanModifyMapMarkParticleActor(World) end

---@param World UWorld
---@return boolean
function UMapMarkActorComponent:HasPlayerStateEnterFighting(World) end

---@param MyPlayerState ASTExtraPlayerState
---@return boolean
function UMapMarkActorComponent:CanMarkParticleLocation(MyPlayerState) end

---@param World UWorld
---@return boolean
function UMapMarkActorComponent:ShouldLoadMapMarkActorClass(World) end

function UMapMarkActorComponent:ModifyMapMarkParticleActor() end

---@param InMapMarkActorPath string
function UMapMarkActorComponent:ModifyMapMarkActorPath(InMapMarkActorPath) end

function UMapMarkActorComponent:ModifyParticleSize() end

---@param World UWorld
---@param SoftObjectPtr UObject
function UMapMarkActorComponent:OnAsyncLoadMapMarkCompleted(World, SoftObjectPtr) end

---@param World UWorld
---@param ActorClass UClass
function UMapMarkActorComponent:UpdateMapMarkParticleActor(World, ActorClass) end

---@param bVisible boolean
function UMapMarkActorComponent:SetAllMapMarkParticleActorsVisible(bVisible) end

---@return boolean
function UMapMarkActorComponent:ReachParachutePlayerHeightThreshold() end

function UMapMarkActorComponent:DestroyAllMapMarkParticleActors() end
