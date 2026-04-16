---@meta

---@class UAvatarModule_DualWeapon: UAvatarModule
---@field meshComponentList ULuaMapHelper<number, UMeshComponent>
---@field AvatarEntityList ULuaMapHelper<number, UAvatarEntity>
---@field WeaponMeshCompForSlot ULuaMapHelper<number, UMeshComponent>
---@field FPPWeaponSkeletalMeshCompForSlot ULuaMapHelper<number, UMeshComponent>
local UAvatarModule_DualWeapon = {}

---@param MasterComp UMeshComponent
function UAvatarModule_DualWeapon:InitMasterComponent(MasterComp) end

---@param socketType EWeaponAttachmentSocketType
---@param isVisable boolean
function UAvatarModule_DualWeapon:SetWeaponEntityVisable(socketType, isVisable) end

---@param slotType EAvatarSlotType
---@param visible boolean
---@param isForce boolean
---@param MaskValue number
function UAvatarModule_DualWeapon:SetAvatarVisibility(slotType, visible, isForce, MaskValue) end

---@param SocketType EWeaponPendantSocketType
function UAvatarModule_DualWeapon:SetPendantSocketType(SocketType) end

---@param Slot number
---@param Mesh USkeletalMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UAvatarModule_DualWeapon:ApplySkeletalMeshByID(Slot, Mesh, handle) end

---@param NewTransform FTransform
---@param SlotID number
function UAvatarModule_DualWeapon:SetMeshRelativeTransform(NewTransform, SlotID) end

---@param slot number
---@param pSM UStaticMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UAvatarModule_DualWeapon:ApplyStaticMeshByID(slot, pSM, handle) end

function UAvatarModule_DualWeapon:ResetAttachmentParent() end

---@param bIsFPP boolean
---@param WeaponSkMesh USkeletalMesh
---@param SlotID number
function UAvatarModule_DualWeapon:InitCacheWeaponSkeletalMeshComp(bIsFPP, WeaponSkMesh, SlotID) end

---@param Slot number
---@param Mesh USkeletalMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UAvatarModule_DualWeapon:ApplySkeletalMeshWithOtherPP(Slot, Mesh, handle) end

---@param slot number
---@param pSM UStaticMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UAvatarModule_DualWeapon:ApplyStaticMeshWithOtherPP(slot, pSM, handle) end

---@param bIsFPP boolean
function UAvatarModule_DualWeapon:SwitchPersonPerspectiveWeaponSkMesh(bIsFPP) end

---@param bIsFPP boolean
---@param WeaponStMesh UStaticMesh
---@param SlotID number
function UAvatarModule_DualWeapon:InitCacheWeaponStaticComp(bIsFPP, WeaponStMesh, SlotID) end

---@param bIsFPP boolean
---@param AvatarEntity UAvatarEntity
function UAvatarModule_DualWeapon:InSwitchWeaponMeshForFPP(bIsFPP, AvatarEntity) end

---@param SlotID number
function UAvatarModule_DualWeapon:ClearFPPCache(SlotID) end

---@param SlotID number
function UAvatarModule_DualWeapon:ClearTPPCache(SlotID) end

function UAvatarModule_DualWeapon:ClearAllFPPCache() end

---@param SlotID number
function UAvatarModule_DualWeapon:CheckFPPComp(SlotID) end

---@param Mesh USkeletalMesh
---@param bIsOther boolean
---@param handle UBattleItemHandleBase
---@return boolean
function UAvatarModule_DualWeapon:ApplySkeletalMeshByIDWithCompatible(Mesh, bIsOther, handle) end

function UAvatarModule_DualWeapon:ClearCompatibleCache() end
