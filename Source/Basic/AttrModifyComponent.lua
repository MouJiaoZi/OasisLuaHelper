---@meta

---@class FMoveAttrData
FMoveAttrData = {}


---@class FMoveAttrDataContainer
FMoveAttrDataContainer = {}


---@class FTempAttrRegisterItem
---@field AttrVariableType EAttrVariableType
FTempAttrRegisterItem = {}


---@class FAttrRegisterItem
---@field AttrName string
---@field PropertyName string
---@field AttrVariableType EAttrVariableType
---@field HasReplicatedTag boolean
FAttrRegisterItem = {}


---@class FAttrModifyGroupItem
---@field AttrModifyItem ULuaArrayHelper<FAttrModifyItem>
FAttrModifyGroupItem = {}


---@class FAttrRowData
---@field AttrGroup number
---@field AttrName string
---@field AttrVariableType EAttrVariableType
---@field OriginalValue number
---@field MinValue number
---@field MaxValue number
FAttrRowData = {}


---@class FResBatchItem
---@field AttrModifyComp UAttrModifyComponent
---@field AttrName string
---@field ResPath FSoftObjectPath
---@field ComponentClassName string
---@field ComponentTag string
FResBatchItem = {}


---@class FAttrModifyReportFilter
---@field bFilterClient boolean
---@field bFilterDS boolean
FAttrModifyReportFilter = {}


---@class FAttrMetaData
---@field AttrMin string
---@field AttrMax string
---@field AttrFunc string
FAttrMetaData = {}


---@class FAttrModifyInvocationCollection
FAttrModifyInvocationCollection = {}


---@class FGetClientPlayerType : ULuaSingleDelegate
FGetClientPlayerType = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetClientPlayerType:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
function FGetClientPlayerType:Execute(Param1) end


---@class FOnCharacterAttributeChanged : ULuaMulticastDelegate
FOnCharacterAttributeChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: AActor, Param2: string, Param3: number, Param4: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterAttributeChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 AActor
---@param Param2 string
---@param Param3 number
---@param Param4 number
function FOnCharacterAttributeChanged:Broadcast(Param1, Param2, Param3, Param4) end


---@class FGetUnregisteredAttrFromCharacter : ULuaSingleDelegate
FGetUnregisteredAttrFromCharacter = {}

