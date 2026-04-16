---@meta

---@class UCommonBackpackFunctionLibrary: UBlueprintFunctionLibrary
local UCommonBackpackFunctionLibrary = {}

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param TypeSpecificID number
---@param Count number
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
---@return FItemDefineID
function UCommonBackpackFunctionLibrary:AddItem(GetCommonBackpackInterface, TypeSpecificID, Count, GenerateReason, ValidateConfigId) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param TypeSpecificID number
---@param Count number
---@param ValidHours number
---@param Reason number
---@param GenerateReason EGenerateItemReason
---@param ValidateConfigId number
---@return FItemDefineID
function UCommonBackpackFunctionLibrary:AddServerItem(GetCommonBackpackInterface, TypeSpecificID, Count, ValidHours, Reason, GenerateReason, ValidateConfigId) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param TypeSpecificID number
---@param Count number
---@return boolean
function UCommonBackpackFunctionLibrary:DeleteItem(GetCommonBackpackInterface, TypeSpecificID, Count) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param TypeSpecificID number
---@param Count number
---@return boolean
function UCommonBackpackFunctionLibrary:ConsumeItem(GetCommonBackpackInterface, TypeSpecificID, Count) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param DefineID FItemDefineID
---@return boolean
function UCommonBackpackFunctionLibrary:ContainsItem(GetCommonBackpackInterface, DefineID) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param TypeSpecificID number
---@return number
function UCommonBackpackFunctionLibrary:GetItemCount(GetCommonBackpackInterface, TypeSpecificID) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param DefineID FItemDefineID
---@return number
function UCommonBackpackFunctionLibrary:GetItemCountByDefineID(GetCommonBackpackInterface, DefineID) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param DefineID FItemDefineID
---@return boolean
function UCommonBackpackFunctionLibrary:IsItemCanUse(GetCommonBackpackInterface, DefineID) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param DefineID FItemDefineID
---@return boolean
function UCommonBackpackFunctionLibrary:IsItemExpired(GetCommonBackpackInterface, DefineID) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param DefineID FItemDefineID
---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
function UCommonBackpackFunctionLibrary:UseItem(GetCommonBackpackInterface, DefineID, Target, Reason) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param DefineID FItemDefineID
---@param Reason EBattleItemDisuseReason
function UCommonBackpackFunctionLibrary:DisUseItem(GetCommonBackpackInterface, DefineID, Reason) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param TypeSpecificID number
function UCommonBackpackFunctionLibrary:GetItemsByItemID(GetCommonBackpackInterface, TypeSpecificID) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
---@param DefineID FItemDefineID
function UCommonBackpackFunctionLibrary:GetItem(GetCommonBackpackInterface, DefineID) end

---@param GetCommonBackpackInterface IGetCommonBackpackInterface
function UCommonBackpackFunctionLibrary:GetAllItems(GetCommonBackpackInterface) end

---@param AdditionalData ULuaArrayHelper<FBattleItemAdditionalData>
---@param LastUseTime number
---@param TotleCD number
---@param bShowInBackpack boolean
---@param bShowInGrenadeList boolean
function UCommonBackpackFunctionLibrary:ShowGenerateItemCDUI(AdditionalData, LastUseTime, TotleCD, bShowInBackpack, bShowInGrenadeList) end

---@param GameState AUAEGameState
---@return number
function UCommonBackpackFunctionLibrary:GetElapsedTimeForItemTimelimit(GameState) end
