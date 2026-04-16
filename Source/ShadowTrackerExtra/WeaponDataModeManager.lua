---@meta

---武器数据替换管理器
---@class UShootWeaponDataModeManager: UObject
---@field SwitchShootModeTypeCD number
---@field DefaultWeaponLogicCompTemplateConfigList ULuaArrayHelper<UActorComponent>
---@field ConsiderWeaponAvatarSlotList ULuaArrayHelper<EWeaponAttachmentSocketType>
---@field DataModeSolutionMap ULuaMapHelper<EMultiFunctionalShootModeType, FShootWeaponDataModeSolution>
---@field CurMultiFunctionalShootModeType EMultiFunctionalShootModeType
---@field CurMultiFunctionalShootModeTypeList ULuaArrayHelper<EMultiFunctionalShootModeType>
---@field LastSwitchShootModeTypeTime number
---@field TemporaryCacheMultiFunctionalShootModeType EMultiFunctionalShootModeType
---@field WeaponAvatarSlotToItemHandleMap ULuaMapHelper<EWeaponAttachmentSocketType, UBattleItemHandleBase>
---@field DynamicUIBPName string
---@field CurShowDynamicUIBPName string
---@field SavedAmmoCountMap ULuaMapHelper<EMultiFunctionalShootModeType, number>
local UShootWeaponDataModeManager = {}

function UShootWeaponDataModeManager:ToggleWeaponMultiFunctionalShootModeType() end

---@return EMultiFunctionalShootModeType
function UShootWeaponDataModeManager:GetNextMultiFunctionalShootModeType() end

---@param ItemHandle UBattleItemHandleBase
---@param bPutOn boolean
function UShootWeaponDataModeManager:HandleWeaponPutOnOffAttachment(ItemHandle, bPutOn) end

---@param AttachmentHandle UBackpackWeaponAttachHandle
---@param ModeType EMultiFunctionalShootModeType
---@param DataMode FShootWeaponDataModeConfig
---@param bAdd boolean
function UShootWeaponDataModeManager:AddOrRemoveWeaponDataMode(AttachmentHandle, ModeType, DataMode, bAdd) end

---@param ModeType EMultiFunctionalShootModeType
---@param bDoRep boolean
---@return boolean
function UShootWeaponDataModeManager:SwitchWeaponMultiFunctionalShootModeTypeOnServer(ModeType, bDoRep) end

---@param RepData FSwitchShootWeaponDataModeRepData
---@return boolean
function UShootWeaponDataModeManager:SwitchWeaponMultiFunctionalShootModeTypeOnClientByRepData(RepData) end

---@param LogicComp UActorComponent
function UShootWeaponDataModeManager:AddComponentToDefaultShootModeTypeData(LogicComp) end

---@return boolean
function UShootWeaponDataModeManager:IsTemporarySwitchingOnServer() end

---@param InItemHandleList ULuaArrayHelper<UBattleItemHandleBase>
function UShootWeaponDataModeManager:OnPostWeaponAttachHandleListChange(InItemHandleList) end

---@param AttachmentHandle UBackpackWeaponAttachHandle
---@param ShootWeapon ASTExtraShootWeapon
---@param bIsEquip boolean
function UShootWeaponDataModeManager:HandleAnimReplaceBP(AttachmentHandle, ShootWeapon, bIsEquip) end

---@param ShootWeapon ASTExtraShootWeapon
---@param OldModeType EMultiFunctionalShootModeType
---@param NewModeType EMultiFunctionalShootModeType
function UShootWeaponDataModeManager:HandleMultModeAnimReplaceBP(ShootWeapon, OldModeType, NewModeType) end

function UShootWeaponDataModeManager:RefreshDynamicUIVisibility() end

---@param UIBPName string
---@param bShow boolean
function UShootWeaponDataModeManager:HandlShowHideUIBP(UIBPName, bShow) end

function UShootWeaponDataModeManager:RefreshUIByMultiFuncShootModeType() end

---@param OutSollution FShootWeaponDataModeSolution
---@return boolean
function UShootWeaponDataModeManager:GetCurDataModeSolution(OutSollution) end

---@param OutDataMap ULuaMapHelper<number, number>
function UShootWeaponDataModeManager:GetAmmoDataExcludeNormalModeType(OutDataMap) end

function UShootWeaponDataModeManager:SaveAllModeTypeAmmoCountOnServer() end

function UShootWeaponDataModeManager:RestoreAllModeTypeAmmoCountOnServer() end

function UShootWeaponDataModeManager:ReturnAllNoneCurrentModeTypeAmmoToBackpack() end

function UShootWeaponDataModeManager:InitDefaultShootDataMode() end

---@param ModeType EMultiFunctionalShootModeType
---@return boolean
function UShootWeaponDataModeManager:LocalSwitchWeaponMultiFunctionalShootModeType(ModeType) end

---@param OldState EFreshWeaponStateType
---@param NewState EFreshWeaponStateType
function UShootWeaponDataModeManager:HandleWeaponChangeState(OldState, NewState) end

---@param OldState EFreshWeaponStateType
---@param NewState EFreshWeaponStateType
---@param bConsiderOldState boolean
function UShootWeaponDataModeManager:RefreshDynamicUIVisibilityByWeaponState(OldState, NewState, bConsiderOldState) end

---@param Weapon ASTExtraWeapon
---@param LogicComp UWeaponLogicBaseComponent
function UShootWeaponDataModeManager:HandleWeaponDynamicCreateLogicComp(Weapon, LogicComp) end

---@param AttachmentHandle UBackpackWeaponAttachHandle
---@param DataModeSolution FShootWeaponDataModeSolution
---@param OwnerShootWeapon ASTExtraShootWeapon
---@param TargetComp UActorComponent
function UShootWeaponDataModeManager:ProccessAddCompToDataModeSolution(AttachmentHandle, DataModeSolution, OwnerShootWeapon, TargetComp) end
