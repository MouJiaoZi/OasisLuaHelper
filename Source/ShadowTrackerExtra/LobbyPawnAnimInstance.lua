---@meta

---@class ULobbyPawnAnimInstance: ULobbyBaseAnimInstance
---@field C_LobbyGenderType ELobbyCharacterAnimType
---@field C_LobbyCharPosIdx ELobbyCharacterPosIndex
---@field CurrentPoseTag string
---@field weaponGripType number
---@field IsSpecialAnimWeapon boolean
---@field C_WeaponAnimAdapt_IsUseAdapt boolean
---@field C_WeaponAnimAdapt_IsBS boolean
---@field C_WeaponAnimAdapt_AdaptValue number
---@field C_UseDefaultRigidBodyAnim boolean
---@field C_BodyType number
---@field C_IsSpecialBodyType boolean
---@field C_bLobbyIgnoreRetarget boolean
---@field IgnoreBoneRetargetCurveFeature_Lobby FAnimCurveValueFeature
---@field AsyncLoadFacialEmoteIndex number @Facial Emote Prop Begin
---@field FacialEmoteDataTablePath string
---@field bOpenAvatarGripWeaponIdleState boolean
local ULobbyPawnAnimInstance = {}

---@param PoseTag string
function ULobbyPawnAnimInstance:UpdateAnimParam(PoseTag) end

---@return boolean
function ULobbyPawnAnimInstance:ReceiveUpdateAnimParam() end

---@param InSeq UAnimSequence
function ULobbyPawnAnimInstance:UpdateIdleAnimForRandom(InSeq) end

---@param PoseTag string
---@param bSwitchIsOpen boolean
function ULobbyPawnAnimInstance:GetDefaultAnimAsset(PoseTag, bSwitchIsOpen) end

---Facial Emote Func Begin
---@param FacialEmoteIndex number
function ULobbyPawnAnimInstance:SetFacialEmoteByIndex(FacialEmoteIndex) end

function ULobbyPawnAnimInstance:ClearFacialEmote() end

---@param CurFacialEmoteId number
function ULobbyPawnAnimInstance:AsyncLoadFacialEmoteSeq(CurFacialEmoteId) end

---@param AsyncLoadIndex number
---@param CurFacialEmoteId number
function ULobbyPawnAnimInstance:AsyncLoadFacialEmoteSeqCB(AsyncLoadIndex, CurFacialEmoteId) end

function ULobbyPawnAnimInstance:AsycLoadDataTable() end

function ULobbyPawnAnimInstance:AsycLoadDataTableCB() end

---@param bodyType number
function ULobbyPawnAnimInstance:SetBodyType(bodyType) end

---@param SlotNodeName string
---@return boolean
function ULobbyPawnAnimInstance:IsPlayingSlotAnim(SlotNodeName) end

---@return boolean
function ULobbyPawnAnimInstance:CurPlayingMontageIsFarFromRoot() end

---@param animpath string
function ULobbyPawnAnimInstance:SetCIdleAnim(animpath) end

---@param IdleAnim UAnimSequence
function ULobbyPawnAnimInstance:SetCIdleAnimDirectely(IdleAnim) end

---@param animpath string
function ULobbyPawnAnimInstance:SetAvatarGripWeaponIdle(animpath) end

---@param IdleAnim UAnimSequence
function ULobbyPawnAnimInstance:SetAvatarGripWeaponIdleDirectely(IdleAnim) end

function ULobbyPawnAnimInstance:CheckLobbyIgnoreRetargetCurveValue() end
