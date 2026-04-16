---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarFuncBranch_ModeFeature: UObject
---@field OwnerCAC UCharacterAvatarComponent
---@field ModeFeatureBehaviorList ULuaArrayHelper<UAvatarBehaviorFeature_ModeFeatureBase>
---@field AlwaysCollapseAvatarSlotList ULuaArrayHelper<EAvatarSlotType>
---@field bOverride_InitFuncBranch boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_ReleaseFuncBranch boolean
---@field bOverride_RegisterAvatarModeFeature boolean
---@field bOverride_UnRegisterAvatarModeFeature boolean
local UAvatarFuncBranch_ModeFeature = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_ModeFeature:InitFuncBranch(InOwnerCAC) end

---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_ModeFeature:ReleaseFuncBranch(InOwnerCAC) end

---@param InModeBehaviorFeature UAvatarBehaviorFeature_ModeFeatureBase
function UAvatarFuncBranch_ModeFeature:RegisterAvatarModeFeature(InModeBehaviorFeature) end

---@param InModeBehaviorFeature UAvatarBehaviorFeature_ModeFeatureBase
function UAvatarFuncBranch_ModeFeature:UnRegisterAvatarModeFeature(InModeBehaviorFeature) end

---@param InTargetPickupHandle UBackpackAvatarHandle
---@return boolean
function UAvatarFuncBranch_ModeFeature:IsPickupAvatarBlockedByModeFeature(InTargetPickupHandle) end

---HOT_UPDATE_PROTECT *****************************************
---@param InTargetAvatarHandle UBackpackAvatarHandle
---@return boolean
function UAvatarFuncBranch_ModeFeature:ShouldCollapseByModeFeature(InTargetAvatarHandle) end

---@param InTargetAvatarHandle UBackpackAvatarHandle
---@return boolean
function UAvatarFuncBranch_ModeFeature:ShouldCollapseByAlreadyEquipedHandle(InTargetAvatarHandle) end

---@param InTargetAvatarHandle UBackpackAvatarHandle
function UAvatarFuncBranch_ModeFeature:CollapaseModeFeatureAvatarHandle(InTargetAvatarHandle) end

---@param InFallbackSlot EAvatarSlotType
---@param InOldItemHandle UBattleItemHandleBase
---@return boolean
function UAvatarFuncBranch_ModeFeature:PutonFallbackItemFromCollapsedItem(InFallbackSlot, InOldItemHandle) end

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_ModeFeature:BP_InitFuncBranch(InOwnerCAC) end

---@param InOwnerCAC UCharacterAvatarComponent
function UAvatarFuncBranch_ModeFeature:BP_ReleaseFuncBranch(InOwnerCAC) end

---@param InModeBehaviorFeature UAvatarBehaviorFeature_ModeFeatureBase
function UAvatarFuncBranch_ModeFeature:BP_RegisterAvatarModeFeature(InModeBehaviorFeature) end

---@param InModeBehaviorFeature UAvatarBehaviorFeature_ModeFeatureBase
function UAvatarFuncBranch_ModeFeature:BP_UnRegisterAvatarModeFeature(InModeBehaviorFeature) end
