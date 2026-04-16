---@meta

---@class FEmegencyTaskUIConfig
---@field MapIndex number
---@field RangeMin number
---@field RangeMax number
FEmegencyTaskUIConfig = {}


---@class UEmeregencyTaskUI: UUAEUserWidget
---@field DecentRate number
---@field Step number
---@field StepRemainDuration number
---@field HoldDuration number
---@field CurrentProgress number
---@field bHasEnded boolean
---@field ConfigMap ULuaMapHelper<number, FEmegencyTaskUIConfig>
---@field DisarmUIPanelArray ULuaArrayHelper<UWidget>
local UEmeregencyTaskUI = {}

function UEmeregencyTaskUI:OnGoalReached() end

function UEmeregencyTaskUI:OnStepReset() end

function UEmeregencyTaskUI:OnDisarmed() end

---@param bIsOut boolean
---@param CellWidget UWidget
function UEmeregencyTaskUI:OnInDisarmRange(bIsOut, CellWidget) end

---@param percentage number
function UEmeregencyTaskUI:OnUpdateDisarm(percentage) end

---@return FVector
function UEmeregencyTaskUI:GetBarRightPosition() end

function UEmeregencyTaskUI:GetDisarmUIPanelArrayBP() end

function UEmeregencyTaskUI:OnStep() end

function UEmeregencyTaskUI:OnStartProgress() end
