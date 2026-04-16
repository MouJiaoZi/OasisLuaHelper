---@meta

---@class UChasingBar: UUAEUserWidget
---@field IsNeedClearProgressBar boolean
---@field BlueCircleMovingCountDownText string
---@field PlayerEscapeProgress number
---@field IsPlayerOutBlueCircleCurrently boolean
---@field PlayerPosition number
---@field IsRefreshCircleDistance boolean
---@field IsOBMode boolean
local UChasingBar = {}

---@param CurPawn APawn
---@return boolean
function UChasingBar:IsPlayerInWhiteCircle(CurPawn) end

---@param CurPawn APawn
---@return boolean
function UChasingBar:IsPlayerOutBlueCircle(CurPawn) end

---@return boolean
function UChasingBar:IsBlueCircleAppearAndCountDown() end

function UChasingBar:BlueCirclePreMoveCountDown() end

---@return boolean
function UChasingBar:IsBlueCircleMoving() end

function UChasingBar:OnCountDownTextInvisible() end

function UChasingBar:OnCircleNotCountDown() end

function UChasingBar:OnPlayerEnterExitBlueCircle() end

function UChasingBar:CleanTheProgressBar() end

function UChasingBar:UpdateCountDownText() end

---@return number
function UChasingBar:CalPlayerEscapePercent() end

function UChasingBar:CheckToCleanProgress() end

function UChasingBar:PlayerEscapePercentC() end

function UChasingBar:ShowCircleDistanceC() end

function UChasingBar:CountDownTextChangeToCritical() end
