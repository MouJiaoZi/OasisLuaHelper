---@meta

---@class FAsianOnRepTeamInfo : ULuaSingleDelegate
FAsianOnRepTeamInfo = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAsianOnRepTeamInfo:Bind(Callback, Obj) end

---执行委托
function FAsianOnRepTeamInfo:Execute() end


---@class FGMShowTargetInfoDelegate : ULuaSingleDelegate
FGMShowTargetInfoDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGMShowTargetInfoDelegate:Bind(Callback, Obj) end

---执行委托
function FGMShowTargetInfoDelegate:Execute() end


---@class AAsianGamesGameState: ASTExtraGameStateBase
---@field AsianGamesTeamMatchStageScoreChanged FAsianGamesMatchStageDelegate
---@field AsianGamesTeamMatchStageChanged FAsianGamesMatchStageDelegate
---@field AsianGamesMatchStageChanged FAsianGamesMatchStageDelegate
---@field AsianGamesFirstTeamFinish FAsianGamesTeamStateDelegate
---@field AsianGamesCountDownDelegate FAsianGameSpecialTargetDelegate
---@field AsianSpecTargetDestroyDelegate FAsianSpecTargetDestroyDelegate
---@field MatchStartTime number
---@field MatchTime number
---@field TeamOrder ULuaMapHelper<number, number>
---@field PlayerMatchOver ULuaArrayHelper<number>
---@field TeamMatchStageScore ULuaMapHelper<number, number>
---@field MatchStage ULuaMapHelper<number, number>
---@field ContestantsLocMarkID number
---@field TeamCurrentInfo ULuaArrayHelper<FAsianTeamInfo>
---@field TeamCurrentInfoLowFrequency ULuaArrayHelper<FAsianTeamInfoLowFrequency>
---@field TeamCurrentInfoHighFrequency ULuaArrayHelper<FAsianTeamInfoHighFrequency>
---@field CheckPointInfos ULuaArrayHelper<FAsianCheckPointInfo>
---@field AsianOnRepTeamInfo FAsianOnRepTeamInfo
---@field GMShowTargetInfoDelegate FGMShowTargetInfoDelegate
---@field MappingTeamIDAndIndex ULuaMapHelper<number, number>
---@field CitySubdivisionTrigTime ULuaArrayHelper<number>
---@field CitySubdivisionTrigDelayTime ULuaArrayHelper<number>
---@field CurSubdivisionIndex number
---@field SpecialTargetStageCountDown ULuaArrayHelper<number>
---@field StageTrigHandleList ULuaArrayHelper<FTimerHandle>
---@field bUseStaticTime boolean
---@field OnSpecialTargetStageDelegate FSpecialTargetStageDelegate
---@field OnWeaponBulletHitDelegate FOnWeaponBulletHitDelegate
---@field CheckPointsIDList ULuaArrayHelper<number>
---@field AKEventPath_SubdivisionIndex ULuaArrayHelper<string>
---@field Pre_AKEventPath_SubdivisionIndex ULuaArrayHelper<string>
---@field Tips_SubdivisionIndex ULuaArrayHelper<number>
---@field Pre_Tips_SubdivisionIndex ULuaArrayHelper<number>
---@field AthleteRealTimeTlogPeriod number
---@field VehicleRealTimeTlogPeriod number
---@field AthleteRealTimeTlogWaitTime number
---@field VehicleRealTimeTlogWaitTime number
---@field bTrainingToggle boolean
local AAsianGamesGameState = {}

function AAsianGamesGameState:OnRep_MatchTime() end

---@param TeamID number
---@return number
function AAsianGamesGameState:GetTeamNeedTargetScore(TeamID) end

---@param TeamID number
---@param Points number
---@param TeamMatchStage number
function AAsianGamesGameState:TeamIncreasePoints(TeamID, Points, TeamMatchStage) end

---@param PlayerKey number
function AAsianGamesGameState:PersonMatchOver(PlayerKey) end

