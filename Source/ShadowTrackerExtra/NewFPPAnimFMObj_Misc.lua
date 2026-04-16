---@meta

---@class UNewFPPAnimFMObj_IK: USTExtraAnimFMObj_IK
---@field OldAnim_EnableIK boolean
---@field OldAnim_LeftHandBlendWeight number
---@field OldAnim_RightHandBlendWeight number
---@field bCopyOldIKFMInfo boolean
---@field bCheckPlayingTPPMontageSlotAfterIK boolean
---@field TPPAfterIKMontageSlotName ULuaSetHelper<string>
---@field bPlayingTPPMontageAfterIk boolean
---@field ItemLToIKHandL_RootBoneName string
---@field ItemLToIKHandL_CurveName string
---@field ItemLToIKHandL_ForeGripIndex ULuaArrayHelper<number>
---@field ItemLToIKHandL_YDegree number
---@field ItemLToIKHandL_XDegree number
---@field ItemLToIKHandL_ZDegree number
local UNewFPPAnimFMObj_IK = {}

---@param Context FBPAnimComponentSpacePoseContext
---@param AdditionalPoseBPContext ULuaArrayHelper<FBPAnimComponentSpacePoseContext>
function UNewFPPAnimFMObj_IK:AdaptItemLToIKHandL(Context, AdditionalPoseBPContext) end

---@param NewState EFreshWeaponStateType
function UNewFPPAnimFMObj_IK:HandlePlayerWeaponStateChanged(NewState) end

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function UNewFPPAnimFMObj_IK:HandlePostLocalEquipWeapon(IsEquip, SelfRef, Weapon) end


---@class UNewFPPAnimFMObj_Foregrip: USTExtraAnimFMObj_Foregrip
---@field f_GripIKSocketFollowAnim_Weight number
---@field f_GripIKSocketFollowAnim_Weight_Reverse number
---@field bUseForegripAnimPose boolean
---@field LowerArmTwoBoneIKOffset FVector
---@field WeaponGripSocketLocationOffset FVector
---@field WeaponGripSocketRotationOffset FRotator
---@field NewFPPHiddenMask EActorHiddenMask
---@field WeaponGripSnapSocketName string
---@field WeaponGripSnapSocketName_TPPMesh string
---@field bEnableGripSnapEvenIfTransformIdentity boolean
---@field bDisableGripSnapWhenNoWeaponMesh boolean
---@field bEnableOverrideForegripParamFromMesh boolean
---@field WeaponGripAnimParamOverrideName string
---@field GripDefaultIKPointOffset ULuaMapHelper<number, FTransform>
local UNewFPPAnimFMObj_Foregrip = {}


---@class UNewFPPAnimFMObj_Shoveling: USTExtraAnimFMObj_Shoveling
local UNewFPPAnimFMObj_Shoveling = {}
