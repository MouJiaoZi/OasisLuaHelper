---@meta

---@class FShrinkCircleParam
---@field StartDelay number
---@field ShrinkTime number
---@field ShrinkFromRadius number
---@field ShrinkToRadius number
---@field PoisonDamage number
FShrinkCircleParam = {}


---@class UShrinkManagerComponent: UGameModeBaseComponent
---@field ShrinkStartTime number
---@field ShrinkCircleConfigList ULuaArrayHelper<FShrinkCircleParam>
---@field PoisonDamageCDTime number
---@field ShrinkCircleList ULuaArrayHelper<AShrinkCircleActor>
local UShrinkManagerComponent = {}

---@param ShrinkMetaData UShrinkMetaData
function UShrinkManagerComponent:CacheShrinkMetaData(ShrinkMetaData) end

---@param NewShrinkCircle AShrinkCircleActor
function UShrinkManagerComponent:RegistShrinkCircle(NewShrinkCircle) end

---@param DeRegShrinkCircle AShrinkCircleActor
function UShrinkManagerComponent:UnRegistShrinkCircle(DeRegShrinkCircle) end

function UShrinkManagerComponent:StartShrinkFlow() end

---@param OverFlowTime number
function UShrinkManagerComponent:StartShrink(OverFlowTime) end

---@param OverFlowTime number
function UShrinkManagerComponent:StopShrink(OverFlowTime) end

---@param OverFlowTime number
function UShrinkManagerComponent:ShrinkCurrentStage(OverFlowTime) end

---@param ShrinkSchedule number
function UShrinkManagerComponent:ShrinkCircles(ShrinkSchedule) end

---@param TerminatorTag string
function UShrinkManagerComponent:TerminateShrinkCircle(TerminatorTag) end
