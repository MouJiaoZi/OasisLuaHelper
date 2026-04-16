---@meta

---@class FAlphaMap
---@field DeltaAlphaMap ULuaMapHelper<number, number>
---@field CurAlphaMap ULuaMapHelper<number, number>
---@field TargetAlphaMap ULuaMapHelper<number, number>
FAlphaMap = {}


---@class ULobbyCharacterPhysicsAlphaMgr: UActorComponent
---@field IgnoreAlphaChangeFrameNum number
---@field MainSkelHairDelayTime number
---@field ResetMainSkelHairTarAlpha number
---@field ResetMainSkelHairFrameNum number
---@field DelayTimerHandle FTimerHandle
---@field AllClothDeltaAlpha number
---@field CurAllClothAlpha number
---@field TargetAllClothAlpha number
---@field MainSkelHairDeltaAlpha number
---@field TargetMainSkelHairAlpha number
---@field AllClothDeltaAlphaMap ULuaMapHelper<number, number>
---@field CurAllClothAlphaMap ULuaMapHelper<number, number>
---@field TargetAllClothAlphaMap ULuaMapHelper<number, number>
---@field AllClothDeltaRigidBodyAlphaMap ULuaMapHelper<number, number>
---@field CurAllClothRigidBodyAlphaMap ULuaMapHelper<number, number>
---@field TargetAllClothRigidBodyAlphaMap ULuaMapHelper<number, number>
---@field AlphaParamMap ULuaMapHelper<string, FAlphaMap>
---@field AlphaNameArray ULuaArrayHelper<string>
---@field WeaponAlphaStateMap FAlphaStateConfig
---@field WeaponTargetAlpha number
---@field WeaponCurrentAlpha number
---@field WeaponInterpolationSpeed number
---@field WeaponErrorTolerance number
---@field WeaponPendantAlphaStateMap FAlphaStateConfig
---@field WeaponPendantTargetAlpha number
---@field WeaponPendantCurrentAlpha number
---@field WeaponPendantInterpolationSpeed number
---@field WeaponPendantErrorTolerance number
---@field AvatarTargetAlpha ULuaMapHelper<number, number>
---@field AvatarCurrentAlpha ULuaMapHelper<number, number>
---@field AvatarInterpolationSpeed ULuaMapHelper<number, number>
---@field AvatarErrorTolerance ULuaMapHelper<number, number>
local ULobbyCharacterPhysicsAlphaMgr = {}

---@return boolean
function ULobbyCharacterPhysicsAlphaMgr:CheckIsInSpecialIdle() end

---@param SlotID number
---@param InAlpha number
function ULobbyCharacterPhysicsAlphaMgr:SetSingleClothAlphaBySlotID(SlotID, InAlpha) end

---@param SlotID number
---@param InAlpha number
function ULobbyCharacterPhysicsAlphaMgr:SetSingleClothRigidBodyAlphaBySlotID(SlotID, InAlpha) end

---@param InAlpha number
function ULobbyCharacterPhysicsAlphaMgr:SetAllClothAlpha(InAlpha) end

---@param InAlpha number
function ULobbyCharacterPhysicsAlphaMgr:SetAllClothAlphaInst(InAlpha) end

---@param InAlpha number
---@param FrameNum number
function ULobbyCharacterPhysicsAlphaMgr:SetAllClothAlphaGrad(InAlpha, FrameNum) end

---@param InAlpha number
function ULobbyCharacterPhysicsAlphaMgr:SetMainSkelHairAlpha(InAlpha) end

---@param InAlpha number
---@param FrameNum number
function ULobbyCharacterPhysicsAlphaMgr:SetMainSkelHairAlphaGrad(InAlpha, FrameNum) end

---@param DelayTime number
function ULobbyCharacterPhysicsAlphaMgr:DelayResetMainSkelHairAlphaGrad(DelayTime) end

function ULobbyCharacterPhysicsAlphaMgr:ResetMainSkelHairAlphaGrad() end

function ULobbyCharacterPhysicsAlphaMgr:SetMainSkelHairAlphaZero() end

---@param EmoteIndex number
function ULobbyCharacterPhysicsAlphaMgr:OnOwnerEmoteFinished(EmoteIndex) end

function ULobbyCharacterPhysicsAlphaMgr:OnLobbyReset() end

function ULobbyCharacterPhysicsAlphaMgr:OnRotateStop() end

function ULobbyCharacterPhysicsAlphaMgr:OnOwnerPlayEmote() end

function ULobbyCharacterPhysicsAlphaMgr:OnRotating() end

---@param EmoteID number
function ULobbyCharacterPhysicsAlphaMgr:OnOwnerPlayEmoteEnd(EmoteID) end

function ULobbyCharacterPhysicsAlphaMgr:OnOwnerStopEmote() end

---@return boolean
function ULobbyCharacterPhysicsAlphaMgr:UseOldLogic() end

---@param InAlpha number
function ULobbyCharacterPhysicsAlphaMgr:SetPendantAlpha(InAlpha) end

---@param InSlotType number
---@return boolean
function ULobbyCharacterPhysicsAlphaMgr:CheckSlotUseOldLogic(InSlotType) end

