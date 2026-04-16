---@meta

---@class UPawnScannerComponent: USceneComponent
---@field TotalLifeTime number
---@field PerScanCDTime number
---@field bAutoStart boolean
---@field InitialScanRad number
---@field ScanRad number
---@field MapTypeID number
---@field PlayerTypeID number
---@field PlayerTypeIDDuration number
---@field PlayerIconRad number
---@field ScannedPawnClass APawn
---@field IgnorePawnClassArray ULuaArrayHelper<APawn>
---@field SpecialTypeIDMap ULuaMapHelper<APawn, number>
---@field MonsterMapIconTypeID number
---@field MapScanAntiAttributeName string
---@field MapScanAntiAttributeValueThreshold number
---@field bShouldFollowPlayer boolean
---@field ScanRangeMarkRangeType EMarkDispatchRange
---@field ScannedPlayerMarkRangeType EMarkDispatchRange
local UPawnScannerComponent = {}

---@param CenterLocation FVector
---@param Rad number
function UPawnScannerComponent:OnStartScan(CenterLocation, Rad) end

---@param PlayerPawns ULuaArrayHelper<ASTExtraPlayerCharacter>
---@param OwnerPawn ASTExtraPlayerCharacter
---@param AntiScannedPawns ULuaArrayHelper<ASTExtraPlayerCharacter>
function UPawnScannerComponent:OnPlayerScanned(PlayerPawns, OwnerPawn, AntiScannedPawns) end

---@param Owner AActor
---@param ScannedActor AActor
---@return number
function UPawnScannerComponent:GetMarkCustomState(Owner, ScannedActor) end

function UPawnScannerComponent:StartScan() end

function UPawnScannerComponent:DoScan() end

function UPawnScannerComponent:StopScan() end
