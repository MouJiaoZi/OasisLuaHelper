---@meta

---@class FCharacterThrowDataNewFPP
---@field StandAnim FThrowableAnimNewFPP
---@field CrouchAnim FThrowableAnimNewFPP
---@field ProneAnim FThrowableAnimNewFPP
FCharacterThrowDataNewFPP = {}


---@class UCharacterThrowComponent: UThrowComponent
---@field HighThrowTPP FCharacterThrowData
---@field HighThrowFPP FCharacterThrowData
---@field LowThrowTPP FCharacterThrowData
---@field LowThrowFPP FCharacterThrowData
---@field ThrowNewFPP FCharacterThrowDataNewFPP
---@field ProjectileSpeedFactor number
---@field PeekAngle number
---@field PeekOffset number
---@field bCanLeanOutOnVehicle boolean
---@field bCanThrowWithoutLeanOut boolean
---@field ReplaceAnimDataList_HighThrow ULuaArrayHelper<FThrowReplaceCharAnimData>
---@field ReplaceAnimDataList_LowThrow ULuaArrayHelper<FThrowReplaceCharAnimData>
---@field ReplaceJumpAnimList_HighThrow ULuaArrayHelper<FThrowReplaceJumpAnimData>
---@field ReplaceJumpAnimList_LowThrow ULuaArrayHelper<FThrowReplaceJumpAnimData>
---@field ReplaceAnimAdditive_HighThrow FThrowReplaceAnimAdditive
---@field ReplaceAnimAdditive_LowThrow FThrowReplaceAnimAdditive
---@field ReplaceAnimDataList_HighThrow_NewFPP ULuaArrayHelper<FThrowReplaceCharAnimDataNewFPP>
---@field ReplaceAnimDataList_LowThrow_NewFPP ULuaArrayHelper<FThrowReplaceCharAnimDataNewFPP>
---@field ReplaceAnimationDelay number
---@field bRevertAnimImmediately boolean
---@field HideWeaponDelay number
---@field PrepareSoundDelay number
---@field PrepareSoundDelay_NewFPP number
---@field bInfinite boolean
---@field AvatarData FProjectileAvatarData
local UCharacterThrowComponent = {}

function UCharacterThrowComponent:OnRep_IsActive() end

---@param NewMode EThrowGrenadeMode
---@param PrevMode EThrowGrenadeMode
function UCharacterThrowComponent:HandleCharacterThrowModeChanged(NewMode, PrevMode) end

---@param Mode EPlayerCameraMode
function UCharacterThrowComponent:HandlePlayerSwitchCameraModeEvent(Mode) end

---@param NewState EPawnState
function UCharacterThrowComponent:HandleCharacterPawnStateEntered(NewState) end

---@param PawnState EPawnState
function UCharacterThrowComponent:HandleCharacterPawnStateLeft(PawnState) end

---@param State EPawnState
---@param InterruptedBy EPawnState
function UCharacterThrowComponent:HandleCharacterPawnStateInterrupted(State, InterruptedBy) end

---@param ReqID number
---@param ErrorCode number
function UCharacterThrowComponent:HandleReceiveItemDeleteResult(ReqID, ErrorCode) end

function UCharacterThrowComponent:OnRepIsActiveImpl() end
