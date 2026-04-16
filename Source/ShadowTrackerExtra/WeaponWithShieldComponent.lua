---@meta

---@class UWeaponWithShieldComponent: UWeaponLogicBaseComponent
---@field bIsScopedIn boolean
---@field WithShieldAnimListName string
---@field WithShieldADSAnimListName string
---@field WithShieldADSAnimListNameInSimulated string
---@field bOnlyTPPShieldAnim boolean
---@field DefaultWithShieldAnimLayer EAnimLayerType
---@field bIsShiledEquippedOverride boolean
local UWeaponWithShieldComponent = {}

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function UWeaponWithShieldComponent:HandlePostLocalEquipWeapon(IsEquip, SelfRef, Weapon) end

function UWeaponWithShieldComponent:HandleWeaponScopeIn() end

function UWeaponWithShieldComponent:BP_HandleWeaponScopeIn() end

function UWeaponWithShieldComponent:HandleWeaponScopeOut() end

function UWeaponWithShieldComponent:BP_HandleWeaponScopeOut() end

---@return boolean
function UWeaponWithShieldComponent:IsShieldEquipped() end

function UWeaponWithShieldComponent:RefreshWithShieldAnimList() end

---@param bEquip boolean
---@param Weapon ASTExtraWeapon
function UWeaponWithShieldComponent:PostRefreshWithShieldAnimListWhenWeaponEquipUpdate(bEquip, Weapon) end

function UWeaponWithShieldComponent:RemoveCachedWithShieldAnimList() end

function UWeaponWithShieldComponent:HandleOnWithShieldCharAnimLoadingFinished() end

---@param EnteredState EPawnState
function UWeaponWithShieldComponent:HandleOwnerCharacterStateEnter(EnteredState) end

---@param LeavedState EPawnState
function UWeaponWithShieldComponent:HandleOwnerCharacterStateLeave(LeavedState) end

---@param StateID number
---@param InterruptedBy number
function UWeaponWithShieldComponent:HandleOwnerCharacterStateInterrupted(StateID, InterruptedBy) end

function UWeaponWithShieldComponent:HandleSimulatedWeaponChanged() end

function UWeaponWithShieldComponent:HandleSimulatedAdditionalWeaponChanged() end

function UWeaponWithShieldComponent:HandleSimulatedWeaponChangedInner() end

---@return EAnimLayerType
function UWeaponWithShieldComponent:GetOverrideWeaponAnimLayer() end
