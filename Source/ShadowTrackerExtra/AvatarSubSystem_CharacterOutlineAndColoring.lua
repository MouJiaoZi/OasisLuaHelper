---@meta

---@class UAvatarSubSystem_CharacterOutlineAndColoring: UAvatarSubSystem
---@field CharacterOutlineAndColoringParam FCharacterOutlineAndColoringParam
---@field DynamicMatInstanceArray ULuaArrayHelper<UMaterialInstanceDynamic>
local UAvatarSubSystem_CharacterOutlineAndColoring = {}

function UAvatarSubSystem_CharacterOutlineAndColoring:CollectAllMatData() end

---@param bSetTarget boolean
function UAvatarSubSystem_CharacterOutlineAndColoring:SetMaterialValue(bSetTarget) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UAvatarSubSystem_CharacterOutlineAndColoring:OnCharacterAvatarLoadFinishedEvent(AsyncLoadID, LoadEventFrom) end
