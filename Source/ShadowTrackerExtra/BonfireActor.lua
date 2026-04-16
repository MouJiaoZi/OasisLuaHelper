---@meta

---@class ABonfireActor: AUAEBuffApplierActor, ICanReceiveMsgInterface
---@field RemainingLifeTime number
---@field bHasBeenLit boolean
---@field bHasBurnOut boolean
local ABonfireActor = {}

function ABonfireActor:OnRep_HasBeenLit() end

function ABonfireActor:OnRep_HasBurnOut() end

---@param previousRemaining number
function ABonfireActor:OnRep_RemainingLifeTime(previousRemaining) end

function ABonfireActor:OnRep_CurRoastMeat() end

---@param previousRemaining number
function ABonfireActor:RemingLifeTimeChanged(previousRemaining) end

function ABonfireActor:IsBurnOutChanged() end

---@param msg string
---@return string
function ABonfireActor:CastMsg_Implementation(msg) end

function ABonfireActor:RecordBonFireSuccess() end
