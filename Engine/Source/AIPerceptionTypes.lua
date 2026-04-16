---@meta

---@class EAISenseNotifyType
---@field OnEveryPerception number @Continuous update whenever target is perceived.
---@field OnPerceptionChange number @From "visible" to "not visible" or vice versa.
EAISenseNotifyType = {}


---@class FAIStimulus
---@field Age number
---@field ExpirationAge number
---@field Strength number
---@field StimulusLocation FVector
---@field ReceiverLocation FVector
---@field Tag string
---@field bSuccessfullySensed number
FAIStimulus = {}


---@class FAISenseAffiliationFilter
---@field bDetectEnemies number
---@field bDetectNeutrals number
---@field bDetectFriendlies number
FAISenseAffiliationFilter = {}
