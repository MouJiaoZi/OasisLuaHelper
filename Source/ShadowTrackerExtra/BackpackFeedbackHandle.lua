---@meta

---@class FFeedbackInfoConfig
---@field FeedbackEffect UParticleSystem
---@field FeedbackInterval number
---@field bUniqueFeedbackInstance boolean
---@field FeedbackSound UAkAudioEvent
---@field LobbyFeedbackSound UAkAudioEvent
FFeedbackInfoConfig = {}


---@class UBackpackFeedbackHandle: UBattleItemHandleBase, IBackpackAvatarInterface
---@field BeHitFeedbackInfo FFeedbackInfoConfig
local UBackpackFeedbackHandle = {}

---@return boolean
function UBackpackFeedbackHandle:IsNeedBeHitFeedback() end
