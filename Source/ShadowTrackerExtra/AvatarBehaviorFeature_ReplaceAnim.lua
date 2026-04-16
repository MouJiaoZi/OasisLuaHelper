---@meta

---@class UAvatarBehaviorFeature_ReplaceAnim: UAvatarBehaviorFeature
---@field AnimListComponentClass UUAEAnimListComponentBase
---@field bOverrideThrowAnim boolean
---@field HighThrowTPP FCharacterThrowData
---@field HighThrowFPP FCharacterThrowData
---@field LowThrowTPP FCharacterThrowData
---@field LowThrowFPP FCharacterThrowData
---@field ReplaceAnimDataList_HighThrow ULuaArrayHelper<FThrowReplaceCharAnimData>
---@field ReplaceAnimDataList_LowThrow ULuaArrayHelper<FThrowReplaceCharAnimData>
local UAvatarBehaviorFeature_ReplaceAnim = {}

function UAvatarBehaviorFeature_ReplaceAnim:HandleWeaponEquipped() end

function UAvatarBehaviorFeature_ReplaceAnim:HandleWeaponUnequipped() end
