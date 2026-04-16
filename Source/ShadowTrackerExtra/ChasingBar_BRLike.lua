---@meta

---@class UChasingBar_BRLike: UUAEUserWidget
---@field bUseEscapeCountDown boolean
---@field CircleData FCircleData_BRLike
---@field PlayerEscapeProgress number
---@field BlueCircleMovingCountDownText string
---@field IsPlayerOutBlueCircleCurrently boolean
---@field PlayerPosition number
---@field IsRefreshCircleDistance boolean
---@field IsOBMode boolean
---@field IsNeedClearProgressBar boolean
local UChasingBar_BRLike = {}

function UChasingBar_BRLike:CleanTheProgressBar() end

function UChasingBar_BRLike:CountDownTextChangeToCritical() end

function UChasingBar_BRLike:UpdateCountDownText() end

function UChasingBar_BRLike:OnCountDownTextInvisible() end

function UChasingBar_BRLike:OnCircleNotCountDown() end

function UChasingBar_BRLike:OnPlayerEnterExitBlueCircle() end
