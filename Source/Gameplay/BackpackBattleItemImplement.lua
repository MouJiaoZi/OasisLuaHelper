---@meta

---@class UBackpackBattleItem: UBackpackBaseItem, IBackpackItemInterface
---@field BackpackComponentWeakPtr UBackpackComponent
local UBackpackBattleItem = {}

---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@param ExpireTime number
---@param IsNew boolean
---@return boolean
function UBackpackBattleItem:AddBattleItem(TypeSpecificID, InstanceID, Count, ExpireTime, IsNew) end

---@param TypeSpecificID number
---@param Count number
---@param ExpireTime number
---@param IsNew boolean
---@return number
function UBackpackBattleItem:MergeBattleItem(TypeSpecificID, Count, ExpireTime, IsNew) end

---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@param ExpireTime number
---@param IsNew boolean
---@param Properties ULuaArrayHelper<FAdditionProperty>
---@return boolean
function UBackpackBattleItem:UpdateBattleItem(TypeSpecificID, InstanceID, Count, ExpireTime, IsNew, Properties) end

---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@return boolean
function UBackpackBattleItem:DeleteBattleItem(TypeSpecificID, InstanceID, Count) end

---@param DefineID FItemDefineID
---@param ExpireTime number
---@param IsNew boolean
---@param Properties ULuaArrayHelper<FAdditionProperty>
function UBackpackBattleItem:SetBattleItemExtraInfo(DefineID, ExpireTime, IsNew, Properties) end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackBattleItem:UseBattleItem(DefineID) end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackBattleItem:DisUseBattleItem(DefineID) end
