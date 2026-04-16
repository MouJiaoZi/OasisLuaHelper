---@meta

---@class EGenericReportID
---@field None number
---@field GD_VictimOnPostDamageDelay number
---@field GD_VictimOnPostDamageDis number
---@field GD_SkillUseDelay number
---@field GD_SwitchPoseFailRate number
---@field GD_HeadProbeSuccessCount number
---@field GD_HeadProbeCount number
---@field GD_JumpVaultFailCount number
---@field GD_AutoPickFirstSpan number
---@field GD_AutoPickSeqSpan number
---@field GD_PerspectiveChangeFail number
---@field GD_ScopeOpenFailCount number
---@field GD_WeaponShootInterval number
---@field GD_WeaponDeviation number
---@field GD_WeaponRecoilPitch number
---@field GD_WeaponRecoliYaw number
---@field GD_LongFrameTimeCount number
---@field GD_WeaponNoRecoliCount number
---@field GD_NewSkillUseDelay number
EGenericReportID = {}


---@class FGenericReportData
---@field ReportID number
---@field Data ULuaArrayHelper<number>
---@field ExtraInfo string
FGenericReportData = {}


---@class FPlayerStore
FPlayerStore = {}


---@class UGameplayDataReportHelper: UObject
local UGameplayDataReportHelper = {}

---@return boolean
function UGameplayDataReportHelper:IsClient() end

---客户端定期上报统计的数据到 DS
function UGameplayDataReportHelper:UploadGameplayData() end

---@param GenericReportDataArray ULuaArrayHelper<FGenericReportData>
---@param PlayerUID string
function UGameplayDataReportHelper:ParseGenericReportDataArray(GenericReportDataArray, PlayerUID) end

---@param GenericReportData FGenericReportData
---@param PlayerUID string
function UGameplayDataReportHelper:ParseGenericReportData(GenericReportData, PlayerUID) end

function UGameplayDataReportHelper:ClientFlushUpload() end

---@param Item FGenericReportData
function UGameplayDataReportHelper:EnqueueGenericReport(Item) end

function UGameplayDataReportHelper:SendPendingReports() end

function UGameplayDataReportHelper:CustomReport() end

---@param Prefix string
---@return string
function UGameplayDataReportHelper:GetDataToJSON(Prefix) end

---@param Key string
---@return boolean
function UGameplayDataReportHelper:HasJSONKey(Key) end

function UGameplayDataReportHelper:Report() end

---上报体验指标到后台
function UGameplayDataReportHelper:ReportClientGameExperienceMetrics() end

function UGameplayDataReportHelper:ReportDSGameExperienceMetrics() end

---@param GameplayDataKey string
---@param GameplayValue number
---@param PlayerUID string
function UGameplayDataReportHelper:ReportGamePlayDataViaDSSafePolicyFlow(GameplayDataKey, GameplayValue, PlayerUID) end

---@param GameplayDataKey string
---@param GameplayValue number
---@param OutDSSafePolicyFlow FDSSafePolicyFlow
---@return boolean
function UGameplayDataReportHelper:FillGameplayDataToDSSafePolicyFlow(GameplayDataKey, GameplayValue, OutDSSafePolicyFlow) end

---@param GameplayDataKey string
---@param GameplayValue number
---@param PlayerUID string
---@param bIsDSData boolean
function UGameplayDataReportHelper:ReportGamePlayDataViaDSBattlePerfMetricFlow(GameplayDataKey, GameplayValue, PlayerUID, bIsDSData) end

---@param GameplayDataKey string
---@param GameplayValue number
---@param OutDSBattlePerfMetricFlow FDSBattlePerfMetricFlow
---@param bIsDSData boolean
---@return boolean
function UGameplayDataReportHelper:FillGameplayDataToDSBattlePerfMetricFlow(GameplayDataKey, GameplayValue, OutDSBattlePerfMetricFlow, bIsDSData) end

function UGameplayDataReportHelper:Debug_ClientAddGameplayData() end

---@param PlayerUID string
function UGameplayDataReportHelper:Debug_FakeReport(PlayerUID) end
