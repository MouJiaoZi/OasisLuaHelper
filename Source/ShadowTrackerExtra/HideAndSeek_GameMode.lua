---@meta

---@class FSameSerialPlayerStartData
---@field bUsed boolean
---@field BornPointID number
---@field PlayerStarts ULuaArrayHelper<ASTExtraPlayerStart>
FSameSerialPlayerStartData = {}


---@class FWarningCircleData
---@field WarningCircleNum number
---@field WarningCircleAppearTime number
---@field WarningCircleExistTime number
---@field CircleRadius number
FWarningCircleData = {}


---@class FCircleFindHiderRatio
---@field CircleFindRatio ULuaMapHelper<number, number>
FCircleFindHiderRatio = {}


---@class FHideAndSeek_GameRoundEnd : ULuaSingleDelegate
FHideAndSeek_GameRoundEnd = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHideAndSeek_GameRoundEnd:Bind(Callback, Obj) end

---执行委托
function FHideAndSeek_GameRoundEnd:Execute() end


---生化团竞, feishen, 20200714
---@class AHideAndSeek_GameMode: ABRGameModeTeam_DeathMatch
---@field SameSerialPlayerStartsMap ULuaMapHelper<number, FSameSerialPlayerStartData>
---@field UsedSameSerialPlayerStartsMap ULuaMapHelper<number, number>
---@field PositionMax FVector
---@field PositionMin FVector
---@field CircleData ULuaArrayHelper<FWarningCircleData>
---@field CircleFindHiderRatioList ULuaMapHelper<number, FCircleFindHiderRatio>
---@field MoveDistanceProbability number
---@field NotFindProbability number
---@field RevivedProbability number
---@field HiderFlashNum number
---@field HiderBaitNum number
---@field SeekerBallonNum number
---@field SeekerExploreNum number
---@field RevivalStartTime number
---@field RevivalResistTime number
---@field RevivalInteractionTime number
---@field RevivalNum number
---@field InitialSeekerNum number
---@field MaxRoundCanJoin number
---@field RoundStopJoinTime number
---@field AdvanceTime number
---@field CrazyStartTime number
---@field SpeedUpBuffTime number
---@field SkillBuffTime number
---@field HideAndSeek_GameRoundEnd FHideAndSeek_GameRoundEnd
---@field AIHiderController AAIController
---@field AISeekerController AAIController
local AHideAndSeek_GameMode = {}

---@param NewPlayer AController
function AHideAndSeek_GameMode:RestartPlayer(NewPlayer) end

---@param PlayerKey number
---@param PlayerType string
function AHideAndSeek_GameMode:NotifyPrePlayerExit(PlayerKey, PlayerType) end

function AHideAndSeek_GameMode:GenerateWarningCircle() end

function AHideAndSeek_GameMode:DestroyWarningCircle() end

function AHideAndSeek_GameMode:GameRoundEnd() end
