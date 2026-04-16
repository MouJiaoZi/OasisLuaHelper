---@meta

---排序方式
---@class ETargetsSortType
---@field ETargetsSortType_Random number @随机排序
---@field ETargetsSortType_Distance number @距离排序
---@field ETargetsSortType_Angle number @角度排序
ETargetsSortType = {}


---目标选取形状类型
---@class ETargetPickerShapeType
---@field ETargetPickerShapeType_Sphere number @球形
---@field ETargetPickerShapeType_Fan number @扇形
---@field ETargetPickerShapeType_Rectangle number @长方形
ETargetPickerShapeType = {}


---Fan
---@class FTargetPickerFan
---@field Radius number @半径
---@field Angle number @扇形半角度
---@field Height number @扇形高度
FTargetPickerFan = {}


---Sphere
---@class FTargetPickerSphere
---@field Radius number @半径
FTargetPickerSphere = {}


---Rectangle
---@class FTargetPickerRectangle
---@field Width number @宽度
---@field Length number @长度
---@field Height number @高度
FTargetPickerRectangle = {}


---@class FTargetPickerParams
---@field ShapeType ETargetPickerShapeType
---@field Sphere FTargetPickerSphere
---@field Fan FTargetPickerFan
---@field Rectangle FTargetPickerRectangle
---@field MaxNum number
---@field SortType ETargetsSortType
---@field CampFilter number
---@field ShouldBeVisible boolean
FTargetPickerParams = {}


---封装一些技能的静态操作方法
---@class UUAEClosure_PersistEffectSkillStaticFunction: UBlueprintFunctionLibrary
local UUAEClosure_PersistEffectSkillStaticFunction = {}

---@param Content UObject
---@param DynamicState FGameplayTag
---@param bExact boolean
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:HasDynamicState(Content, DynamicState, bExact) end

---@param Content UObject
---@param DynamicStateTagName string
---@param bExact boolean
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:HasDynamicStateByTagName(Content, DynamicStateTagName, bExact) end

---@param Content UObject
---@param DynamicState FGameplayTag
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:AllowDynamicState(Content, DynamicState) end

---@param Content UObject
---@param DynamicStateTagName string
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:AllowDynamicStateByTagName(Content, DynamicStateTagName) end

---@param Content UObject
---@param DynamicState FGameplayTag
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:EnterDynamicState(Content, DynamicState) end

---@param Content UObject
---@param DynamicStateTagName string
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:EnterDynamicStateByTagName(Content, DynamicStateTagName) end

---@param Content UObject
---@param DynamicState FGameplayTagContainer
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:EnterDynamicStateByContainer(Content, DynamicState) end

---@param Content UObject
---@param DynamicState FGameplayTag
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:LeaveDynamicState(Content, DynamicState) end

---@param Content UObject
---@param DynamicStateTagName string
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:LeaveDynamicStateByTagName(Content, DynamicStateTagName) end

---@param Content UObject
---@param DynamicState FGameplayTagContainer
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:LeaveDynamicStateByContainer(Content, DynamicState) end

---@param Content UObject
---@param DynamicState FGameplayTag
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:InterruptDynamicState(Content, DynamicState) end

---@param Content UObject
---@param DynamicStateTagName string
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:InterruptDynamicStateByTagName(Content, DynamicStateTagName) end

---@param Content UObject
---@param DynamicState FGameplayTagContainer
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:InterruptDynamicStateByContainer(Content, DynamicState) end

---@param Content UObject
---@param DynamicState FGameplayTag
---@param bNewDisabled boolean
---@param bInterrupt boolean
function UUAEClosure_PersistEffectSkillStaticFunction:SetDynamicStateDisabled(Content, DynamicState, bNewDisabled, bInterrupt) end

---@param Content UObject
---@param DynamicStateTagName string
---@param bNewDisabled boolean
---@param bInterrupt boolean
function UUAEClosure_PersistEffectSkillStaticFunction:SetDynamicStateDisabledByTagName(Content, DynamicStateTagName, bNewDisabled, bInterrupt) end

---@param Content UObject
---@param DynamicState FGameplayTagContainer
---@param bNewDisabled boolean
---@param bInterrupt boolean
function UUAEClosure_PersistEffectSkillStaticFunction:SetDynamicStateDisabledByContainer(Content, DynamicState, bNewDisabled, bInterrupt) end

---@param Content UObject
---@param DynamicState FGameplayTag
function UUAEClosure_PersistEffectSkillStaticFunction:ResetDynamicStateDisabled(Content, DynamicState) end

---@param Content UObject
---@param DynamicStateTagName string
function UUAEClosure_PersistEffectSkillStaticFunction:ResetDynamicStateDisabledByTagName(Content, DynamicStateTagName) end

