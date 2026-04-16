---@meta

---@class FSTExtraAnimFM_TDM
---@field b_ShouldPlayTurnAnim boolean
---@field b_ShouldSlowMoveAnimX boolean
---@field b_ShouldSlowMoveAnimY boolean
---@field v_ScopeAimSpine03TranslationModify FVector
---@field r_ScopeAimSpine03RotationModifiy FRotator
---@field b_WalkToJumpStart boolean
---@field b_JumpStartToWalk boolean
---@field b_FallingToLand boolean
FSTExtraAnimFM_TDM = {}


---@class FSTExtraAnimFM_FPP
---@field b_OnVehicle_LeanOut_SwitchWeapon boolean
---@field t_FPPWeaponOffset FTransform
---@field v_FPPStandMeshOffset FVector
---@field f_FPPAimOffsetRotateRate number
---@field f_FPPAimOffsetRotatePitchLimit number
---@field f_FPPAimOffsetRotatePitchLimit_Config number
---@field f_FPPAimOffsetRotatePitchLimit_Default number
---@field b_IsFPPReloadUseAddSlot boolean
---@field v_FPPWeaponOffset_Location FVector
---@field r_FPPWeaponOffset_Rotation FRotator
---@field f_FPPWeaponOffset_BlendAlpha number
---@field b_ShouldRotateSpine boolean
---@field b_PickupFPPIKFalse boolean
---@field b_GripIKTrue_PoseChangeIKTure_ForeGripAnimValid boolean
---@field b_Vel500_OR_Vel350Crouch boolean
---@field b_CrouchOrProneOrWeaponChargeGUN boolean
---@field b_WeaponType_NEQ_None_AND_Knife boolean
---@field b_WeaponType_NEQ_None_AND_Knife_AND_ChargeGun boolean
---@field f_CharacterYawRotateRate_90 number
---@field b_MoveVelocityX_Bigger_290 boolean
---@field f_LeftHandShouldNotIKAlpha number
---@field f_BlendStandBaseAlpha number
---@field b_WeaponTypeNew_NEQ_Bow boolean
FSTExtraAnimFM_FPP = {}
