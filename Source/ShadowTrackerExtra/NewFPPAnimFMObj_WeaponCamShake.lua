---@meta

---@class FCamShakeItemData
FCamShakeItemData = {}


---@class FCamShakeRuntimeData
FCamShakeRuntimeData = {}


---@class UNewFPPAnimFMObj_WeaponCamShake: UAnimFunctionModule_ObjInstance
---@field bIsNewFPPAnimInstance boolean
---@field CamShakeTypeList ULuaArrayHelper<ECamShakeType>
---@field OutCamShakePosition FVector
---@field OutCamShakeRotation FVector
---@field CurCamShakeRuntimeData FCamShakeRuntimeData
---@field bIsWeaponParamDirty boolean
---@field bIsCamShakeFixDirty boolean
---@field bIsWeaponFiring boolean
---@field bIsPlayerMoving boolean
---@field bDisableCamShakeInAnim boolean
---@field CurShotNum number
---@field WeaponShootInterval number
---@field WeaponAnimationKick number
local UNewFPPAnimFMObj_WeaponCamShake = {}

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function UNewFPPAnimFMObj_WeaponCamShake:HandlePostLocalEquipWeapon(IsEquip, SelfRef, Weapon) end

---@param SelfRef AActor
function UNewFPPAnimFMObj_WeaponCamShake:HandleWeaponEquipmentUpdate(SelfRef) end

---@param Slot ESurviveWeaponPropSlot
function UNewFPPAnimFMObj_WeaponCamShake:HandleWeaponPropSlotChange(Slot) end

---@param NewState EFreshWeaponStateType
function UNewFPPAnimFMObj_WeaponCamShake:HandlePlayerWeaponStateChanged(NewState) end

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function UNewFPPAnimFMObj_WeaponCamShake:HandleCharacterPoseChange(LastPose, NewPose) end

---@param OldMode EPlayerCameraMode
---@param NewMode EPlayerCameraMode
function UNewFPPAnimFMObj_WeaponCamShake:HandleCameraModeChange(OldMode, NewMode) end

function UNewFPPAnimFMObj_WeaponCamShake:PlayWeaponAnimation_StartFire() end

function UNewFPPAnimFMObj_WeaponCamShake:PlayWeaponAnimation_StopFire() end

function UNewFPPAnimFMObj_WeaponCamShake:CheckHasChangeWeapon() end

function UNewFPPAnimFMObj_WeaponCamShake:OnWeaponChanged() end

---@param DataAsset USTECamShakeDataAsset
---@param RuntimeData FCamShakeRuntimeData
function UNewFPPAnimFMObj_WeaponCamShake:OnCamShakeFixChange(DataAsset, RuntimeData) end

---@param DataAsset USTECamShakeDataAsset
---@param RuntimeData FCamShakeRuntimeData
function UNewFPPAnimFMObj_WeaponCamShake:InitRuntimeData(DataAsset, RuntimeData) end

---@param DataAsset USTECamShakeDataAsset
---@param RuntimeData FCamShakeRuntimeData
---@param UpdateTime number
function UNewFPPAnimFMObj_WeaponCamShake:UpdateItemData(DataAsset, RuntimeData, UpdateTime) end

---@param DataAsset USTECamShakeDataAsset
---@param RuntimeData FCamShakeRuntimeData
---@param DeltaSeconds number
function UNewFPPAnimFMObj_WeaponCamShake:UpdateCamShakeFix(DataAsset, RuntimeData, DeltaSeconds) end

---@param DataAsset USTECamShakeDataAsset
---@param RuntimeData FCamShakeRuntimeData
function UNewFPPAnimFMObj_WeaponCamShake:UpdateOutput(DataAsset, RuntimeData) end

---@param DataAsset USTECamShakeDataAsset
---@param RuntimeData FCamShakeRuntimeData
---@param Type ECamShakeType
---@param StartTime number
function UNewFPPAnimFMObj_WeaponCamShake:ActiveShakeByType(DataAsset, RuntimeData, Type, StartTime) end

---@param RuntimeData FCamShakeRuntimeData
---@param Type ECamShakeType
---@param StopTime number
function UNewFPPAnimFMObj_WeaponCamShake:StopShakesByType(RuntimeData, Type, StopTime) end

---@param RuntimeData FCamShakeRuntimeData
function UNewFPPAnimFMObj_WeaponCamShake:DispatchNonValidShakes(RuntimeData) end

---@param RuntimeData FCamShakeRuntimeData
function UNewFPPAnimFMObj_WeaponCamShake:ClearAllShakes(RuntimeData) end

---@param ItemList ULuaArrayHelper<FCamShakeItem>
---@return number
function UNewFPPAnimFMObj_WeaponCamShake:GetRandomItem(ItemList) end

---@param Min FVector
---@param Max FVector
---@return FVector
function UNewFPPAnimFMObj_WeaponCamShake:GetRandomVector(Min, Max) end

---@param Item FCamShakeItem
---@return number
function UNewFPPAnimFMObj_WeaponCamShake:GetMaxTime(Item) end
