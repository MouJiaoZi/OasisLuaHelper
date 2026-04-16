---@meta

---@class USTExtraSCA_WeaponAnim: USightActionLerpNode
---@field bIsFirstViewScope boolean
---@field bIsStartFadeOut boolean
---@field IsOldAnimInsClass boolean
---@field StopAnimInFadeOut boolean
---@field BlendOutTime number
---@field AngleBlendOutTime number
---@field FadeOutBlendOutTime number
---@field FadeOutAngleBlendOutTime number
---@field ScopeAlphaToCutAlpha FVector2D
---@field GunADSCutBoneName string
local USTExtraSCA_WeaponAnim = {}

---@param NodeOwner USTextraSightScopeMgr
function USTExtraSCA_WeaponAnim:LoadWeaponAnim(NodeOwner) end

---@param AttachmentSocketType EWeaponAttachmentSocketType
---@param IsEquipped boolean
function USTExtraSCA_WeaponAnim:OnWeaponItemHandleChange(AttachmentSocketType, IsEquipped) end

---@param InAnimSoftPath FSoftObjectPath
---@param IsAngle boolean
function USTExtraSCA_WeaponAnim:OnLoadWeaponAnim(InAnimSoftPath, IsAngle) end

---@param WeapinInstanceID number
function USTExtraSCA_WeaponAnim:OnAngleChange(WeapinInstanceID) end

---@param NodeOwner USTextraSightScopeMgr
---@param IsAngle boolean
---@param IsReset boolean
function USTExtraSCA_WeaponAnim:UpdateWeaponAnimal(NodeOwner, IsAngle, IsReset) end
