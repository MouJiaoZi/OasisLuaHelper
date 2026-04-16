---@meta

---@class UBackpackCharacterAvatarAbilityHandle: UBattleItemHandleBase, IBackpackAvatarInterface
---@field FocusTarget ASTExtraPlayerCharacter
---@field FocusTargetObject UObject
---@field bUseForClient boolean
---@field NewbieGuideItems ULuaArrayHelper<UNewbieGuideItemObject>
---@field TlogID number
---@field ParentHandleID number
---@field AvatarAbilityAttrModifyConfigs ULuaArrayHelper<FItemHandleAttrModifyConfigNoCondition>
---@field bIsResearchInfo boolean
---@field bClientCanActiveWhenNotDownloadPak boolean
local UBackpackCharacterAvatarAbilityHandle = {}

function UBackpackCharacterAvatarAbilityHandle:ServerModifyFocusTarget() end

function UBackpackCharacterAvatarAbilityHandle:ServerRestoreFocusTarget() end

---@param InFocusTarget UObject
---@return boolean
function UBackpackCharacterAvatarAbilityHandle:IsFocusOnTargetObject(InFocusTarget) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarAbilityHandle:ClientModifyFocusTarget(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarAbilityHandle:ClientRestoreFocusTarget(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarAbilityHandle:CollectResources(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarAbilityHandle:RegisterNewbieGuide(InCharacter) end

---@param InCharacter ASTExtraPlayerCharacter
function UBackpackCharacterAvatarAbilityHandle:UnRegisterNewbieGuide(InCharacter) end

---@param InNewbieGuideComponent UNewbieGuideComponent
function UBackpackCharacterAvatarAbilityHandle:OnNewbieGuideSpawn(InNewbieGuideComponent) end
