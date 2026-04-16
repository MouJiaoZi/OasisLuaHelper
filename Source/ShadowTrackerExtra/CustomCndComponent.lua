---@meta

---@class FCustomCndWrappperIns
---@field CndWrapperId number
FCustomCndWrappperIns = {}


---@class UCustomCndComponent: UActorComponent
---@field CndWrappers ULuaArrayHelper<FCustomCndWrappperIns>
---@field bEnableCndServerOnly boolean
---@field bIsStartFireEnabled boolean
local UCustomCndComponent = {}

---@param OwnerActor AActor
function UCustomCndComponent:OnWeaponGetOwnerActor(OwnerActor) end

---@param StopReason UTSkillStopReason
---@param SkillUID number
---@param HasThrownGrenade boolean
function UCustomCndComponent:OnOwnerPlayerSkillFinishedDelegate(StopReason, SkillUID, HasThrownGrenade) end

function UCustomCndComponent:RegisterCndWrappers() end

---@param Path string
---@param Id number
function UCustomCndComponent:AddCndWrapper(Path, Id) end

---@param Id number
function UCustomCndComponent:RemoveCndWrapper(Id) end

---@param Type ECustomCndEventType
function UCustomCndComponent:OnReceiveEvent(Type) end

function UCustomCndComponent:HandleStartFireCpp() end

function UCustomCndComponent:HandleStopFireCpp() end

---@param ShootWeapon ASTExtraShootWeapon
---@param bAdd boolean
function UCustomCndComponent:OnDyunamicAddOrRemoveToWeapon(ShootWeapon, bAdd) end
