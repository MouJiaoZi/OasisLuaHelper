---@meta

---@class USTExtraAnimFMObj_Jump: UAnimFunctionModule_ObjInstance
---@field f_FallingVelocityZFactor number
---@field f_FallingSpeedInScoping_UnLockIK number
---@field b_JumpKeepJumpStartType boolean
---@field v_MoveVelocityInWorldSpace FVector
---@field MoveVelocityLength2D number
---@field b_MovingOnGround boolean
---@field b_MovingOnGroundAndMovbale boolean
---@field b_IsJumping boolean
---@field e_JumpType ECharacterJumpType
---@field b_IsSprinting boolean
---@field b_MovementUpBodyOverrideIsValid boolean
---@field b_EnableMovementUpBodyOverride boolean
---@field b_WalkAdditiveAlpha number
---@field b_WalkToUnarmedFalling boolean
---@field b_WalkToRifleJumpStationStart boolean
---@field bLastWalkToRifleJumpStationStart boolean
---@field JumpStartJumpType ECharacterJumpType
---@field b_IsFallingReload boolean
---@field f_MoveVelocity_X_Spector_InterlepSpeed number
---@field f_MoveVelocity_X_FallingZFactor number
---@field f_MoveVelocity_X_FallingZFactor_Cache number
---@field b_Move_PistolOrRifleGun boolean
---@field b_LastMovementMode_NEQ_Falling boolean
---@field b_MovementMode_NEQ_Falling boolean
---@field b_UnarmedFallingToRifleFallLandingHard boolean
---@field b_UnarmedFallingToRifleCombatFallLanding boolean
---@field f_MaxFallingSpeed number
---@field bTriggerLandingEvent boolean
local USTExtraAnimFMObj_Jump = {}

---@param bIsEquip boolean
---@param WeaponOwner AActor
---@param Weapon ASTExtraWeapon
function USTExtraAnimFMObj_Jump:OnWeaponChange(bIsEquip, WeaponOwner, Weapon) end

---@param bIsFPP boolean
function USTExtraAnimFMObj_Jump:OnSwitchPersonPerspective(bIsFPP) end

---@param state EPawnState
function USTExtraAnimFMObj_Jump:OnPawnStateEnter(state) end

function USTExtraAnimFMObj_Jump:RefreshJumpAnimAsset() end
