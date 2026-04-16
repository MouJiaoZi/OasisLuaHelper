---@meta

---@class eTeamSightMode
---@field Default number
---@field SelectCloseVisibleEnemy number
eTeamSightMode = {}


---@class FTeammateEnemyInfo
FTeammateEnemyInfo = {}


---@class FEnemyDistanceInfo
FEnemyDistanceInfo = {}


---CG30群体视觉组件
---@class UTeamSightSenseComponent: UActorComponent
---@field TraceStartOffset FVector
---@field TraceEndOffset FVector
---@field bChooseNearDeathPlayer boolean
---@field bChoosePlayerHiddenOnVehicle boolean
---@field SensedRadius number
---@field RememberEnemyTime number
---@field ForgetTimeCD number
---@field BlackListForgetTimeCD number
---@field EnemyNumPerPlayer number
---@field CannotChooseNearDeathPlayerTime number
---@field MaxRefreshCD number
---@field ZDistanceScale number
---@field BlackListPawnState ULuaArrayHelper<EPawnState>
---@field SelectEnemyMode eTeamSightMode
---@field MinChangeEnemyDistance number
---@field VisualPerceptionAngle number
---@field RecordInRangePlayers ULuaSetHelper<ASTExtraBaseCharacter>
local UTeamSightSenseComponent = {}

---@param AICtr ABasicAIController
function UTeamSightSenseComponent:FindNearCharacters(AICtr) end

---@param Player ASTExtraBaseCharacter
---@param IsAdd boolean
function UTeamSightSenseComponent:UpdateNearCharacters(Player, IsAdd) end

---@param AICtr ABasicAIController
---@param ChooseAnyOne boolean
function UTeamSightSenseComponent:FindExclusionEnemy(AICtr, ChooseAnyOne) end

---@param AICtr ANewFakePlayerAIController
function UTeamSightSenseComponent:FindEnemyBySightSense(AICtr) end

---@param TeamId number
---@param NewAICtr ANewFakePlayerAIController
function UTeamSightSenseComponent:TeamAIJoin(TeamId, NewAICtr) end

---@param NewAICtr ABasicAIController
function UTeamSightSenseComponent:TeamMonsterAIJoin(NewAICtr) end

---@param TeamId number
function UTeamSightSenseComponent:RefreshAIEnemy(TeamId) end

---@param AICtr ANewFakePlayerAIController
---@param NewEnemy ASTExtraBaseCharacter
function UTeamSightSenseComponent:ClearPlayerSightSense(AICtr, NewEnemy) end

---@param AICtr ANewFakePlayerAIController
---@param NewEnemy ASTExtraBaseCharacter
---@return boolean
function UTeamSightSenseComponent:IsPlayerChooseByTeammate(AICtr, NewEnemy) end
