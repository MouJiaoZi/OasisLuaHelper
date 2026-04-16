---@meta

---@class EGalaxyFaceMaskType
---@field EGalaxyFaceMask_Rough number @大光膜
---@field EGalaxyFaceMask_Detail number @细分光膜
---@field EGalaxyFaceMask_Max number
EGalaxyFaceMaskType = {}


---@class ASTExtraLobbyGalaxyCharacter: ASTExtraLobbyCharacter
---@field MaleMaskSkMesh_Detail USkeletalMesh
---@field FemaleMakSkMesh_Detail USkeletalMesh
---@field MaleMaskSkMesh_Rough USkeletalMesh
---@field FemaleMakSkMesh_Rough USkeletalMesh
---@field MaskMeshMat_Detail UMaterialInterface
---@field MaskMeshMat_Rough UMaterialInterface
---@field HeadAnimBPClass UAnimInstance
---@field MaskAnimBPClass UAnimInstance
---@field CurMaskType EGalaxyFaceMaskType
local ASTExtraLobbyGalaxyCharacter = {}

function ASTExtraLobbyGalaxyCharacter:InitMaskMesh() end

---@param MaskType EGalaxyFaceMaskType
function ASTExtraLobbyGalaxyCharacter:ChangeMaskByType(MaskType) end

---@param gender ELobbyCharacterAnimType
function ASTExtraLobbyGalaxyCharacter:SetLobbyAnimGender(gender) end

---@param Value number
---@param ParameterName string
---@param idx number
function ASTExtraLobbyGalaxyCharacter:SetFaceMaskMaterialScalarParameter(Value, ParameterName, idx) end

---@param Value FLinearColor
---@param ParameterName string
---@param idx number
function ASTExtraLobbyGalaxyCharacter:SetFaceMaskMaterialVectorParameter(Value, ParameterName, idx) end

function ASTExtraLobbyGalaxyCharacter:SetHairTwoPass() end

function ASTExtraLobbyGalaxyCharacter:InitAvatarComp() end

---@param SkinColor FLinearColor
---@param SkinRoughness number
function ASTExtraLobbyGalaxyCharacter:ChangeSkinColor(SkinColor, SkinRoughness) end

---@param gender number
function ASTExtraLobbyGalaxyCharacter:AnimInst_SetGender(gender) end

---@param IsPinchEyes boolean
function ASTExtraLobbyGalaxyCharacter:AnimInst_UpdateWinkAnim(IsPinchEyes) end

---@param IsPinchMouth boolean
function ASTExtraLobbyGalaxyCharacter:AnimInst_UpdateMouthAnim(IsPinchMouth) end

function ASTExtraLobbyGalaxyCharacter:AnimInst_EmoteStart() end

function ASTExtraLobbyGalaxyCharacter:AnimInst_EmoteEnd() end

---@param SlotType number
---@param IsEquipped boolean
function ASTExtraLobbyGalaxyCharacter:OnAvatarEquiped_GalaxyPlayer(SlotType, IsEquipped) end
