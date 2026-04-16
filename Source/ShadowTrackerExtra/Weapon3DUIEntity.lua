---@meta

---@class UWeapon3DUISubEntity: UAvatarEntity
---@field UAEWidgetList ULuaArrayHelper<UCustomWidgetComponent>
---@field AttachSocketName string
---@field bIsAttached boolean
local UWeapon3DUISubEntity = {}

---@param OwnerWeapon ASTExtraWeapon
---@param HandleBase UBattleItemHandleBase
function UWeapon3DUISubEntity:SetupEntity(OwnerWeapon, HandleBase) end

function UWeapon3DUISubEntity:InitUIWidget() end

---@param DisableCheck boolean
function UWeapon3DUISubEntity:ResetEntityBeforePushToPool(DisableCheck) end

function UWeapon3DUISubEntity:HandleLoad3DUIFinished() end

---@param InAsyncID number
function UWeapon3DUISubEntity:HandleLoadAttached3DUIFinished(InAsyncID) end
