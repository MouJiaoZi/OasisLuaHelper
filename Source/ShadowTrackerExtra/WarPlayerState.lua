---@meta

---@class EWarScoreChangeReason
---@field WarScoreChangeReason_NONE number
---@field WarScoreChangeReason_WHOLETEAMKILLED number
---@field WarScoreChangeReason_SAVETEAMMATE number
---@field WarScoreChangeReason_KNOCKDOWNENEMY number
---@field WarScoreChangeReason_KILLENEMY number
---@field WarScoreChangeReason_PICKUPSCOREITEM number
---@field WarScoreChangeReason_GRABSCORE number
---@field WarScoreChangeReason_MAX number
EWarScoreChangeReason = {}


---@class FWarPlayerStateScore
---@field Rank number
---@field Score number
---@field ScoreChangeReason EWarScoreChangeReason
---@field ScoreChangeCauserPlayerID number
---@field HighestScore number
---@field FollowScore number
FWarPlayerStateScore = {}


---@class AWarPlayerState: ASTExtraPlayerState
---@field RepPlayerStateScore FWarPlayerStateScore
---@field DisplayTipsScore FWarPlayerStateScore
---@field CachePlayerStateScore FWarPlayerStateScore
local AWarPlayerState = {}

function AWarPlayerState:OnRep_PlayerStateScore() end
