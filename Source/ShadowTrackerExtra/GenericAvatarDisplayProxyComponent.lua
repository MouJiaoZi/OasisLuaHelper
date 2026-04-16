---@meta

---@class EHomeAvatarDisplaySlotType
---@field EAvatarSlotType_Character number @角色
---@field EAvatarSlotType_Vehicle number @载具
---@field EAvatarSlotType_Weapon number @枪械
EHomeAvatarDisplaySlotType = {}


---@class EHomeAvatarDisplayOperation
---@field EPutOn number @穿
---@field EPutOff number @脱
EHomeAvatarDisplayOperation = {}


---@class EHomeAvatarDisplayType
---@field EAvatar number @角色
---@field EVehicle number @载具
---@field EBoat number @船
---@field EWeapon number @枪械
EHomeAvatarDisplayType = {}


---@class UGenericAvatarDisplayProxyComponent: UActorComponent
---@field MaxCacheNumber number
---@field CachedAvatarComponent UActorComponent
---@field CachedMasterPoseComponent USkeletalMeshComponent
---@field CachedLoadedHandleList ULuaMapHelper<number, UBattleItemHandleBase>
local UGenericAvatarDisplayProxyComponent = {}

---@param InDisplayMesh USkeletalMeshComponent
function UGenericAvatarDisplayProxyComponent:InitProxy(InDisplayMesh) end

function UGenericAvatarDisplayProxyComponent:TestFunc() end

---@param InAvatarList ULuaArrayHelper<number>
---@param ForceClientMode boolean
---@param Gender number
---@param InHomeAvatarDisplayOperation EHomeAvatarDisplayOperation
function UGenericAvatarDisplayProxyComponent:RefreshDisplayAvatar(InAvatarList, ForceClientMode, Gender, InHomeAvatarDisplayOperation) end

function UGenericAvatarDisplayProxyComponent:ClearDisplay() end

function UGenericAvatarDisplayProxyComponent:ClearEquipmentLogic() end

---@param InGender number
---@param InAvatarItemID number
function UGenericAvatarDisplayProxyComponent:PutOnEquipByAvatarItemID(InGender, InAvatarItemID) end

---@param InSlotID number
function UGenericAvatarDisplayProxyComponent:PutOffEquipBySlotID(InSlotID) end

---@param InAvatarItemID number
function UGenericAvatarDisplayProxyComponent:PutOffEquipByAvatarItemID(InAvatarItemID) end

---@param InItemHandle UBattleItemHandleBase
function UGenericAvatarDisplayProxyComponent:AddLoadedHandle(InItemHandle) end

---@param InForceClientMode boolean
function UGenericAvatarDisplayProxyComponent:SetForceClientMode(InForceClientMode) end

---@param InCustomName string
function UGenericAvatarDisplayProxyComponent:SetCustomName(InCustomName) end

---@param ChangeEventFrom UAvatarComponent
function UGenericAvatarDisplayProxyComponent:OnAvatarMeshChanged(ChangeEventFrom) end
