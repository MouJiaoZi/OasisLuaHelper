---@meta

---@class FSceneDisplayInfo
---@field CharacterAvatarRef UCharacterAvatarComponent
---@field WeaponAvatarRef UWeaponAvatarComponent
FSceneDisplayInfo = {}


---@class ASceneDisplayDirectorRep: AActor
---@field CharacterAvatarTemplate ASTExtraDisplayPawn
---@field WeaponAvatarTemplate ASTExtraShootWeapon
---@field CharacterAvatarCopySlots ULuaSetHelper<EAvatarSlotType>
---@field DisplayPawnInfo ULuaArrayHelper<FSceneDisplayInfo>
local ASceneDisplayDirectorRep = {}

---@param CharAvatar UCharacterAvatarComponent
---@param Montage UAnimMontage
function ASceneDisplayDirectorRep:PlayerCharacterMontage(CharAvatar, Montage) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function ASceneDisplayDirectorRep:OnCharacterAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function ASceneDisplayDirectorRep:OnWeaponAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

---@param PawnIndex number
function ASceneDisplayDirectorRep:BP_DisplayCharacterLoadFinish(PawnIndex) end

---@param WeaponIndex number
function ASceneDisplayDirectorRep:BP_DisplayWeaponLoadFinish(WeaponIndex) end

---@param PawnIndex number
function ASceneDisplayDirectorRep:BP_CharacterOnRepFinish(PawnIndex) end

---@param WeaponIndex number
function ASceneDisplayDirectorRep:BP_WeaponOnRepFinish(WeaponIndex) end

function ASceneDisplayDirectorRep:OnRep_DisplayPawnInfo() end
