---@meta

---@class FJoinabilitySettings
---@field SessionName string @Name of session these settings affect
---@field bPublicSearchable boolean @Is this session now publicly searchable
---@field bAllowInvites boolean @Does this session allow invites
---@field bJoinViaPresence boolean @Does this session allow public join via presence
---@field bJoinViaPresenceFriendsOnly boolean @Does this session allow friends to join via presence
---@field MaxPlayers number @Current max players in this session
---@field MaxPartySize number @Current max party size in this session
FJoinabilitySettings = {}


---@class FUniqueNetIdWrapper
FUniqueNetIdWrapper = {}
