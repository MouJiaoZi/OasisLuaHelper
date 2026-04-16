---@meta

---@class FShootingBehaviorConfig
---@field MaxShootBulletsNum number
---@field TotalTime number
---@field bEnableManuallyStop boolean
FShootingBehaviorConfig = {}


---射击行为模式
---@class UShootingBehaviorPatternBase: UObject
---@field ShootingBehaviorSequenceConfigList ULuaArrayHelper<FShootingBehaviorConfig>
---@field bLoopBehaviorSequence boolean
---@field SBPColdCD number
---@field bEnableManualStopFireInSequnce boolean
---@field MinShootInterval number
---@field OnShootingBehaviorPatternSwitchEnterDelegate FOnShootingBehaviorPatternSwitchEnter
---@field OnShootingBehaviorPatternSwitchLeaveDelegate FOnShootingBehaviorPatternSwitchLeave
---@field BehaviorSequenceTotalTime number
---@field BehaviorSequenceTotalBulletNum number
---@field bHasStartedBehavior boolean
---@field BehaviorStartedTime number
---@field LastShootTime number
---@field CurTotalBulletNumShouldShoot number
---@field CurTotalBulletNumHasShot number
local UShootingBehaviorPatternBase = {}

---@param ShootWeapon ASTExtraShootWeapon
function UShootingBehaviorPatternBase:Init(ShootWeapon) end

function UShootingBehaviorPatternBase:OnSwitchLeave() end

function UShootingBehaviorPatternBase:OnSwitchEnter() end

function UShootingBehaviorPatternBase:StartBehavior() end

function UShootingBehaviorPatternBase:StopBehavior() end

function UShootingBehaviorPatternBase:ResetData() end

---@return boolean
function UShootingBehaviorPatternBase:CheckCanShoot() end

---@return number
function UShootingBehaviorPatternBase:GetShootInterval() end

function UShootingBehaviorPatternBase:ProcessShoot() end

---@param bIsFirstShot boolean
function UShootingBehaviorPatternBase:UpdateBehavior(bIsFirstShot) end

---@return boolean
function UShootingBehaviorPatternBase:CheckInColdCD() end

---@param bIsPressingFireBnt boolean
---@return boolean
function UShootingBehaviorPatternBase:CheckAutoStopShoot(bIsPressingFireBnt) end

---@return boolean
function UShootingBehaviorPatternBase:CheckMustStopShoot() end

---@param bInHasManualStopFire boolean
---@return boolean
function UShootingBehaviorPatternBase:CheckCanManualStopShoot(bInHasManualStopFire) end

function UShootingBehaviorPatternBase:RestartBehavior() end

---@return boolean
function UShootingBehaviorPatternBase:CheckIsPressingFireBnt() end

---@param BulletNum number
---@return number
function UShootingBehaviorPatternBase:GetShootingTotalTimeByBulletNum(BulletNum) end
