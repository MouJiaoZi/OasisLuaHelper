---@meta

---@class FSpectatorPawnOpData
---@field CurMoveSpeedLevel number
---@field CurRotateSpeedLevel number
---@field CurMaxSpeed number
---@field CurAcceleration number
---@field CurDeceleration number
---@field CurAirPhotoPitchRotLevel number
---@field CurUpDownScale number
FSpectatorPawnOpData = {}


---@class ASTSpectatorPawn: ASpectatorPawn
---@field RunSpeedScale number
---@field WalkSpeedScale number
---@field bIsRunning boolean
---@field bIsWalking boolean
---@field SpeedLevelConfig ULuaArrayHelper<number>
---@field RotSpeedLevelConfig ULuaArrayHelper<number>
---@field AirPhotoPichRotSpeedLevelConfig ULuaArrayHelper<number>
---@field bUseDefaultMovementAndCameraParams boolean
---@field bIgnoreFellOutOfWorld boolean
---@field BackUpAcceleration number
---@field BackUpDeceleration number
---@field BackUpCameraRotationLagSpeed number
---@field DefaultSpectatorOpData FSpectatorPawnOpData
---@field AirPhotoSpecatorOpData FSpectatorPawnOpData
local ASTSpectatorPawn = {}

---@param pc AUAEPlayerController
function ASTSpectatorPawn:OnRepIsObserve(pc) end

---@param IsEagleWatch boolean
function ASTSpectatorPawn:OnRepIsEagleWatch(IsEagleWatch) end

---@return number
function ASTSpectatorPawn:GetSpeedLevel() end

---@return number
function ASTSpectatorPawn:GetRotSpeedLevel() end

---@return number
function ASTSpectatorPawn:GetAirPhotoPitchRotSpeedLevel() end

---@param inLevel number
function ASTSpectatorPawn:SetSpeedLevel(inLevel) end

---@param inLevel number
function ASTSpectatorPawn:SetRotSpeedLevel(inLevel) end

function ASTSpectatorPawn:SetToDefaultSpectorPawnOpData() end

function ASTSpectatorPawn:SetToAirPhotoSpectorPawnOpData() end

function ASTSpectatorPawn:CheckUseBackupMovementAndCameraParams() end

function ASTSpectatorPawn:UpdateMovementComponentMaxSpeed() end

function ASTSpectatorPawn:OnStartRunning() end

function ASTSpectatorPawn:OnStopRunning() end

function ASTSpectatorPawn:OnStartWalking() end

function ASTSpectatorPawn:OnStopWalking() end

---@param AxisValue number
function ASTSpectatorPawn:MoveUp(AxisValue) end

function ASTSpectatorPawn:OnSpeedUpLevel() end

function ASTSpectatorPawn:OnSpeedDownLevel() end

function ASTSpectatorPawn:OnSpeedResetLevel() end

function ASTSpectatorPawn:OnRotSpeedUpLevel() end

function ASTSpectatorPawn:OnRotSpeedDownLevel() end

function ASTSpectatorPawn:OnRotSpeedResetLevel() end

function ASTSpectatorPawn:OnAirPhotoPitchRotUpLevel() end

function ASTSpectatorPawn:OnAirPhotoPitchRotDownLevel() end

function ASTSpectatorPawn:OnAirPhotoPitchRotResetLevel() end

function ASTSpectatorPawn:InitDefaultSpectorPawnOpData() end

---@param opData FSpectatorPawnOpData
function ASTSpectatorPawn:SetSpectorPawnOpData(opData) end

function ASTSpectatorPawn:OnPressButtonLeftShift() end

function ASTSpectatorPawn:OnPressButtonLeftCtrl() end

---@param PlayerKey number
---@param bIsNewObserve boolean
function ASTSpectatorPawn:ObservePlayer(PlayerKey, bIsNewObserve) end

function ASTSpectatorPawn:BPOnToggleBackUpMovementAndCameraParams() end

function ASTSpectatorPawn:EnableMotionBlur() end

---@param InAmount number
---@param InMax number
---@param InPerObjSize number
function ASTSpectatorPawn:SetMotionBlurParams(InAmount, InMax, InPerObjSize) end
