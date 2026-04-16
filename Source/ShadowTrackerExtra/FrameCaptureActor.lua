---@meta

---@class AFrameCaptureActor: AActor
---@field DownloadCompleteEvent FOnDownloadCompleteEvent
---@field LastUploadFileName string
---@field CacheWeapons ULuaArrayHelper<ASTExtraWeapon>
---@field PastWeaponShootTime number
---@field OutOfCombatTime number
---@field KillNumThreshold number
---@field AlivePlayers number
---@field IsEnableCapture boolean
---@field RealFilePath string
local AFrameCaptureActor = {}

function AFrameCaptureActor:CreateCapture() end

function AFrameCaptureActor:CaptureFrame() end

function AFrameCaptureActor:OnFrameSaved() end

---@return boolean
function AFrameCaptureActor:UploadCaptureFrames() end

---@param Res number
---@param URL string
function AFrameCaptureActor:C2S_OnFramesUploaded(Res, URL) end

---@return boolean
function AFrameCaptureActor:DownloadCaptureFrames() end

---@param DeltaSeconds number
function AFrameCaptureActor:Tick(DeltaSeconds) end

---@param InHitActor AActor
---@param ImpactPosDistanceToWeapon number
---@param Player APawn
function AFrameCaptureActor:OnBulletHit(InHitActor, ImpactPosDistanceToWeapon, Player) end

function AFrameCaptureActor:SetUploadPath() end

---@param FullName string
---@return string
function AFrameCaptureActor:GetSubPath(FullName) end

---@return string
function AFrameCaptureActor:GenerateFileFullPath() end
