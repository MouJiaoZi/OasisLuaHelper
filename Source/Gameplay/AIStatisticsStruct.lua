---@meta

---@class FAIDeliveryFlow
---@field BattleID number
---@field AIUID number
---@field PlayerUID number
---@field ExpectStartTime number
---@field AIType number
---@field Status number
---@field FlowID number
FAIDeliveryFlow = {}


---@class FGameEventFlowHostInfo
---@field OpenId string
---@field PlatId number
---@field AreaId number
---@field ZoneId string
---@field Uid number
FGameEventFlowHostInfo = {}


---@class FGameEventFlowItem
---@field TriggerInfo FGameEventFlowHostInfo
---@field BattleId number
---@field GameTimeElapsed number
---@field EventType string
---@field MajorIntValues1 number
---@field MajorIntValues2 number
---@field MajorIntValues3 number
---@field MajorStringValues1 string
---@field MajorStringValues2 string
---@field MajorStringValues3 string
---@field ExtendedData string
FGameEventFlowItem = {}


---@class FAIstrategyPlayerInfo
---@field playerInfo ULuaArrayHelper<number>
---@field ReportItems ULuaMapHelper<string, number>
---@field PlayerLoc ULuaArrayHelper<number>
FAIstrategyPlayerInfo = {}


---@class FAIstrategyPlayerTeam
---@field teamMember ULuaArrayHelper<FAIstrategyPlayerInfo>
FAIstrategyPlayerTeam = {}


---@class FAIStrategyAITeam
---@field teamMember ULuaArrayHelper<number>
FAIStrategyAITeam = {}


---@class FAIStrategySuperAIInfo
---@field aiInfo ULuaArrayHelper<number>
---@field AILoc ULuaArrayHelper<number>
FAIStrategySuperAIInfo = {}


---@class FAIStrategySuperAITeam
---@field teamMember ULuaArrayHelper<FAIStrategySuperAIInfo>
FAIStrategySuperAITeam = {}


---@class FAIStrategyMidDropResultData
---@field DropSuccess boolean
---@field TargetUID number
---@field AIUID number
---@field GameTime number
---@field FlowID number
---@field Phase number
FAIStrategyMidDropResultData = {}


---@class FAIStrategyMidSuperAIKilledData
---@field KilledInfo ULuaArrayHelper<number>
FAIStrategyMidSuperAIKilledData = {}


---@class FAIStrategyInfo
---@field ts number
---@field circle number
---@field battleid number
---@field mapid number
---@field submodegroup number
---@field rai number
---@field fai number
---@field teams ULuaArrayHelper<FAIstrategyPlayerTeam>
---@field aiteams ULuaArrayHelper<FAIStrategyAITeam>
---@field superaiteams ULuaArrayHelper<FAIStrategyAITeam>
---@field superaiteamsinfo ULuaArrayHelper<FAIStrategySuperAITeam>
---@field midsuperairesult ULuaArrayHelper<FAIStrategyMidDropResultData>
---@field teamstructureaicurrent ULuaMapHelper<string, number>
---@field teamstructureairemain ULuaMapHelper<string, number>
---@field midsuperaikilled ULuaArrayHelper<FAIStrategyMidSuperAIKilledData>
FAIStrategyInfo = {}


---@class FAIStatisticKnockDownInfo
---@field PlayerType number
---@field KONumber number
FAIStatisticKnockDownInfo = {}


---@class FAISamplingGlobalInfo
---@field CircleIndex number
---@field GameElapsedTime number
---@field RealAICount number
---@field FakeAICount number
---@field AvailableAICount number
---@field MLAICount number
---@field ScheduledCount number
---@field BoundedCount number
---@field DeliveredCount number
---@field InteractedCount number
---@field FailedCount number
---@field ServedCount number
---@field InterceptedCount number
---@field DeliveryRemainingTime number
FAISamplingGlobalInfo = {}


---@class FAISamplingIndividualInfo
---@field OpenId string
---@field UID number
---@field TotalPlayerDamage number
---@field TotalAIDamage number
---@field TotalKillPlayerCount number
---@field TotalKillAICount number
---@field TotalAssistCount number
---@field ScheduledCount_BT number
---@field ScheduledCount_ML number
---@field BoundedCount_BT number
---@field BoundedCount_ML number
---@field BoundedWaveCount number
---@field DeliveredCount_BT number
---@field DeliveredCount_ML number
---@field InteractedCount_BT number
---@field InteractedCount_ML number
---@field FailedCount_BT number
---@field FailedCount_ML number
---@field ServedCount_BT number
---@field ServedCount_ML number
---@field InterceptedCount_BT number
---@field InterceptedCount_ML number
---@field TotalReceivedDamage number
---@field TotalReceivedDamage_AI number
---@field OverallMoveDistance number
---@field TotalHealPoint number
---@field ActiveBoundedCount number
---@field ActiveLongestBoundedTime number
FAISamplingIndividualInfo = {}


---@class FAISamplingTeamInfo
---@field TeamId number
---@field TeamDeliveredCount number
---@field TeamDeliveredWaveCount number
---@field Members ULuaArrayHelper<FAISamplingIndividualInfo>
FAISamplingTeamInfo = {}


---@class FAISamplingReportInfo
---@field GlobalInfo FAISamplingGlobalInfo
---@field Teams ULuaArrayHelper<FAISamplingTeamInfo>
FAISamplingReportInfo = {}