---绑定回调函数
---@param Callback fun(Obj: any, AttrName: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetUnregisteredAttrFromCharacter:Bind(Callback, Obj) end

---执行委托
---@param AttrName string
function FGetUnregisteredAttrFromCharacter:Execute(AttrName) end


---@class FOnAttrValueChangedDynamicDelegate : ULuaSingleDelegate
FOnAttrValueChangedDynamicDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, AttrName: string, CurValue: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAttrValueChangedDynamicDelegate:Bind(Callback, Obj) end

---执行委托
---@param AttrName string
---@param CurValue number
function FOnAttrValueChangedDynamicDelegate:Execute(AttrName, CurValue) end


---@class UAttrModifyFilterDataAsset: UDataAsset
---@field AllAttrModifyMap ULuaMapHelper<string, FAttrModifyReportFilter>
local UAttrModifyFilterDataAsset = {}


---@class UAttrModifyComponent: UActorComponent, IObjectPoolInterface, IGameAttributeCompInterface
---@field OnAttrModified FOnAttrModifiedEvent
---@field AttrValueChangedDelegates ULuaMapHelper<string, FAttrModifyInvocationCollection>
---@field EnabledAttrSetModifyItemArray ULuaArrayHelper<FAttrModifyItem>
---@field AppliedAttrModifyItemArray ULuaMapHelper<FAttrKey, FAttrModifyItemArray>
---@field bIsResBunchModify boolean
---@field AttrGroup number
---@field ConfigAttrModifyList ULuaArrayHelper<FAttrModifyItem>
---@field ConfigAttrModifyGroupList ULuaArrayHelper<FAttrModifyGroupItem>
---@field AttrModifyStateList ULuaArrayHelper<number>
---@field AttrModifyStateBitList number
---@field AttrModifyGroupStateList ULuaArrayHelper<number>
---@field DynamicModifierRepList ULuaArrayHelper<FAttrModifyItem>
---@field DynamicModifierRepListTempCache ULuaArrayHelper<FAttrModifyItem>
---@field DynamicModifierList ULuaArrayHelper<FAttrModifyItem>
---@field DynamicModifierListTempCache ULuaArrayHelper<FAttrModifyItem>
---@field DynamicModifierClientList ULuaArrayHelper<FAttrModifyItem>
---@field DynamicModifierRepList_WithID ULuaArrayHelper<FAttrModifyItem_ID>
---@field DynamicModifierRepList_WithIDTempCache ULuaArrayHelper<FAttrModifyItem_ID>
---@field AttrRegisterItemMap ULuaMapHelper<string, FAttrRegisterItem>
---@field bIsAttrMetaDataItemMapSaved boolean
---@field AttrMetaDataItemMap ULuaMapHelper<string, FAttrMetaData>
---@field GetUnregisteredAttrFromCharacterDelegate FGetUnregisteredAttrFromCharacter
---@field NewGameAttributeGroupClasses ULuaArrayHelper<UGameAttributeGroup>
---@field NewGameAttributeConfigs ULuaArrayHelper<FGameAttributeDefinition>
---@field GameAttributeInitialConfigs ULuaArrayHelper<FGameAttributeValueConfig>
---@field GlobalNewGameAttributeGroupClass UGameAttributeGroup
---@field NewGameAttributeGroupInstances ULuaArrayHelper<UGameAttributeGroup>
---@field LocalCalculationVariableExecutors ULuaMapHelper<number, ULocalCalculationVariableExecutor>
---@field DynamicDataHandlers ULuaMapHelper<number, UAttrModifyDynamicDataHandler>
local UAttrModifyComponent = {}

---@param InRecycledActor AActor
---@param bPersistentPool boolean
function UAttrModifyComponent:OnOwnerPreRecycled(InRecycledActor, bPersistentPool) end

---@param InGroup number
---@param InRegister boolean
function UAttrModifyComponent:SetAttributeGroup(InGroup, InRegister) end

---@param InGroup number
---@return boolean
function UAttrModifyComponent:RegisterAttributesFromTable(InGroup) end

---@param AttrRegists ULuaArrayHelper<FAttrRegisterItem>
---@param bSetAttrByOrigin boolean
---@return boolean
function UAttrModifyComponent:RegisterModifyAbleAttr(AttrRegists, bSetAttrByOrigin) end

---@param InOwner UObject
---@param RegistName string
---@param ValueName string
---@param ValueType EAttrVariableType
---@param InHasReplicatedTag boolean
---@param InMaxValue number
---@param InMinValue number
---@return boolean
function UAttrModifyComponent:RegisterBPModifyAbleAttr(InOwner, RegistName, ValueName, ValueType, InHasReplicatedTag, InMaxValue, InMinValue) end

---@param Name string
---@param InMinValue number
---@param InMaxValue number
function UAttrModifyComponent:SetAttributeValueRange(Name, InMinValue, InMaxValue) end

---@param Name string
---@param Value number
function UAttrModifyComponent:UpdateModifyAbleAttrMaxValue(Name, Value) end

function UAttrModifyComponent:UnRegisterAllModifyAbleAttr() end

---@param AttrRegists ULuaArrayHelper<string>
---@return boolean
function UAttrModifyComponent:UnregisterModifyAbleAttr(AttrRegists) end

---@param AttrRegistItem FAttrRegisterItem
---@return boolean
function UAttrModifyComponent:UpdateRegisteredModifyAbleAttr(AttrRegistItem) end

---@param AttrRegist FAttrRegisterItem
---@return boolean
function UAttrModifyComponent:ReplaceModifyAbleAttr(AttrRegist) end

---@param AttrModifyItemName string
---@param bForceNetUpdate boolean
---@return boolean
function UAttrModifyComponent:EnableAttrModifier(AttrModifyItemName, bForceNetUpdate) end

---@param AttrModifyItemNames ULuaArrayHelper<string>
---@param bForceNetUpdate boolean
---@param ModifierSuffix string
function UAttrModifyComponent:EnableAttrModifiers(AttrModifyItemNames, bForceNetUpdate, ModifierSuffix) end

---@param AttrModifyItemName string
---@param bForceNetUpdate boolean
---@return boolean
function UAttrModifyComponent:DisableAttrModifier(AttrModifyItemName, bForceNetUpdate) end

---@param AttrModifyItemNames ULuaArrayHelper<string>
---@param bForceNetUpdate boolean
---@param ModifierSuffix string
function UAttrModifyComponent:DisableAttrModifiers(AttrModifyItemNames, bForceNetUpdate, ModifierSuffix) end

---@return boolean
function UAttrModifyComponent:EnableAllAttrModifier() end

---@param bRecycled boolean
---@return boolean
function UAttrModifyComponent:DisableAllAttrModifier(bRecycled) end

---@param TargetActor AActor
---@return boolean
function UAttrModifyComponent:DisableModifierToActor(TargetActor) end

---@param TargetActor AActor
---@return boolean
function UAttrModifyComponent:ClientDisableDynimacModifierToActor(TargetActor) end

---@param ModifyConfigIndex number
---@param bForceNetUpdate boolean
---@return boolean
function UAttrModifyComponent:EnableAttrModifierByIndex(ModifyConfigIndex, bForceNetUpdate) end

---@param GroupIndex number
---@return boolean
function UAttrModifyComponent:EnableAttrModifierGroupByIndex(GroupIndex) end

---@param ModifyConfigIndex number
---@param bForceNetUpdate boolean
---@param bRecycled boolean
---@return boolean
function UAttrModifyComponent:DisableAttrModifierByIndex(ModifyConfigIndex, bForceNetUpdate, bRecycled) end

---@param GroupIndex number
---@return boolean
function UAttrModifyComponent:DisableAttrModifierGroupByIndex(GroupIndex) end

function UAttrModifyComponent:DisableAllClientSimulateAttrModifier() end

---@param AttrName string
---@return boolean
function UAttrModifyComponent:HasRegisterAttr(AttrName) end

---@param AttrModifyItem FAttrModifyItem
function UAttrModifyComponent:AddDynamicModifier(AttrModifyItem) end

---@param ModifyConfig FAttrModifyItemSimple
---@param OptionalModifyItemNameID string
---@return string
function UAttrModifyComponent:AddDynamicModifierBySimpleConfig(ModifyConfig, OptionalModifyItemNameID) end

---@param AttrName string
---@param ModifierOp EAttrOperator
---@param ModifierValue number
---@param OptionalModifyItemNameID string
---@param bRepAttrModify boolean
---@return string
function UAttrModifyComponent:AddDynamicModifierBySimpleData(AttrName, ModifierOp, ModifierValue, OptionalModifyItemNameID, bRepAttrModify) end

---@param AttrModifyId string
---@param IntAttrModifyID number
function UAttrModifyComponent:RemoveDynamicModifier(AttrModifyId, IntAttrModifyID) end

function UAttrModifyComponent:RemoveAllDynamicClientSimulateModifier() end

---@param AttrModifyId string
---@return boolean
function UAttrModifyComponent:HasDynamicModifier(AttrModifyId) end

---@param AttrName string
---@param ModifyItemNameToAddedValue ULuaMapHelper<string, number>
function UAttrModifyComponent:GetAffectedInfosByAttrName(AttrName, ModifyItemNameToAddedValue) end

---@param AttrName string
---@param value number
function UAttrModifyComponent:AddValueToAttribute(AttrName, value) end

---@param AttrName string
---@param value number
function UAttrModifyComponent:SetValueToAttributeSafety(AttrName, value) end

---@param AttrName string
---@return number
function UAttrModifyComponent:GetAttributeValue(AttrName) end

---@param AttrContainer FGameAttributeContainer
---@return number
function UAttrModifyComponent:GetAttributeValueByContainerRef(AttrContainer) end

---@param AttrContainer FGameAttributeContainer
---@param DefaultVal number
---@return number
function UAttrModifyComponent:GetAttributeValueByContainerRefWithDefaultValue(AttrContainer, DefaultVal) end

---@param AttrName string
---@return number
function UAttrModifyComponent:GetAttributeOriginValue(AttrName) end

---@param AttrName string
---@return number
function UAttrModifyComponent:GetAttributeInitialValue(AttrName) end

---@param AttrName string
---@param NewValue number
---@return boolean
function UAttrModifyComponent:SetAttributeInitialValue(AttrName, NewValue) end

---@param AttrName string
---@param NewValue number
---@return boolean
function UAttrModifyComponent:ServerSetAttributeInitialValueSimple(AttrName, NewValue) end

function UAttrModifyComponent:ServerRemoveModifierListAndCache() end

function UAttrModifyComponent:ServerAddCacheModifierList() end

function UAttrModifyComponent:ClientLocalRemoveModifierListAndCache() end

function UAttrModifyComponent:ClientLocalAddCacheModifierList() end

---@param AttrName string
---@return number
function UAttrModifyComponent:GetAttributeValueMax(AttrName) end

---@param AttrName string
---@return number
function UAttrModifyComponent:GetAttributeValueMin(AttrName) end

---@param AttrName string
---@return boolean
function UAttrModifyComponent:AttributeHasReplicated(AttrName) end

---@param AttrModifyItemName string
---@param OutItem FAttrModifyItem
---@return boolean
function UAttrModifyComponent:GetAttrModifyItemByItemName(AttrModifyItemName, OutItem) end

---@param NewItem FAttrModifyItem
function UAttrModifyComponent:AddConfigAttrModifyItem(NewItem) end

---@param ConfigAttrModifier FAttrModifyItem
---@return boolean
function UAttrModifyComponent:UpdateCurClientModifierResValue(ConfigAttrModifier) end

---@param InPC APlayerController
function UAttrModifyComponent:OnSwitchingDS(InPC) end

---@param PrevStateList ULuaArrayHelper<number>
function UAttrModifyComponent:OnRep_AttrModifyStateList(PrevStateList) end

function UAttrModifyComponent:OnRep_AttrModifyStateBitList() end

function UAttrModifyComponent:OnRep_AttrModifyGroupStateList() end

function UAttrModifyComponent:OnRep_DynamicModifierList() end

function UAttrModifyComponent:OnRep_DynamicModifierList_IDs() end

---@param AttrName string
---@param Delegate FOnAttrValueChangedDynamicDelegate
function UAttrModifyComponent:AddAttrValueChangedDelegate(AttrName, Delegate) end

---@param AttrName string
---@param Delegate FOnAttrValueChangedDynamicDelegate
function UAttrModifyComponent:RemoveAttrValueChangedDelegate(AttrName, Delegate) end

---@param InAttrName string
---@param CurValue number
function UAttrModifyComponent:OnMaxAttributeValueChanged(InAttrName, CurValue) end

---@param InClass UGameAttributeGroup
---@return boolean
function UAttrModifyComponent:AddNewGameAttributeGroupByClass(InClass) end

---@param InClass UGameAttributeGroup
function UAttrModifyComponent:RemoveNewGameAttributeGroupByClass(InClass) end

---@param InClass UGameAttributeGroup
---@return boolean
function UAttrModifyComponent:HasNewGameAttributeGroupByClass(InClass) end

---@param CalculationClass UObject
---@param Delegate FGetValidLocalModifiersDelegate
---@return number
function UAttrModifyComponent:RegisterLocalCalculationVariableExecutorByDelegate(CalculationClass, Delegate) end

---@param CalculationClass UObject
---@param ExecutorClass ULocalCalculationVariableExecutor
---@return number
function UAttrModifyComponent:RegisterLocalCalculationVariableExecutorByClass(CalculationClass, ExecutorClass) end

---@param ExecutorUniqueID number
function UAttrModifyComponent:UnregisterLocalCalculationVariableExecutor(ExecutorUniqueID) end
