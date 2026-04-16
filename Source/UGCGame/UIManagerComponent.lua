---@meta

---@class FSubModuleConfig
---@field SubModulePath string
---@field IsMultipleInstances boolean
FSubModuleConfig = {}


---@class UUIManagerComponent: UActorComponent
---@field SubModuleConfigMap ULuaMapHelper<string, FSubModuleConfig>
local UUIManagerComponent = {}

---@param InGameState ASTExtraGameStateBase
function UUIManagerComponent:OnReceiveGameStateCreated(InGameState) end

---@param InPlayerController ASTExtraPlayerController
function UUIManagerComponent:OnReceivePlayerControllerInitialized(InPlayerController) end

---@param InPlayerPawn ASTExtraPlayerCharacter
function UUIManagerComponent:OnReceivePlayerPawnInitialized(InPlayerPawn) end

---@param InPlayerState ASTExtraPlayerState
function UUIManagerComponent:OnReceivePlayerStateInitialized(InPlayerState) end
