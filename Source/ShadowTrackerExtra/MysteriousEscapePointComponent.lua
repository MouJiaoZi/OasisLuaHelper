---@meta

---@class UMysteriousEscapePointComponent: UGameModeBaseComponent
---@field MysteriousEscapePointActiveCircleIndex number
---@field MysteriousEscapePointTerminateCircleIndex number
---@field MysteriousEscapePointPayCashID number
---@field MysteriousEscapePointPayCashCount number
local UMysteriousEscapePointComponent = {}

function UMysteriousEscapePointComponent:OnGameEnterFight() end

function UMysteriousEscapePointComponent:OnGameEnterFinish() end

---@param CircleIndex number
---@param MaxCircleIndex number
---@param CircleStatus number
function UMysteriousEscapePointComponent:OnCircleStateChanged(CircleIndex, MaxCircleIndex, CircleStatus) end

---@param InTargetController APlayerController
---@param InEscapePointID number
function UMysteriousEscapePointComponent:TriggerPlayerPayEscapeCash(InTargetController, InEscapePointID) end

---@param InTargetController APlayerController
---@param InEscapePointID number
function UMysteriousEscapePointComponent:TriggerPlayerEvacuate(InTargetController, InEscapePointID) end

---@param InMysteriousEscapePoint AActor
function UMysteriousEscapePointComponent:TriggerMysteriousEscapePointInit(InMysteriousEscapePoint) end
