---@meta

---@class FCorpsBaseInfo
---@field ID number
---@field CorpsName string
---@field CorpsHeadIconID number
---@field CorpsGrad number
FCorpsBaseInfo = {}


---@class FCorpsDetailInfo
---@field CorpBaseInfo FCorpsBaseInfo
---@field CorpsLiveNumber number
---@field CorpsTotalNumber number
---@field TotalKillNumber number
---@field OnOutGameRealTimeRank number
---@field MaxSurvivalTime number
---@field TotalDamage number
---@field bIsOutGame boolean
FCorpsDetailInfo = {}


---@class FCorpsToPlayerKeyInfo
---@field PlayerKey number
---@field CorpsID number
FCorpsToPlayerKeyInfo = {}


---@class ABattleRoyalCorpsWarGameState: ASTExtraGameStateBase
---@field CorpsInfoArray ULuaArrayHelper<FCorpsBaseInfo>
---@field CachedSortedCorpsDetailList ULuaArrayHelper<FCorpsDetailInfo>
---@field OutGameCorpsDetailList ULuaArrayHelper<FCorpsDetailInfo>
---@field PlayerKeyToCorpsList ULuaArrayHelper<FCorpsToPlayerKeyInfo>
local ABattleRoyalCorpsWarGameState = {}

---@param ID number
---@return FCorpsBaseInfo
function ABattleRoyalCorpsWarGameState:GetCorpsInfoByID(ID) end

function ABattleRoyalCorpsWarGameState:GetSortedCorpsDetailList() end

---@return number
function ABattleRoyalCorpsWarGameState:GetActiveCorpsNum() end

---@return number
function ABattleRoyalCorpsWarGameState:GetTotalCorpsNums() end

---@param bIsGameEnd boolean
---@param bForceOutGame boolean
function ABattleRoyalCorpsWarGameState:ReCalculateCorpsDetailList(bIsGameEnd, bForceOutGame) end

---@param KillerCorpsID number
---@param CorpsID number
function ABattleRoyalCorpsWarGameState:OnCorpsOutGame(KillerCorpsID, CorpsID) end

---@param CorpsID number
function ABattleRoyalCorpsWarGameState:OnCorpsJoinGame(CorpsID) end

function ABattleRoyalCorpsWarGameState:ForceFlushList() end

function ABattleRoyalCorpsWarGameState:OnRepCorpsInfoArray() end

function ABattleRoyalCorpsWarGameState:OnRepCachedSortedCorpsDetailList() end

function ABattleRoyalCorpsWarGameState:OnRepOutGameCorpsDetailList() end

---@param State ABattleRoyalCorpsWarPlayerState
---@return number
function ABattleRoyalCorpsWarGameState:GetPlayerLiveTime(State) end
