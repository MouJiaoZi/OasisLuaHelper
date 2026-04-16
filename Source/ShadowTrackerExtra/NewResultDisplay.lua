---@meta

---@class UNewResultAvatarData: UAvatarDisplayDataBase
---@field UID string
---@field IsSelf boolean
local UNewResultAvatarData = {}

---@param avatar UNewResultAvatarData
---@param _UID string
---@param _AdditionData UAdditionDisplayDataBase
---@param _IsSelf boolean
function UNewResultAvatarData:SetResultAvatarData(avatar, _UID, _AdditionData, _IsSelf) end


---@class ANewResultDisplay: AAvatarDisplayDirectorBase
---@field PetTransforms ULuaMapHelper<number, FPetTransform>
local ANewResultDisplay = {}

---@param AvatarDataList ULuaArrayHelper<UNewResultAvatarData>
---@param PoseList ULuaArrayHelper<UAvatarDisplayPoseComponent>
---@param WeaponComp UWeaponDisplayDirectorComponent
function ANewResultDisplay:InitAvatarPose(AvatarDataList, PoseList, WeaponComp) end
