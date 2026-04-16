---@meta

---@class UVehicleAvatarPendantEntity: UVehicleAvatarEntity, IInterface_MultipleAvatarEntityInstance
---@field VehicleCustomLicensePlateName string
---@field VehicleCustomLicensePlateNum string
local UVehicleAvatarPendantEntity = {}

---@param InSlotID number
---@param InSubSlotID number
---@param AvatarComp UAvatarComponent
function UVehicleAvatarPendantEntity:Init(InSlotID, InSubSlotID, AvatarComp) end

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function UVehicleAvatarPendantEntity:PutOnEquipmentLogic(ItemHandle) end

function UVehicleAvatarPendantEntity:EnterLogicPipeline() end

---@param PutDefault boolean
function UVehicleAvatarPendantEntity:ClearEquipmentLogic(PutDefault) end

---@param SelfMesh USkeletalMesh
---@return EMeshType
function UVehicleAvatarPendantEntity:GetMeshType(SelfMesh) end

function UVehicleAvatarPendantEntity:UpdateVisibility() end

---@param SoftPath FSoftObjectPath
function UVehicleAvatarPendantEntity:RenderEntity(SoftPath) end

function UVehicleAvatarPendantEntity:EnterRenderPipeline() end

---@param SoftPath FSoftObjectPath
---@return boolean
function UVehicleAvatarPendantEntity:CreateAndApplyResource(SoftPath) end

function UVehicleAvatarPendantEntity:ApplyAnimation() end

function UVehicleAvatarPendantEntity:ApplyMaterial() end

function UVehicleAvatarPendantEntity:OnVehicleBroken() end

function UVehicleAvatarPendantEntity:CheckCustomLicencePlateNameAndNumRender() end

---@param NewMeshMode EVehicleMeshMode
function UVehicleAvatarPendantEntity:HandleOnEnterMeshMode(NewMeshMode) end
