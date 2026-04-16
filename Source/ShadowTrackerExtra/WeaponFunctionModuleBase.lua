---@meta

---武器功能模块基类
---@class UWeaponFunctionModuleBase: UObject
---@field bServerAvailable boolean
---@field bEnableReplicated boolean
---@field bClientAvailable boolean
---@field bForceClientAvailable boolean
---@field bSimulateClientDisable boolean
---@field bEnableTick boolean
---@field DisableGameModeIDList ULuaArrayHelper<number>
---@field bDynamicDisabled boolean
local UWeaponFunctionModuleBase = {}

---@param InOwnerWeapon ASTExtraWeapon
function UWeaponFunctionModuleBase:Init(InOwnerWeapon) end

---@param InOwnerWeapon ASTExtraWeapon
---@param InOwnerActor AActor
function UWeaponFunctionModuleBase:InitWeaponOwner(InOwnerWeapon, InOwnerActor) end

---@param DeltaTime number
function UWeaponFunctionModuleBase:Tick(DeltaTime) end

function UWeaponFunctionModuleBase:EndPlay() end

function UWeaponFunctionModuleBase:OnDynamicAdd() end

function UWeaponFunctionModuleBase:OnDynamicRemove() end

---@return boolean
function UWeaponFunctionModuleBase:HasAuthority() end
