---@meta

---@class UOccupationCardAvatarEntity: UCharacterAvatarEntity
---@field CardItemDefineID FItemDefineID
local UOccupationCardAvatarEntity = {}

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
---@param DisableCheck boolean
function UOccupationCardAvatarEntity:CollectDesiredResource(CollectRes, DisableCheck) end

---@param DefineID FItemDefineID
---@param BattleItemHandle UBattleItemHandleBase
function UOccupationCardAvatarEntity:CreateHandleCallback(DefineID, BattleItemHandle) end

---@param DisableCheck boolean
function UOccupationCardAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end