---@param TeamID number
function AAsianGamesGameState:TeamMatchOver(TeamID) end

---@param TeamChangeStageInfo FTeamChangeStageInfo
function AAsianGamesGameState:TeamChangeStage(TeamChangeStageInfo) end

---@param PC ASTExtraPlayerController
---@return EAsianGamesTeamColor
function AAsianGamesGameState:GetTeamColorByController(PC) end

---@param TeamID number
---@return number
function AAsianGamesGameState:GetTeamCurrentPoints(TeamID) end

---@param TeamID number
---@return number
function AAsianGamesGameState:GetTeamTotalPoints(TeamID) end

---@param TeamID number
---@return number
function AAsianGamesGameState:GetSinglePenaltyScore(TeamID) end

---@param TeamID number
---@return number
function AAsianGamesGameState:GetTeamStage(TeamID) end

---@param PlayerKey number
---@return boolean
function AAsianGamesGameState:IsPersonMatchOver(PlayerKey) end

---@param TeamID number
---@return boolean
function AAsianGamesGameState:IsTeamMatchOver(TeamID) end

---@param TeamID number
---@return EAsianGamesTeamColor
function AAsianGamesGameState:GetTeamColor(TeamID) end

function AAsianGamesGameState:OnRep_TeamCurrentInfo() end

function AAsianGamesGameState:OnRep_TeamInfoLowFrequency() end

function AAsianGamesGameState:OnRep_TeamInfoHighFrequency() end

---@param TeamID number
---@param TeamInfo FAsianTeamInfo
---@return boolean
function AAsianGamesGameState:GetTeamInfoByTeamID(TeamID, TeamInfo) end

function AAsianGamesGameState:OnRep_SpecialTargetStageCountDown() end

function AAsianGamesGameState:OnRep_CurSubdivisionIndex() end

---@param ID number
---@param Path string
function AAsianGamesGameState:MulticastRPCClientTips(ID, Path) end

---@param ID number
---@param Path string
function AAsianGamesGameState:ReceiveMulticastRPCClientTips(ID, Path) end

---@param Stage number
---@param DelayTime number
function AAsianGamesGameState:CreateTrigTimerHandle(Stage, DelayTime) end

---@param Stage number
---@param DelayTime number
function AAsianGamesGameState:BP_CreateTrigTimerHandle(Stage, DelayTime) end

---@param Stage number
---@param CheckPointID number
---@param TeamID number
function AAsianGamesGameState:BroadcastTeamMatchStageScore(Stage, CheckPointID, TeamID) end

---@param Stage number
---@param CheckPointID number
---@param TeamID number
function AAsianGamesGameState:BroadcastTeamMatchStage(Stage, CheckPointID, TeamID) end

---@param Stage number
---@param CheckPointID number
---@param TeamID number
function AAsianGamesGameState:BroadcastMatchStage(Stage, CheckPointID, TeamID) end

---@param TeamID number
function AAsianGamesGameState:BroadcastFirstOverTeam(TeamID) end

---@param Stage number
function AAsianGamesGameState:GMOnSpecialTargetStageDelegate(Stage) end

function AAsianGamesGameState:OnAllPlayerLeavePlane() end

---@param index number
---@return string
function AAsianGamesGameState:GetCorrectAKEvent(index) end

---@param index number
---@return string
function AAsianGamesGameState:GetCorrectPreAKEvent(index) end

---@param TeamChangeStageInfo FTeamChangeStageInfo
function AAsianGamesGameState:RealTimeGuidePointTeamTlog(TeamChangeStageInfo) end

---@param PlayerKey number
function AAsianGamesGameState:RealTimeParachuteTlog(PlayerKey) end

function AAsianGamesGameState:RealTimePlayerPositionTlog() end

function AAsianGamesGameState:RealTimeVehiclePositionTlog() end

---@param TargetType number
---@param Points number
---@param TeamID number
function AAsianGamesGameState:BP_AsianSpecialTargetDestroy(TargetType, Points, TeamID) end
