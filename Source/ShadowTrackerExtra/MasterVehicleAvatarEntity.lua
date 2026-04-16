---@meta

---@class FVehiclePendantInfo
---@field SlotID number
---@field PendantID number
FVehiclePendantInfo = {}


---@class UMasterVehicleAvatarEntity: UVehicleAvatarEntity
---@field UpdateAnimHandle FTimerHandle
---@field AttachedVehiclePendantList ULuaArrayHelper<FVehiclePendantInfo>
---@field VehicleCustomName string
---@field VehicleCustomLicensePlateNum string
local UMasterVehicleAvatarEntity = {}

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function UMasterVehicleAvatarEntity:PutOnEquipmentLogic(ItemHandle) end

---@param PutDefault boolean
function UMasterVehicleAvatarEntity:ClearEquipmentLogic(PutDefault) end

function UMasterVehicleAvatarEntity:EnterRenderPipeline() end

---@param InVehicleBackpackHandle UBackpackVehicleBaseHandle
---@return boolean
function UMasterVehicleAvatarEntity:CheckPendantPutOn(InVehicleBackpackHandle) end

---@param InVehicleBackpackHandle UBackpackVehicleBaseHandle
---@return boolean
function UMasterVehicleAvatarEntity:CheckCustomName(InVehicleBackpackHandle) end

function UMasterVehicleAvatarEntity:CheckCustomNameRender() end

---@return boolean
function UMasterVehicleAvatarEntity:CheckFlowLightVehicle() end

function UMasterVehicleAvatarEntity:CheckVehicleAbilities() end

---@param InVehicleBackpackHandle UBackpackVehicleBaseHandle
function UMasterVehicleAvatarEntity:CheckVehicleRootCurve(InVehicleBackpackHandle) end

---@return boolean
function UMasterVehicleAvatarEntity:CheckVehicleSkinUI() end

function UMasterVehicleAvatarEntity:CheckPendantPutOff() end

---@param InHandle UBackpackVehicleBaseHandle
---@param InSlotName string
---@return boolean
function UMasterVehicleAvatarEntity:IsSlotInHighQualitySlotName_BlackList(InHandle, InSlotName) end

function UMasterVehicleAvatarEntity:ResetMasterMeshHighQualityMaterial() end

---@param SoftPath FSoftObjectPath
function UMasterVehicleAvatarEntity:RenderEntity(SoftPath) end

---@param SoftPath FSoftObjectPath
---@return boolean
function UMasterVehicleAvatarEntity:CreateAndApplyResource(SoftPath) end

---@param SoftPath FSoftObjectPath
---@param MeshMode EVehicleMeshMode
function UMasterVehicleAvatarEntity:RefreshRenderMesh(SoftPath, MeshMode) end

function UMasterVehicleAvatarEntity:ApplyMaterial() end

function UMasterVehicleAvatarEntity:OnVehicleBroken() end

function UMasterVehicleAvatarEntity:UpdatePassengerAnim() end

function UMasterVehicleAvatarEntity:OverrideVehiclePhysX() end

function UMasterVehicleAvatarEntity:WakeUpVehicle() end
