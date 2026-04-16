---@meta

---@class UVehicleAvatarEntity: UAvatarEntity
local UVehicleAvatarEntity = {}

---@param InSlotID number
---@param InSubSlotID number
---@param AvatarComp UAvatarComponent
function UVehicleAvatarEntity:Init(InSlotID, InSubSlotID, AvatarComp) end

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function UVehicleAvatarEntity:PutOnEquipmentLogic(ItemHandle) end

function UVehicleAvatarEntity:EnterLogicPipeline() end

---@param PutDefault boolean
function UVehicleAvatarEntity:ClearEquipmentLogic(PutDefault) end

function UVehicleAvatarEntity:InitAvatarBehaviorFeature() end

function UVehicleAvatarEntity:ReleaseAvatarBehaviorFeature() end

function UVehicleAvatarEntity:ApplyMeshCompCollision() end

---@param SoftPath FSoftObjectPath
function UVehicleAvatarEntity:RenderEntity(SoftPath) end

---@param SoftPath FSoftObjectPath
---@return boolean
function UVehicleAvatarEntity:CreateAndApplyResource(SoftPath) end

function UVehicleAvatarEntity:ApplyAnimation() end

---@param VehicleHandle UBackpackVehicleHandle
function UVehicleAvatarEntity:ApplyDisplayVehicleAnimation(VehicleHandle) end

function UVehicleAvatarEntity:ApplySubAnimation() end

function UVehicleAvatarEntity:ApplayParticles() end
