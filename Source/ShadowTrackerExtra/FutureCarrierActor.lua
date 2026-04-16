---@meta

---@class AFutureCarrierActor: AActivityBaseActor
---@field RelevantZDiff number
---@field bDestroyWhenCarrierOnGround boolean
---@field bNeedSleep boolean
---@field bNeedCleanState boolean
---@field CanOpenParachuteHeight number
---@field ForceOpenParachuteHeight number
---@field CloseParachuteHeight number
---@field ParaMoveDistance number
local AFutureCarrierActor = {}

---@param bIsSleep boolean
function AFutureCarrierActor:DisableWhenNoHuman(bIsSleep) end

---@param Cpnt UPrimitiveComponent
function AFutureCarrierActor:TriggerComponentToCheckOverlap(Cpnt) end

---@param Character ASTExtraBaseCharacter
function AFutureCarrierActor:EjectOutCarrier(Character) end

function AFutureCarrierActor:UnPossessAction() end

function AFutureCarrierActor:OnShipPreLeave() end

---@param bIsAdd boolean
---@param character ASTExtraBaseCharacter
function AFutureCarrierActor:OnPlayerInteractive(bIsAdd, character) end
