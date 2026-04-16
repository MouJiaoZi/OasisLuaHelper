---@meta

---@class UAttrModifyFunctionLibrary: UBlueprintFunctionLibrary
local UAttrModifyFunctionLibrary = {}

---@param ModifiedTarget UObject
---@param AttrName string
---@return number
function UAttrModifyFunctionLibrary:GetAttributeValueByName(ModifiedTarget, AttrName) end

---@param ModifiedTarget UObject
---@param AttrContainer FGameAttributeContainer
---@return number
function UAttrModifyFunctionLibrary:GetAttributeValueByContainerRef(ModifiedTarget, AttrContainer) end

---@param ModifiedTarget UObject
---@param AttrName string
---@param DefaultVal number
---@return number
function UAttrModifyFunctionLibrary:GetAttributeValueByNameWithDefaultValue(ModifiedTarget, AttrName, DefaultVal) end

---@param ModifiedTarget UObject
---@param AttrContainer FGameAttributeContainer
---@param DefaultVal number
---@return number
function UAttrModifyFunctionLibrary:GetAttributeValueByContainerRefWithDefaultValue(ModifiedTarget, AttrContainer, DefaultVal) end

---@param AttrContainer FGameAttributeContainer
function UAttrModifyFunctionLibrary:SetupAttrContainerNameCache(AttrContainer) end

---@return boolean
function UAttrModifyFunctionLibrary:UseBlueprintImplementationInsteadOfNativeImplementation() end

---@param ModifiedTarget UObject
---@param RelevantActors ULuaArrayHelper<AActor>
function UAttrModifyFunctionLibrary:GetAttrModifyRelevantActors(ModifiedTarget, RelevantActors) end

---@param InOwner UObject
---@param AttrName string
---@param AttrVariableType EAttrVariableType
---@param bHasReplicatedTag boolean
---@param MaxValue number
---@param MinValue number
---@param OriginValue number
---@return FAttrRegisterItem
function UAttrModifyFunctionLibrary:MakeAttrRegisterItem(InOwner, AttrName, AttrVariableType, bHasReplicatedTag, MaxValue, MinValue, OriginValue) end

---@param ModifiedTarget UObject
---@param NewAttribute FAttrRegisterItem
function UAttrModifyFunctionLibrary:RegisterModifiedAttribute(ModifiedTarget, NewAttribute) end

---@param ModifiedTarget UObject
---@param Group number
---@param bRegister boolean
function UAttrModifyFunctionLibrary:SetAttributeGroup(ModifiedTarget, Group, bRegister) end

---@param ModifiedTarget UObject
---@param AttrName string
---@return number
function UAttrModifyFunctionLibrary:GetAttributeValue(ModifiedTarget, AttrName) end

---@param ModifiedTarget UObject
---@param AttrName string
---@return number
function UAttrModifyFunctionLibrary:GetAttributeValueMax(ModifiedTarget, AttrName) end

---@param ModifiedTarget UObject
---@param AttrName string
---@return number
function UAttrModifyFunctionLibrary:GetAttributeValueMin(ModifiedTarget, AttrName) end

---@param ModifiedTarget UObject
---@param AttrName string
---@return number
function UAttrModifyFunctionLibrary:GetAttributeValuePercentage(ModifiedTarget, AttrName) end

---@param ModifiedTarget UObject
---@param AttrName string
---@param AddVal number
---@param Reason number
function UAttrModifyFunctionLibrary:AddAttrValue(ModifiedTarget, AttrName, AddVal, Reason) end

---@param ModifiedTarget UObject
---@param AttrName string
---@param NewVal number
---@param Reason number
function UAttrModifyFunctionLibrary:SetAttrValue(ModifiedTarget, AttrName, NewVal, Reason) end

---@param ModifiedTarget UObject
---@param AttrName string
---@param Delegate FOnAttrValueChangedDynamicDelegate
function UAttrModifyFunctionLibrary:AddAttrValueChangedDelegate(ModifiedTarget, AttrName, Delegate) end

---@param ModifiedTarget UObject
---@param AttrName string
---@param Delegate FOnAttrValueChangedDynamicDelegate
function UAttrModifyFunctionLibrary:RemoveAttrValueChangedDelegate(ModifiedTarget, AttrName, Delegate) end

