---@meta

---@class FParticleMaterialDataItem
---@field SocketName string
---@field AssetPath FSoftObjectPath
---@field ValueLinearColor FLinearColor
FParticleMaterialDataItem = {}


---@class FMaterialReplaceDataItem
---@field SlotName string
---@field AssetPath FSoftObjectPath
FMaterialReplaceDataItem = {}


---@class FMaterialParamModifyDataItem
---@field SlotName string
---@field ParamName string
---@field bIsFloatValue boolean
---@field ValueLinearColor FLinearColor
---@field ValueFloat number
FMaterialParamModifyDataItem = {}


---@class FModifyMaterialData
---@field MaterialReplaceDataList ULuaArrayHelper<FMaterialReplaceDataItem>
---@field MaterialParamModifyDataList ULuaArrayHelper<FMaterialParamModifyDataItem>
---@field ParticleParamModifyList ULuaArrayHelper<FParticleMaterialDataItem>
FModifyMaterialData = {}


---@class UAvatarSubsystem_ModifyEscapeMechaMaterial: UAvatarSubsystem_HandleRelatedBase
---@field ModifyMaterialDataMap ULuaMapHelper<number, FModifyMaterialData>
---@field EscapeMechaDataItem FItemSpecialData_EscapeMechaItemData
---@field RenderResList ULuaArrayHelper<FSoftObjectPath>
---@field MaterialList ULuaArrayHelper<UMaterialInterface>
---@field ParticleComponentList ULuaArrayHelper<UParticleSystemComponent>
---@field TargetAvatarSlotID number
---@field ParticleSystemList ULuaArrayHelper<UParticleSystem>
---@field bShouldAttachParticle boolean
---@field bIsUltimateMecha boolean
---@field ParticleSystemMapping ULuaMapHelper<UParticleSystem, UParticleSystem>
local UAvatarSubsystem_ModifyEscapeMechaMaterial = {}

function UAvatarSubsystem_ModifyEscapeMechaMaterial:ModifyMaterial() end

---@param AssetRef ULuaArrayHelper<FSoftObjectPath>
function UAvatarSubsystem_ModifyEscapeMechaMaterial:OnAsyncLoadMaterialInstanceList(AssetRef) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UAvatarSubsystem_ModifyEscapeMechaMaterial:HandleAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end

function UAvatarSubsystem_ModifyEscapeMechaMaterial:OnRep_ModifyMaterialData() end

function UAvatarSubsystem_ModifyEscapeMechaMaterial:ServerGetMechaData() end

function UAvatarSubsystem_ModifyEscapeMechaMaterial:CollectResourceInfo() end

function UAvatarSubsystem_ModifyEscapeMechaMaterial:LoadResource() end

---@return number
function UAvatarSubsystem_ModifyEscapeMechaMaterial:GetPlayerKey() end

function UAvatarSubsystem_ModifyEscapeMechaMaterial:PostOnRepModifyMaterialData() end

function UAvatarSubsystem_ModifyEscapeMechaMaterial:PostModifyMaterial() end

function UAvatarSubsystem_ModifyEscapeMechaMaterial:PreModifyMaterial() end

---@return boolean
function UAvatarSubsystem_ModifyEscapeMechaMaterial:ShouldModifyMaterial() end
