---@meta

---Acts as a game-specific wrapper around the session interface. The game code makes calls to this when it needs to interact with the session interface. A game session exists only the server, while running an online game.
---@class AGameSession: AInfo
---@field MaxSpectators number @Maximum number of spectators allowed by this server.
---@field MaxPlayers number @Maximum number of players allowed by this server.
---@field MaxPartySize number @Restrictions on the largest party that can join together
---@field MaxSplitscreensPerConnection number @Maximum number of splitscreen players to allow from one connection
---@field bRequiresPushToTalk boolean @Is voice enabled always or via a push to talk keybinding
---@field SessionName string @SessionName local copy from PlayerState class.  should really be define in this class, but need to address replication issues
local AGameSession = {}
