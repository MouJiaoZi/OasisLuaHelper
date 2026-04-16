---@meta

---@class FDynamicWeaponAvatarVisibleData
---@field SlotType number
---@field HiddenMaskValue number
FDynamicWeaponAvatarVisibleData = {}


---@class UAvatarVisibilityCollection: UBlueprintFunctionLibrary
---@field bUseAvatarVisibilityFeature boolean
---@field NormalBattleSlotVisibilityConfigItemList ULuaArrayHelper<FSlotVisiblityConfigItem>
---@field RoomModeSlotVisibilityConfigItemList ULuaArrayHelper<FSlotVisiblityConfigItem>
---@field CurGameModeSlotVisibilityConfig FSlotVisiblityConfigItem
---@field DelayedRefreshCharList ULuaArrayHelper<ASTExtraBaseCharacter>
local UAvatarVisibilityCollection = {}

---@param WorldContextObj UObject
---@return boolean
function UAvatarVisibilityCollection:IsFeatureEnable(WorldContextObj) end

---@param InCheckChar ASTExtraBaseCharacter
---@return boolean
function UAvatarVisibilityCollection:IsSelfViewForChar(InCheckChar) end

---@param InCheckChar ASTExtraBaseCharacter
---@return boolean
function UAvatarVisibilityCollection:MarkDelayedRefreshForChar(InCheckChar) end

---@param WorldContextObj UObject
---@return boolean
function UAvatarVisibilityCollection:IsOBViewAlwaysVisibile(WorldContextObj) end

---@param WorldContextObj UObject
---@return boolean
function UAvatarVisibilityCollection:IsGMViewAlwaysVisibile(WorldContextObj) end

---@param WorldContextObj UObject
function UAvatarVisibilityCollection:ResetCurBattleConfig(WorldContextObj) end

---@param InCheckChar ASTExtraBaseCharacter
---@param InSlotType number
---@param InIsSkin boolean
---@return boolean
function UAvatarVisibilityCollection:IsAvatarSlotVisibleForChar(InCheckChar, InSlotType, InIsSkin) end

---@param WorldContextObj UObject
---@param InSlotType number
---@param InIsSelf boolean
---@param InIsTeammate boolean
---@param InIsInVehicle boolean
---@param InIsSkin boolean
---@return boolean
function UAvatarVisibilityCollection:IsAvatarSlotVisible(WorldContextObj, InSlotType, InIsSelf, InIsTeammate, InIsInVehicle, InIsSkin) end

---@param InCheckChar ASTExtraBaseCharacter
---@param InSlotType number
---@param InIsSkin boolean
---@return boolean
function UAvatarVisibilityCollection:IsWeaponSlotVisibleForChar(InCheckChar, InSlotType, InIsSkin) end

---@param WorldContextObj UObject
---@param InSlotType number
---@param InIsSelf boolean
---@param InIsTeammate boolean
---@param InIsInVehicle boolean
---@param InIsSkin boolean
---@return boolean
function UAvatarVisibilityCollection:IsWeaponSlotVisible(WorldContextObj, InSlotType, InIsSelf, InIsTeammate, InIsInVehicle, InIsSkin) end

---@param InCheckChar ASTExtraBaseCharacter
---@param InSlotType number
---@param InIsSkin boolean
---@return boolean
function UAvatarVisibilityCollection:IsWeaponAttachmentSlotVisibleForChar(InCheckChar, InSlotType, InIsSkin) end

---@param WorldContextObj UObject
---@param InSlotType number
---@param InIsSelf boolean
---@param InIsTeammate boolean
---@param InIsInVehicle boolean
---@param InIsSkin boolean
---@return boolean
function UAvatarVisibilityCollection:IsWeaponAttachmentSlotVisible(WorldContextObj, InSlotType, InIsSelf, InIsTeammate, InIsInVehicle, InIsSkin) end

---@param InOverrideGameModeID number
---@param InOverrideIsRoomMode boolean
function UAvatarVisibilityCollection:OverrideAvatarVisibilityConfig(InOverrideGameModeID, InOverrideIsRoomMode) end

function UAvatarVisibilityCollection:ClearOverrideAvatarVisibilityConfig() end

---@param WorldContextObj UObject
---@param InSlotType number
---@param InIsVisible boolean
---@param InMask number
function UAvatarVisibilityCollection:DynamicSetWeaponSlotVisible(WorldContextObj, InSlotType, InIsVisible, InMask) end

---@param WorldContextObj UObject
function UAvatarVisibilityCollection:ClearDynamicWeaponSlotVisible(WorldContextObj) end
