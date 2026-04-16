---@meta

---@class UActorFieldSystemComponent: UActorComponent
---@field FieldLogicNodes ULuaArrayHelper<UFieldLogicNodeBase>
---@field OverlapComponentSelector FActorComponentSelector
---@field bOverlapIgnoreMyOwner boolean
---@field bOpenAIWorldVolumeCheckOverlapActor boolean
---@field AIWorldVolumeCheckOverlapActorTickTime number
---@field AIWorldVolumeCheckOverlapActorTimerHandle FTimerHandle
---@field bEnabled boolean
---@field CharacterTypeList ULuaArrayHelper<ESTECharacterType>
---@field CharacterTypesFlag number
---@field ExcludeActorTags ULuaArrayHelper<string>
---@field AIWorldVolumeOverlapActors ULuaArrayHelper<AActor>
---@field OverlapCharacters ULuaArrayHelper<FFieldLogicOverlapActor>
---@field OverlapPhysicsActors ULuaArrayHelper<FFieldLogicOverlapActor>
---@field OverlapCommonActors ULuaArrayHelper<FFieldLogicOverlapActor>
local UActorFieldSystemComponent = {}

---@return string
function UActorFieldSystemComponent:GetToString() end

---@param OverlappedComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param OverlapInfo FHitResult
function UActorFieldSystemComponent:OnComponentBeginOverlap(OverlappedComp, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, OverlapInfo) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function UActorFieldSystemComponent:OnComponentEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

function UActorFieldSystemComponent:AutoAddAllConfigPersistentField() end

function UActorFieldSystemComponent:AddPersistentField() end

function UActorFieldSystemComponent:RemovePersistentField() end

function UActorFieldSystemComponent:RemovePersistentFields() end

---@param Target EFieldLogicApplyType
---@return boolean
function UActorFieldSystemComponent:HasFieldLogicNode(Target) end

---@return boolean
function UActorFieldSystemComponent:GetEnabled() end

---@param bEnable boolean
function UActorFieldSystemComponent:SetEnabled(bEnable) end

---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
function UActorFieldSystemComponent:HandleInOverlapActor(OtherActor, OtherComp) end

---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
function UActorFieldSystemComponent:HandleOutOverlapActor(OtherActor, OtherComp) end

function UActorFieldSystemComponent:CheckOverlapActor() end

function UActorFieldSystemComponent:AIWorldVolumeCheckOverlapActor() end
