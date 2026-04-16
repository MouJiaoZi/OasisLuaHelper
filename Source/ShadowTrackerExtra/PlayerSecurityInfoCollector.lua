---@meta

---@class UPlayerSecurityInfoCollector: UActorComponent, IObjectPoolInterface
---@field EnergyItemIDList ULuaArrayHelper<number>
---@field EnergySpeedUpPhaseIndexList ULuaArrayHelper<number>
---@field bEnableDetailFlowLog boolean
---@field bEnableDetailHurtFlowLog boolean
---@field CurCircleFlow FClientCircleFlow
---@field CollectCircleFlow FClientCircleFlow
---@field CurHurtFlow FHurtFlow
---@field JumpFlow FClientJumpFlow
---@field SecPlayerKillFlow FClientSecPlayerKillFlow
---@field MaxReportMrpcsFlowINum number
---@field bFatalDamageNeedResetHealth boolean
local UPlayerSecurityInfoCollector = {}

function UPlayerSecurityInfoCollector:StartOnPlane() end

function UPlayerSecurityInfoCollector:PlayerCanJump() end

function UPlayerSecurityInfoCollector:EnterJumping() end

function UPlayerSecurityInfoCollector:EnterParachute() end

function UPlayerSecurityInfoCollector:ExitParachute() end

---@param SafeZoneTime number
function UPlayerSecurityInfoCollector:HandleCharacterSafeZoneTips(SafeZoneTime) end

---@param BlueCirclePreWarningTime number
function UPlayerSecurityInfoCollector:HandleCharacterBlueCirclePreWarning(BlueCirclePreWarningTime) end

---@param BlueCircleRunTime number
function UPlayerSecurityInfoCollector:HandleCharacterBlueCircleRun(BlueCircleRunTime) end

---@param BlueCircleSync FVector
---@param WhiteCircleSync FVector
---@param Index number
function UPlayerSecurityInfoCollector:HandleCharacterCircleSizeAndPosition(BlueCircleSync, WhiteCircleSync, Index) end

---@param Index number
function UPlayerSecurityInfoCollector:HandleSyncCircleInfo(Index) end

---@param Index number
function UPlayerSecurityInfoCollector:HandleCharacterCircleWaveOver(Index) end

---@param nowActor AActor
---@param attrName string
---@param valueDelta number
---@param resultValue number
function UPlayerSecurityInfoCollector:HandleCharacterAttrChangedWithDetail(nowActor, attrName, valueDelta, resultValue) end
