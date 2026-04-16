---@meta

---Describes which standby detection event occured so the game can take appropriate action.
---@class EStandbyType
---@field STDBY_Rx number
---@field STDBY_Tx number
---@field STDBY_BadPing number
---@field STDBY_MAX number
EStandbyType = {}


---Handles game-specific networking management (cheat detection, bandwidth management, etc.).
---@class AGameNetworkManager: AInfo
---@field AdjustedNetSpeed number @Current adjusted net speed - Used for dynamically managing netspeed for listen servers
---@field LastNetSpeedUpdateTime number @Last time netspeed was updated for server (by client entering or leaving)
---@field TotalNetBandwidth number @Total available bandwidth for listen server, split dynamically across net connections
---@field MinDynamicBandwidth number @Minimum bandwidth dynamically set per connection
---@field MaxDynamicBandwidth number @Maximum bandwidth dynamically set per connection
---@field bIsStandbyCheckingEnabled number @Used to determine if checking for standby cheats should occur
---@field bHasStandbyCheatTriggered number @Used to determine whether we've already caught a cheat or not
---@field StandbyRxCheatTime number @The amount of time without packets before triggering the cheat code
---@field StandbyTxCheatTime number @The amount of time without packets before triggering the cheat code
---@field BadPingThreshold number @The point we determine the server is either delaying packets or has bad upstream
---@field PercentMissingForRxStandby number @The percentage of clients missing RX data before triggering the standby code
---@field PercentMissingForTxStandby number @The percentage of clients missing TX data before triggering the standby code
---@field PercentForBadPing number @The percentage of clients with bad ping before triggering the standby code
---@field JoinInProgressStandbyWaitTime number @The amount of time to wait before checking a connection for standby issues
---@field MoveRepSize number @Average size of replicated move packet (ServerMove() packet size) from player
---@field MAXPOSITIONERRORSQUARED number @MAXPOSITIONERRORSQUARED is the square of the max position error that is accepted (not corrected) in net play
---@field MAXNEARZEROVELOCITYSQUARED number @MAXNEARZEROVELOCITYSQUARED is the square of the max velocity that is considered zero (not corrected) in net play
---@field CLIENTADJUSTUPDATECOST number @CLIENTADJUSTUPDATECOST is the bandwidth cost in bytes of sending a client adjustment update. 180 is greater than the actual cost, but represents a tweaked value reserving enough bandwidth for other updates sent to the client.  Increase this value to reduce client adjustment update frequency, or if the amount of data sent in the clientadjustment() call increases
---@field MAXCLIENTUPDATEINTERVAL number @MAXCLIENTUPDATEINTERVAL is the maximum time between movement updates from the client before the server forces an update.
---@field MaxMoveDeltaTime number @MaxMoveDeltaTime is the default maximum time delta of CharacterMovement ServerMoves. Should be less than or equal to MAXCLIENTUPDATEINTERVAL, otherwise server will interfere by forcing position updates.
---@field ClientNetSendMoveDeltaTime number @ClientNetSendMoveDeltaTime is the default minimum time delta of CharacterMovement client moves to the server. When updates occur more frequently, they may be combined to save bandwidth. This value is not used when player count is over ClientNetSendMoveThrottleOverPlayerCount or player net speed is <= ClientNetSendMoveThrottleAtNetSpeed (see ClientNetSendMoveDeltaTimeThrottled).
---@field ClientNetSendMoveDeltaTimeThrottled number @ClientNetSendMoveDeltaTimeThrottled is used in place of ClientNetSendMoveDeltaTime when player count is high or net speed is low. See ClientNetSendMoveDeltaTime for more info.
---@field ClientNetSendMoveDeltaTimeStationary number @ClientNetSendMoveDeltaTimeStationary is used when players are determined to not be moving or changing their view. See ClientNetSendMoveDeltaTime for more info.
---@field ClientNetSendMoveThrottleAtNetSpeed number @When player net speed (CurrentNetSpeed, based on ConfiguredInternetSpeed or ConfiguredLanSpeed) is less than or equal to this amount, ClientNetSendMoveDeltaTimeThrottled is used instead of ClientNetSendMoveDeltaTime.
---@field ClientNetSendMoveThrottleOverPlayerCount number @When player count is greater than this amount, ClientNetSendMoveDeltaTimeThrottled is used instead of ClientNetSendMoveDeltaTime.
---@field ClientAuthorativePosition boolean @If client update is within MAXPOSITIONERRORSQUARED then he is authorative on his final position
---@field ClientErrorUpdateRateLimit number @Minimum delay between the server sending error corrections to a client, in seconds.
---@field bMovementTimeDiscrepancyDetection boolean @Whether movement time discrepancy detection is enabled.
---@field bMovementTimeDiscrepancyResolution boolean @Whether movement time discrepancy resolution is enabled (when detected, make client movement "pay back" excessive time discrepancies)
---@field MovementTimeDiscrepancyMaxTimeMargin number @Maximum time client can be ahead before triggering movement time discrepancy detection/resolution (if enabled).
---@field MovementTimeDiscrepancyMinTimeMargin number @Maximum time client can be behind.
---@field MovementTimeDiscrepancyResolutionRate number @During time discrepancy resolution, we "pay back" the time discrepancy at this rate for future moves until total error is zero. 1.0 = 100% resolution rate, meaning the next X ServerMoves from the client are fully paying back the time, 0.5 = 50% resolution rate, meaning future ServerMoves will spend 50% of tick continuing to move the character and 50% paying back. Lowering from 100% could be used to produce less severe/noticeable corrections, although typically we would want to correct the client as quickly as possible.
---@field MovementTimeDiscrepancyDriftAllowance number @Accepted drift in clocks between client and server as a percent per second allowed. 0.0 is "no forgiveness" and all logic would run on raw values, no tampering on the server side. 0.02 would be a 2% per second difference "forgiven" - if the time discrepancy in a given second was less than 2%, the error handling/detection code effectively ignores it. Increasing this value above 0% lessens the chance of false positives on time discrepancy (burst packet loss, performance hitches), but also means anyone tampering with their client time below that percent will not be detected and no resolution action will be taken, and anyone above that threshold will still gain the advantage of this % of time boost (if running at 10% speed-up and this value is 0.05 or 5% allowance, they would only be resolved down to a 5% speed boost). Time discrepancy detection code DOES keep track of LifetimeRawTimeDiscrepancy, which is unaffected by this drift allowance, so cheating below DriftAllowance percent could be tracked and acted on outside of an individual game. For example, if DriftAllowance was 0.05 (meaning we're not going to actively prevent any cheating below 5% boosts to ensure less false positives for normal players), we could still post-process analytics of the game showing that Player X regularly runs at 4% speed boost and take action.
---@field bMovementTimeDiscrepancyForceCorrectionsDuringResolution boolean @Whether client moves should be force corrected during time discrepancy resolution, useful for projects that have lenient move error tolerance/ClientAuthorativePosition enabled.
---@field bUseDistanceBasedRelevancy boolean @If true, actor network relevancy is constrained by whether they are within their NetCullDistanceSquared from the client's view point.
local AGameNetworkManager = {}
