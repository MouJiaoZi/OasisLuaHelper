---@meta

---@class ESuspiciousInfoThresholdType
---@field ESusThresHold_ToLobby number
---@field ESusThresHold_ToRecord number
---@field ESusThresHold_ToPunish number
---@field ESusThresHold_ToPunish2 number
---@field ESusThresHold_ToPunish3 number
---@field ESusThresHold_ToXpCall number
---@field ESusThresHold_ToLobbyRestrict number
---@field ESusThresHold_ToRecordRestrict number
---@field ESusThresHold_ToPunishRestrict number
---@field ESusThresHold_ToPunish2Restrict number
---@field ESusThresHold_ToPunish3Restrict number
---@field ESusThresHold_ToXpCallRestrict number
---@field ESusThresHold_ToPunishExtremelyRestrict number
---@field ESusThresHold_ToSkynet number
---@field ESusThresHold_ToSkynetRestrict number
---@field ESusThresHold_Max number
ESuspiciousInfoThresholdType = {}


---@class FPlayerPunishInfo
---@field bPunished boolean
---@field PunishSchemeNum number
---@field TotalPunishTime number
---@field PunishInfo ULuaMapHelper<string, number>
FPlayerPunishInfo = {}


---收集可疑信息,并上报
---@class USuspiciousInfoHelper: UBlueprintFunctionLibrary
local USuspiciousInfoHelper = {}

---@param uid number
---@param scheme FGameplayTag
---@return boolean
function USuspiciousInfoHelper:Report(uid, scheme) end

---@param scheme FGameplayTag
---@param restr boolean
---@return number
function USuspiciousInfoHelper:GetValue(scheme, restr) end

---@param uid number
---@return boolean
function USuspiciousInfoHelper:IsHighlySuspicious(uid) end

---@param uid number
---@return boolean
function USuspiciousInfoHelper:IsExtremelySuspicious(uid) end

---@param uid number
---@param scheme FGameplayTag
---@return number
function USuspiciousInfoHelper:IsReachPunishThreshold(uid, scheme) end

---@param uid number
---@param OutPlayerPunishInfo FPlayerPunishInfo
---@return boolean
function USuspiciousInfoHelper:GetPlayerSuspiciousInfo(uid, OutPlayerPunishInfo) end

function USuspiciousInfoHelper:StartRecording() end

---@param uid number
function USuspiciousInfoHelper:RemovePlayer(uid) end

---@param scheme string
---@param value number
function USuspiciousInfoHelper:ProcessSchemeInfo(scheme, value) end

---@param scheme FGameplayTag
---@param ThresholdType ESuspiciousInfoThresholdType
---@param value number
function USuspiciousInfoHelper:SetThreshold(scheme, ThresholdType, value) end

---@param scheme FGameplayTag
---@param value number
---@param restr boolean
function USuspiciousInfoHelper:SetThresholdCommonVal(scheme, value, restr) end

---@param scheme FGameplayTag
---@param bInAutoSetRestrict boolean
function USuspiciousInfoHelper:SetThresholdAutoSetRestrict(scheme, bInAutoSetRestrict) end

---@param scheme FGameplayTag
---@param bIsExtremelyRestrict boolean
function USuspiciousInfoHelper:SetThresholdExtremelyRestrict(scheme, bIsExtremelyRestrict) end

---@param scheme FGameplayTag
---@param ReportType number
function USuspiciousInfoHelper:SetReportSkynetType(scheme, ReportType) end

---@param uid number
function USuspiciousInfoHelper:SetRestrictPlayer(uid) end

---@param uid number
function USuspiciousInfoHelper:SetExtremelyRestrictPlayer(uid) end

---@param IgnoreGamemodeIDStr string
function USuspiciousInfoHelper:ParseIgnoreGameModeIDList(IgnoreGamemodeIDStr) end

---@param uid number
---@param scheme FGameplayTag
function USuspiciousInfoHelper:AddPlayerPunishCount(uid, scheme) end

function USuspiciousInfoHelper:Dump() end

---@param uid number
---@param scheme FGameplayTag
function USuspiciousInfoHelper:AddSkynetRecord(uid, scheme) end

---@param uid number
---@param OutSafePolicyFlow ULuaArrayHelper<FDSSafePolicyFlow>
function USuspiciousInfoHelper:GetSkynetRecords(uid, OutSafePolicyFlow) end
