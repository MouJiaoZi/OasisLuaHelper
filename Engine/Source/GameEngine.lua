---@meta

---Engine that manages core systems that enable a game.
---@class UGameEngine: UEngine
---@field MaxDeltaTime number @Maximium delta time the engine uses to populate FApp::DeltaTime. If 0, unbound.
---@field ServerFlushLogInterval number @Maximium time (in seconds) between the flushes of the logs on the server (best effort). If 0, this will happen every tick.
local UGameEngine = {}
