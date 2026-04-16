---@meta

---@class FSTAnimDataConfig
---@field KeyIndex number
---@field KeyName string
---@field DisplayName string
---@field PoseAnim_Stand FChararacterPoseAnimData
---@field PoseAnim_Crouch FChararacterPoseAnimData
---@field PoseAnim_Prone FChararacterPoseAnimData
FSTAnimDataConfig = {}


---@class USTExtraAnimDataConfig: UExtraAnimDataConfigBase
---@field AnimDataList_TPP ULuaArrayHelper<FSTAnimDataConfig>
---@field AnimDataList_FPP ULuaArrayHelper<FSTAnimDataConfig>
---@field AnimDataList_NewFPP ULuaArrayHelper<FSTAnimDataConfig>
local USTExtraAnimDataConfig = {}


---@class USTExtraAnimDataConfigWithSubAnim: USTExtraAnimDataConfig
---@field bHasInitSubAnim boolean
---@field EnableReplaceSubAnim_TPP boolean
---@field TPPSubAnimDataList ULuaArrayHelper<FAnimMapData>
---@field EnableReplaceSubAnim_FPP boolean
---@field FPPSubAnimDataList ULuaArrayHelper<FAnimMapData>
---@field EnableReplaceSubAnim_NewFPP boolean
---@field NewFPPSubAnimDataList ULuaArrayHelper<FAnimMapData>
local USTExtraAnimDataConfigWithSubAnim = {}

---@param AnimMap USubAnimInstanceMap
---@param UID_Runtime number
function USTExtraAnimDataConfigWithSubAnim:OnWeaponConfigReplaceStartEvent(AnimMap, UID_Runtime) end

---@param AnimMap USubAnimInstanceMap
---@param UID_Runtime number
function USTExtraAnimDataConfigWithSubAnim:OnWeaponConfigReplaceEndEvent(AnimMap, UID_Runtime) end

function USTExtraAnimDataConfigWithSubAnim:OnCharacterAnimInsMapChangeEvent() end

---@param AnimMap USubAnimInstanceMap
---@param RegistToAnimList UUAECharAnimListCompBase
---@return boolean
function USTExtraAnimDataConfigWithSubAnim:CanReplaceSubAnim(AnimMap, RegistToAnimList) end

---@param AnimMap USubAnimInstanceMap
---@param RegistToAnimList UUAECharAnimListCompBase
---@return boolean
function USTExtraAnimDataConfigWithSubAnim:CanRemoveSubAnim(AnimMap, RegistToAnimList) end

---@param AnimMap USubAnimInstanceMap
---@param RegistToAnimList UUAECharAnimListCompBase
---@return boolean
function USTExtraAnimDataConfigWithSubAnim:ReplaceSubAnim(AnimMap, RegistToAnimList) end

---@param AnimMap USubAnimInstanceMap
---@param RegistToAnimList UUAECharAnimListCompBase
---@return boolean
function USTExtraAnimDataConfigWithSubAnim:RemoveSubAnim(AnimMap, RegistToAnimList) end

---@param OwnerCharacter ASTExtraBaseCharacter
function USTExtraAnimDataConfigWithSubAnim:OnAnimInstanceChange(OwnerCharacter) end
