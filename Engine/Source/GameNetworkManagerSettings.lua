---@meta

---Holds the settings for the AGameNetworkManager class.
---@class UGameNetworkManagerSettings: UObject
---@field MinDynamicBandwidth number @Minimum bandwidth dynamically set per connection.
---@field MaxDynamicBandwidth number @Maximum bandwidth dynamically set per connection.
---@field TotalNetBandwidth number @Total available bandwidth for listen server, split dynamically across net connections.
---@field BadPingThreshold number @The point we determine the server is either delaying packets or has bad upstream.
---@field bIsStandbyCheckingEnabled number @Used to determine if checking for standby cheats should occur.
---@field StandbyRxCheatTime number @The amount of time without packets before triggering the cheat code.
---@field StandbyTxCheatTime number @The amount of time without packets before triggering the cheat code.
---@field PercentMissingForRxStandby number @The percentage of clients missing RX data before triggering the standby code.
---@field PercentMissingForTxStandby number @The percentage of clients missing TX data before triggering the standby code.
---@field PercentForBadPing number @The percentage of clients with bad ping before triggering the standby code.
---@field JoinInProgressStandbyWaitTime number @The amount of time to wait before checking a connection for standby issues.
local UGameNetworkManagerSettings = {}