---@param InSlotType number
---@param InAlpha number
---@param FrameNum number
function ULobbyCharacterPhysicsAlphaMgr:SetSingleClothRigidBodyAlphaGrad(InSlotType, InAlpha, FrameNum) end

---@param InSlotType number
---@param InAlpha number
---@param FrameNum number
function ULobbyCharacterPhysicsAlphaMgr:SetSingleClothAlphaGrad(InSlotType, InAlpha, FrameNum) end

---@param InSlotType number
function ULobbyCharacterPhysicsAlphaMgr:AlphaMapCheckAndInit(InSlotType) end

---@param InSlotType number
function ULobbyCharacterPhysicsAlphaMgr:RigidBodyAlphaMapCheckAndInit(InSlotType) end

---@param CurMeshAnimInstance USkirtAnimInstanceBase
---@param SlotId number
---@param AlphaName string
---@param StateName string
---@param DefaultAlphaValue number
---@param DefaultFrameNumber number
function ULobbyCharacterPhysicsAlphaMgr:SetSingleAlphaTemplate(CurMeshAnimInstance, SlotId, AlphaName, StateName, DefaultAlphaValue, DefaultFrameNumber) end

---@param InMap FAlphaMap
---@param InSlotType number
function ULobbyCharacterPhysicsAlphaMgr:AlphaMapCheckAndInitByMap(InMap, InSlotType) end

---@param AlphaName string
---@param SlotID number
---@param InAlpha number
function ULobbyCharacterPhysicsAlphaMgr:AlphaMapSetSingleClothAlphaBySlotID(AlphaName, SlotID, InAlpha) end

---@param SlotID number
---@param InAlpha number
function ULobbyCharacterPhysicsAlphaMgr:SetAlphaMapByAlphaNameArrayAndSlotID(SlotID, InAlpha) end

---@param CurAlphaFName string
---@param InSlotType number
---@param InAlpha number
---@param FrameNum number
function ULobbyCharacterPhysicsAlphaMgr:AlphaMapSetAlphaGrad(CurAlphaFName, InSlotType, InAlpha, FrameNum) end

---@param InSlotType number
---@param InAlpha number
---@param FrameNum number
function ULobbyCharacterPhysicsAlphaMgr:AlphaMapSetAlphaGradWithNameArray(InSlotType, InAlpha, FrameNum) end

---@param InSlotType number
---@param InAlpha number
---@param FrameNum number
function ULobbyCharacterPhysicsAlphaMgr:AlphaMapSetAlphaContinueFrameWithNameArrayOnlyCurrent(InSlotType, InAlpha, FrameNum) end

---@param CurMeshAnimInstance USkirtAnimInstanceBase
---@param SlotId number
---@param StateName string
---@param DefaultAlphaValue number
---@param DefaultFrameNumber number
function ULobbyCharacterPhysicsAlphaMgr:GetConfigAndSetAlpha(CurMeshAnimInstance, SlotId, StateName, DefaultAlphaValue, DefaultFrameNumber) end

---@param StateName string
function ULobbyCharacterPhysicsAlphaMgr:SetAllSlotAlphaByStateName(StateName) end

---@param InAlpha number
---@param FrameNum number
function ULobbyCharacterPhysicsAlphaMgr:SetAllSlotAlphaByAlphaandFrame(InAlpha, FrameNum) end

function ULobbyCharacterPhysicsAlphaMgr:WeaponTickFunc() end

function ULobbyCharacterPhysicsAlphaMgr:UpdateWeaponAlpha() end

---@param InAlphaState EAlphaStateEnum
function ULobbyCharacterPhysicsAlphaMgr:WeaponSetTargetAlpha(InAlphaState) end

---@return FAlphaStateConfig
function ULobbyCharacterPhysicsAlphaMgr:GetWeaponAlphaStateConfig() end

function ULobbyCharacterPhysicsAlphaMgr:WeaponPendantTickFunc() end

function ULobbyCharacterPhysicsAlphaMgr:UpdateWeaponPendantAlpha() end

---@param InAlphaState EAlphaStateEnum
function ULobbyCharacterPhysicsAlphaMgr:WeaponPendantSetTargetAlpha(InAlphaState) end

---@return FAlphaStateConfig
function ULobbyCharacterPhysicsAlphaMgr:GetWeaponPendantAlphaStateConfig() end

function ULobbyCharacterPhysicsAlphaMgr:AvatarTickFunc() end

function ULobbyCharacterPhysicsAlphaMgr:UpdateAvatarAlpha() end

---@param InAlphaState EAlphaStateEnum
function ULobbyCharacterPhysicsAlphaMgr:AvatarSetTargetAlpha(InAlphaState) end

---@param SlotId number
---@return FAlphaStateConfig
function ULobbyCharacterPhysicsAlphaMgr:GetAvatarAlphaStateConfig(SlotId) end

function ULobbyCharacterPhysicsAlphaMgr:ResetAllAnimDynamic() end

function ULobbyCharacterPhysicsAlphaMgr:ResetPedantAnimDynamic() end

function ULobbyCharacterPhysicsAlphaMgr:ResetWeaponAnimDynamic() end

function ULobbyCharacterPhysicsAlphaMgr:ResetAvatarAnimDynamic() end

function ULobbyCharacterPhysicsAlphaMgr:ResetMainCharacterAnimInstanceDynamic() end