---@param TargetActor AActor
---@param PersistEffectBase UPersistEffectBase
---@param Reason EPersistEffectUnApplyReason
function UUAEClosure_PersistEffectSkillStaticFunction:RemovePersistEffect(TargetActor, PersistEffectBase, Reason) end

---@param PESkill UPersistEffectSkill
---@param bIncludePassiveSkill boolean
function UUAEClosure_PersistEffectSkillStaticFunction:InterruptOtherSkills(PESkill, bIncludePassiveSkill) end

---@param TargetActor AActor
---@param Skill UPersistEffectSkill
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:RemoveSkill(TargetActor, Skill) end

---@param TargetActor AActor
function UUAEClosure_PersistEffectSkillStaticFunction:GetAllSkills(TargetActor) end

---@param TargetActor AActor
---@param SkillClass UPersistEffectSkill
---@param bNotConsiderChild boolean
function UUAEClosure_PersistEffectSkillStaticFunction:GetSkillsByClass(TargetActor, SkillClass, bNotConsiderChild) end

---@param TargetActor AActor
---@param SkillClassPath string
---@param bNotConsiderChild boolean
function UUAEClosure_PersistEffectSkillStaticFunction:GetSkillsByClassPath(TargetActor, SkillClassPath, bNotConsiderChild) end

---@param TargetActor AActor
---@param Tag FGameplayTag
function UUAEClosure_PersistEffectSkillStaticFunction:GetSkillsByTag(TargetActor, Tag) end

---@param TargetActor AActor
---@param Tag string
function UUAEClosure_PersistEffectSkillStaticFunction:GetSkillsByTagName(TargetActor, Tag) end

---@param TargetActor AActor
---@param BuffClass UPersistEffectBuff
---@param RemoveNum number
---@param Causer AActor
---@param bNotConsiderChild boolean
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:RemoveBuffByClass(TargetActor, BuffClass, RemoveNum, Causer, bNotConsiderChild) end

---@param TargetActor AActor
---@param BuffClassPath string
---@param RemoveNum number
---@param Causer AActor
---@param bNotConsiderChild boolean
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:RemoveBuffByPath(TargetActor, BuffClassPath, RemoveNum, Causer, bNotConsiderChild) end

---@param TargetActor AActor
---@param Tags FGameplayTagContainer
---@param RemoveNum number
---@param Causer AActor
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:RemoveBuffByTag(TargetActor, Tags, RemoveNum, Causer) end

---@param TargetActor AActor
---@param Tag string
---@param RemoveNum number
---@param Causer AActor
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:RemoveBuffByTagName(TargetActor, Tag, RemoveNum, Causer) end

---@param TargetActor AActor
function UUAEClosure_PersistEffectSkillStaticFunction:GetAllBuffs(TargetActor) end

---@param TargetActor AActor
---@param BuffClass UPersistEffectBuff
---@param bNotConsiderChild boolean
function UUAEClosure_PersistEffectSkillStaticFunction:GetBuffsByClass(TargetActor, BuffClass, bNotConsiderChild) end

---@param TargetActor AActor
---@param BuffClassPath string
---@param bNotConsiderChild boolean
function UUAEClosure_PersistEffectSkillStaticFunction:GetBuffsByClassPath(TargetActor, BuffClassPath, bNotConsiderChild) end

---@param TargetActor AActor
---@param Tag FGameplayTag
function UUAEClosure_PersistEffectSkillStaticFunction:GetBuffsByTag(TargetActor, Tag) end

---@param TargetActor AActor
---@param Tag string
function UUAEClosure_PersistEffectSkillStaticFunction:GetBuffsByTagName(TargetActor, Tag) end

---@param Content UObject
---@param TagGroups FGameplayTagGroups
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:CanApplyTagGroups(Content, TagGroups) end

---@param Content UObject
---@param TagGroups FGameplayTagGroups
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:TryApplyTagGroups(Content, TagGroups) end

---@param Content UObject
---@param TagGroups FGameplayTagGroups
---@return boolean
function UUAEClosure_PersistEffectSkillStaticFunction:TryUnapplyTagGroups(Content, TagGroups) end

---@param Path string
---@param bRecursive boolean
function UUAEClosure_PersistEffectSkillStaticFunction:GetPersistEffectClassesByPath(Path, bRecursive) end

---选取参数指定范围内的目标
---@param InOwnerActor AActor
---@param InStartTransform FTransform
---@param InTargetPickerParams FTargetPickerParams
---@param InIgnoreActors ULuaArrayHelper<AActor>
function UUAEClosure_PersistEffectSkillStaticFunction:PickTargets(InOwnerActor, InStartTransform, InTargetPickerParams, InIgnoreActors) end
