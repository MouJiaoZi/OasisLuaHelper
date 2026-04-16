---@meta

---@class UObserverProbeComponent: UGameModeBaseComponent
local UObserverProbeComponent = {}

---@param InController AUAEPlayerController
function UObserverProbeComponent:OnNormalPlayerLogin(InController) end

---@param Exiting APlayerController
function UObserverProbeComponent:OnPlayerRealExit(Exiting) end

function UObserverProbeComponent:CollectAllPlayerInfo() end

function UObserverProbeComponent:CollectFiringPlayerInfo() end

function UObserverProbeComponent:SyncPlayerStaticInfo() end

---@param InPlayerKey number
function UObserverProbeComponent:OnPlayerFiringStart(InPlayerKey) end

---@param InPlayerKey number
function UObserverProbeComponent:OnPlayerFiringStop(InPlayerKey) end
