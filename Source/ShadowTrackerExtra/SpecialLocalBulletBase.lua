---@meta

---@class ASpecialLocalBulletBase: AActor, IObjectPoolInterface
---@field DefaultPoolSize number
---@field LifeTime number
---@field MaxShootDistance number
---@field LaunchGravityScale number
---@field OnLaunchBullet FLaunchBulletDelegate
---@field ClientShootStartTime number
---@field OriginLoc FVector
local ASpecialLocalBulletBase = {}

---@param Speed number
---@param Loc FVector
---@param Rot FRotator
---@param InOwningWeapon ASTExtraShootWeapon
function ASpecialLocalBulletBase:Launch(Speed, Loc, Rot, InOwningWeapon) end

---@param bFromPersistentPool boolean
function ASpecialLocalBulletBase:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function ASpecialLocalBulletBase:OnRecycled(bToPersistentPool) end

function ASpecialLocalBulletBase:HandleOutOfRange() end

function ASpecialLocalBulletBase:HandleOutOfTime() end

function ASpecialLocalBulletBase:OnDestoryBullet() end

function ASpecialLocalBulletBase:ResetData() end
