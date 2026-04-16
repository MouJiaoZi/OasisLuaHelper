---@meta

---@class UCampModeCompBase: UGameModeBaseComponent
---@field CampActorPath string
---@field CampType number
---@field UseCampModeName boolean
---@field DefaultCampModeName string
---@field CampModeNameMap ULuaMapHelper<number, string>
---@field CampActorList ULuaArrayHelper<ACampActor>
---@field DeadCampQueue ULuaArrayHelper<number>
---@field RealCampNum number @Actual login player camp. think about 4 camp but only 2 camp player login after fighting.
local UCampModeCompBase = {}

function UCampModeCompBase:Init() end

---@return number
function UCampModeCompBase:GetCampType() end

function UCampModeCompBase:OnGameModeInitFinished() end

function UCampModeCompBase:CreateCampActor() end

---@param Params FGameModeStateChangedParams
function UCampModeCompBase:OnHandleGameModeStateChanged(Params) end

---@param InTeamID number
function UCampModeCompBase:OnTeamBattleResult(InTeamID) end

---@param InTeamIDList ULuaArrayHelper<number>
function UCampModeCompBase:OnTeamBattleResultBatch(InTeamIDList) end

---@return number
function UCampModeCompBase:GetSurviveCampNum() end

function UCampModeCompBase:UpdateRealCampNum() end

---@param CampID number
---@return number
function UCampModeCompBase:GetReverseDeadOrder(CampID) end

---@param CampID number
function UCampModeCompBase:UpdateCampDead(CampID) end

---@param CampID number
---@return boolean
function UCampModeCompBase:IsWinCamp(CampID) end

---@return boolean
function UCampModeCompBase:CheckGameEnd() end

---@param CampID number
function UCampModeCompBase:GMKillAllPlayer(CampID) end
