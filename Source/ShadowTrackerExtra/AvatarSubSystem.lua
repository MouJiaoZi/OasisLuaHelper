---@meta

---@class EAvatarSubSystemCreationMethod
---@field ClientOnly number @客户端创建
---@field ServerOnly number @DS创建
---@field ServerReplication number @DS创建复制到客户端
EAvatarSubSystemCreationMethod = {}


---@class UAvatarSubSystem: UObject
---@field bActive boolean
---@field bReplicatedActive boolean
---@field DefaultCreationMethod EAvatarSubSystemCreationMethod
---@field bShouldAcitivateOnCreation boolean
---@field bShouldTick boolean
---@field AvatarSubSystemTags FGameplayTagContainer
---@field ExcludeTags FGameplayTagContainer
---@field bOverride_InitSubSystem boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_ReleaseSubSystem boolean
---@field bOverride_TickSubSystem boolean
---@field bOverride_ShouldTick boolean
local UAvatarSubSystem = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerAvatarComp UAvatarComponent
function UAvatarSubSystem:InitSubSystem(InOwnerAvatarComp) end

function UAvatarSubSystem:ReleaseSubSystem() end

---@param DeltaTime number
function UAvatarSubSystem:TickSubSystem(DeltaTime) end

---@return boolean
function UAvatarSubSystem:ShouldTick() end

function UAvatarSubSystem:ActiveSystem() end

function UAvatarSubSystem:DeactiveSystem() end

---@param InContainer FGameplayTagContainer
---@return boolean
function UAvatarSubSystem:ExcludeTagsHasAnyTag(InContainer) end

function UAvatarSubSystem:OnRep_Active() end

---HOT_UPDATE_PROTECT *****************************************
---@param InOwnerAvatarComp UAvatarComponent
function UAvatarSubSystem:BP_InitSubSystem(InOwnerAvatarComp) end

function UAvatarSubSystem:BP_ReleaseSubSystem() end

---@param DeltaTime number
function UAvatarSubSystem:BP_TickSubSystem(DeltaTime) end

function UAvatarSubSystem:PostInitAvatarSubsystem() end

function UAvatarSubSystem:PostReleaseAvatarSubsystem() end