---@param ModifiedTarget UObject
---@param AttrContainer FGameAttributeContainer
---@return number
function UAttrModifyFunctionLibrary:GetAttributeValueByContainer(ModifiedTarget, AttrContainer) end

---@param ModifiedTarget UObject
---@param AttrContainer FGameAttributeContainer
---@return number
function UAttrModifyFunctionLibrary:GetAttributeValueMaxByContainer(ModifiedTarget, AttrContainer) end

---@param ModifiedTarget UObject
---@param AttrContainer FGameAttributeContainer
---@param NewVal number
---@param Reason number
function UAttrModifyFunctionLibrary:AddAttrValueByContainer(ModifiedTarget, AttrContainer, NewVal, Reason) end

---@param ModifiedTarget UObject
---@param AttrContainer FGameAttributeContainer
---@param NewVal number
---@param Reason number
function UAttrModifyFunctionLibrary:SetAttrValueByContainer(ModifiedTarget, AttrContainer, NewVal, Reason) end

---@param ModifiedTarget UObject
---@param AttrContainer FGameAttributeContainer
---@param Delegate FOnAttrValueChangedDynamicDelegate
function UAttrModifyFunctionLibrary:AddAttrValueChangedDelegateByContainer(ModifiedTarget, AttrContainer, Delegate) end

---@param ModifiedTarget UObject
---@param AttrContainer FGameAttributeContainer
---@param Delegate FOnAttrValueChangedDynamicDelegate
function UAttrModifyFunctionLibrary:RemoveAttrValueChangedDelegateByContainer(ModifiedTarget, AttrContainer, Delegate) end

---@param ModifyItemName string
---@param AttrName string
---@param ComponentClassName string
---@param ComponentTag string
---@param ModifyOperator EAttrOperator
---@param ModifierValue number
---@param bLocalModify boolean
---@param IntConvertType EAttrIntConvertType
---@return FAttrModifyItem
function UAttrModifyFunctionLibrary:MakeAttrModifyItem(ModifyItemName, AttrName, ComponentClassName, ComponentTag, ModifyOperator, ModifierValue, bLocalModify, IntConvertType) end

---@param AttrModifyItem FAttrModifyItem
---@param Index number
function UAttrModifyFunctionLibrary:AttrModifyItem_RemoveModify(AttrModifyItem, Index) end

---@param AttrModifyItem FAttrModifyItem
---@param Target AActor
---@param OutIndex ULuaArrayHelper<number>
function UAttrModifyFunctionLibrary:AttrModifyItem_GetAffectTargetCachIndex(AttrModifyItem, Target, OutIndex) end

---@param A FAttrModifyItem
---@param B FAttrModifyItem
---@return boolean
function UAttrModifyFunctionLibrary:AttrModifyItem_Equals(A, B) end

---@param AttrModifyItem FAttrModifyItem
---@return string
function UAttrModifyFunctionLibrary:AttrModifyItem_GetOperatorName(AttrModifyItem) end

---@param AttrModifyItem FAttrModifyItem
---@return string
function UAttrModifyFunctionLibrary:AttrModifyItem_ToString(AttrModifyItem) end

---@param ModifyAttr string
---@param ComponentClassName string
---@param Operator EAttrOperator
---@param ModifyValue number
---@return FWeaponAttrModifyData
function UAttrModifyFunctionLibrary:MakeWeaponAttrModifyData(ModifyAttr, ComponentClassName, Operator, ModifyValue) end

---@param ModifyConfigID string
---@param WeaponAttrModifiers ULuaArrayHelper<FWeaponAttrModifyData>
---@return FWeaponAttrModifyConfig
function UAttrModifyFunctionLibrary:MakeWeaponAttrModifyConfig(ModifyConfigID, WeaponAttrModifiers) end

---@param Object UObject
---@param PropertyPath string
---@param OutAttrRegisterItem FAttrRegisterItem
---@return boolean
function UAttrModifyFunctionLibrary:MakeAttrRegisterItemFromPropertyPath(Object, PropertyPath, OutAttrRegisterItem) end

---@param GameAttribute FGameAttributeContainer
---@return boolean
function UAttrModifyFunctionLibrary:IsGameAttributeValid(GameAttribute) end
