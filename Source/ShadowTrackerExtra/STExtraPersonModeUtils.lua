---@meta

---@class EPersonPriority
---@field CustomLower number @程序功能优先级-更低
---@field CustomLow number @程序功能优先级-低
---@field CustomNormal number @程序功能优先级-中
---@field CustomHigh number @程序功能优先级-高
---@field CustomHigher number @程序功能优先级-更高
---@field LockLower number @锁优先级-更低
---@field LockLow number @锁优先级-低
---@field LockNormal number @锁优先级-中
---@field LockHigh number @锁优先级-高
---@field LockHigher number @锁优先级-更高
EPersonPriority = {}


---@class USTExtraPersonModeUtils: UBlueprintFunctionLibrary
local USTExtraPersonModeUtils = {}

---@param InController ASTExtraPlayerController
---@param InIsFPP boolean
---@param InIsNewFPP boolean
---@param InChannel ECollisionChannel
---@param InTraceDistance number
---@param OutDestinHitPoint FVector
---@param OutDiatance number
---@return boolean
function USTExtraPersonModeUtils:CalculateCameraHitPoint(InController, InIsFPP, InIsNewFPP, InChannel, InTraceDistance, OutDestinHitPoint, OutDiatance) end

---@param InController ASTExtraPlayerController
---@param InIsFPP boolean
---@param InIsNewFPP boolean
---@return FVector
function USTExtraPersonModeUtils:CalculateSourceCameraOffset(InController, InIsFPP, InIsNewFPP) end

---@param InController ASTExtraPlayerController
---@param InIsFPP boolean
---@param InIsNewFPP boolean
---@return FVector
function USTExtraPersonModeUtils:CalculateDestinCameraOffset(InController, InIsFPP, InIsNewFPP) end

---@param InTPPSpringArm UCustomSpringArmComponent
---@param InPoesType number
---@return number
function USTExtraPersonModeUtils:GetTPPCameraOffsetByPose(InTPPSpringArm, InPoesType) end

---@param InController ASTExtraPlayerController
---@param InIsFPP boolean
---@param InIsNewFPP boolean
---@param InDestinHitPoint FVector
---@param InMax FRotator
---@param OutRotatorOffset FRotator
---@param InUpdateSpringArmTime number
---@return boolean
function USTExtraPersonModeUtils:CalculateControlRotatorOffset(InController, InIsFPP, InIsNewFPP, InDestinHitPoint, InMax, OutRotatorOffset, InUpdateSpringArmTime) end

---@param InController ASTExtraPlayerController
---@param InIsFPP boolean
---@param InIsNewFPP boolean
---@param InUpdateSpringArmTime number
function USTExtraPersonModeUtils:SetSwitchPersonControlRotator(InController, InIsFPP, InIsNewFPP, InUpdateSpringArmTime) end

---@param InEnable boolean
function USTExtraPersonModeUtils:SetEnableSwitchPersonControlRotator(InEnable) end

---@return boolean
function USTExtraPersonModeUtils:GetEnableSwitchPersonControlRotator() end

---@return boolean
function USTExtraPersonModeUtils:GetEnableSwitchPersonExceptList() end

---@return number
function USTExtraPersonModeUtils:GetPersonModeMaskValue() end

---@param InFPP boolean
---@param Priority number
---@return number
function USTExtraPersonModeUtils:CalculatePersonModeValue(InFPP, Priority) end

---@param InPersonModeValue number
---@param OutFPP boolean
---@param OutPriority number
---@return boolean
function USTExtraPersonModeUtils:DecodePersonModeValue(InPersonModeValue, OutFPP, OutPriority) end

---@param InOffset number
---@param InPriorityType EPersonPriority
---@return number
function USTExtraPersonModeUtils:GetPersonPriority(InOffset, InPriorityType) end

---@return number
function USTExtraPersonModeUtils:GetCacheRegistResult() end

---@param InCurve UCurveFloat
---@param InValue number
---@param InDefaultTime number
---@param OutTime number
---@param OutValue number
---@param InTolerance number
---@param FindMaxCount number
function USTExtraPersonModeUtils:FindCurveTimeWithValue(InCurve, InValue, InDefaultTime, OutTime, OutValue, InTolerance, FindMaxCount) end

---@param InCameraManager APlayerCameraManager
---@return number
function USTExtraPersonModeUtils:GetCameraManagerLockFOV(InCameraManager) end

---@param InCameraManager APlayerCameraManager
---@return string
function USTExtraPersonModeUtils:GetCameraManagerCameraStyle(InCameraManager) end
