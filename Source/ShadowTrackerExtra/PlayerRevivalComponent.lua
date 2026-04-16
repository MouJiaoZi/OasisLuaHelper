---@meta

---@class FRevivalCardItemPickData
---@field PickUpPlayerID number
---@field DroperPlayerID number
---@field PickupTime number
---@field DroperTime number
---@field PickUpName string
---@field DroperPlayerName string
FRevivalCardItemPickData = {}


---@class UPlayerRevivalComponent: UActorComponent
---@field RevivalCountDownTime number
---@field GotoSpectatingTime number
---@field RevivalGotoSpectatingTips string
---@field StartObserverTime number
---@field FinishRevivalTime number
---@field CurServerRevivalPoint ARevivalPointActor
---@field BePickupTime FDateTime
local UPlayerRevivalComponent = {}

---进入待复活状态
function UPlayerRevivalComponent:EnterRevivalState() end

function UPlayerRevivalComponent:AIEnterRevivalState() end

---退出待复活状态
---@param SaviorKey number
function UPlayerRevivalComponent:LeaveRevivalState(SaviorKey) end

---@param SaviorKey number
function UPlayerRevivalComponent:AILeaveRevivalState(SaviorKey) end

---复活状态tick
---@param DeltaSeconds number
function UPlayerRevivalComponent:TickRevival(DeltaSeconds) end

---设置ID卡拾取状态: true已拾取 false未拾取
---@param InValue boolean
function UPlayerRevivalComponent:SetCaptureIDCardStatus(InValue) end

---获取ID卡拾取状态
---@return boolean
function UPlayerRevivalComponent:GetCaptureIDCardStatus() end

---设置待复活状态剩余时间
---@param InValue number
function UPlayerRevivalComponent:SetRemainingRevivalTime(InValue) end

---获取待复活状态剩余时间
---@return number
function UPlayerRevivalComponent:GetRemainingRevivalTime() end

---玩家被复活时响应函数
---@param SaviorPC ASTExtraPlayerController
function UPlayerRevivalComponent:OnPlayerRevived(SaviorPC) end

---拾取者 拾取ID卡:TargetPlayer是拾取目标
---@param InPickupData FRevivalCardItemPickData
function UPlayerRevivalComponent:CaptureIDCard(InPickupData) end

---@param InPickupData FRevivalCardItemPickData
function UPlayerRevivalComponent:BePickupRevivalCard(InPickupData) end

---@param PlayerKey number
---@return number
function UPlayerRevivalComponent:FindPlayerUIDFromKey(PlayerKey) end

function UPlayerRevivalComponent:OnPlayerExitGame() end

---@param PlayerKey number
function UPlayerRevivalComponent:OnPlayerGotoSpectating(PlayerKey) end

---@param PlayerKey number
function UPlayerRevivalComponent:OnPlayerQuitSpectating(PlayerKey) end

---@return boolean
function UPlayerRevivalComponent:IsInWaittingRevivalState() end

---@param bIsPlayerAlive boolean
function UPlayerRevivalComponent:OnPlayerEscapeWhenGameEnd(bIsPlayerAlive) end

---@param InPos FVector
---@param OutPos FVector
---@return boolean
function UPlayerRevivalComponent:FindNearestPointPos(InPos, OutPos) end
