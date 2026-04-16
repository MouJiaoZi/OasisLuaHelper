---@meta

---@class UBackpackVehicleAbilityHandle: UBattleItemHandleBase, IBackpackAvatarInterface
---@field BindWeaponSkinID FItemDefineID
---@field FocusTarget ASTExtraVehicleBase
---@field WeaponSkinTable string
---@field ModifyPropertyList ULuaArrayHelper<string>
---@field bUseForClient boolean
---@field NewbieGuideItems ULuaArrayHelper<UNewbieGuideItemObject>
local UBackpackVehicleAbilityHandle = {}

---@param InFocusTarget UObject
---@return boolean
function UBackpackVehicleAbilityHandle:IsFocusOnTargetObject(InFocusTarget) end

---@return boolean
function UBackpackVehicleAbilityHandle:ModifyFocusTarget() end

function UBackpackVehicleAbilityHandle:ServerActiveFocusTarget() end

function UBackpackVehicleAbilityHandle:ServerDeactiveFocusTarget() end

---@param InVehicle ASTExtraVehicleBase
function UBackpackVehicleAbilityHandle:ClientModifyFocusTarget(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UBackpackVehicleAbilityHandle:ClientRestoreFocusTarget(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UBackpackVehicleAbilityHandle:RegisterNewbieGuide(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function UBackpackVehicleAbilityHandle:UnRegisterNewbieGuide(InVehicle) end

---@param InNewbieGuideComponent UNewbieGuideComponent
function UBackpackVehicleAbilityHandle:OnNewbieGuideSpawn(InNewbieGuideComponent) end
