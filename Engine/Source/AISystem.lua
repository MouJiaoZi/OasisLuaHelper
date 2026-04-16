---@meta

---@class UAISystem: UAISystemBase
---@field PerceptionSystemClassName FSoftClassPath
---@field HotSpotManagerClassName FSoftClassPath
---@field NavLocalGridManagerClassName FSoftClassPath @Class that will be used to spawn the hot spot manager, can be game-specific
---@field AcceptanceRadius number @Default AI movement's acceptance radius used to determine whether AI reached path's end
---@field PathfollowingRegularPathPointAcceptanceRadius number @Value used for pathfollowing's internal code to determine whether AI reached path's point.
---@field PathfollowingNavLinkAcceptanceRadius number @Similarly to PathfollowingRegularPathPointAcceptanceRadius used by pathfollowing's internals but gets applied only when next point on a path represents a begining of navigation link
---@field bFinishMoveOnGoalOverlap boolean
---@field bAcceptPartialPaths boolean
---@field bAllowStrafing boolean
---@field bEnableBTAITasks boolean @this property is just a transition-time flag - in the end we're going to switch over to Gameplay Tasks anyway, that's the goal.
---@field bAllowControllersAsEQSQuerier boolean @if enable will make EQS not complaint about using Controllers as queriers. Default behavior (false) will in places automatically convert controllers to pawns, and complain if code user bypasses the conversion or uses pawn-less controller
---@field bEnableDebuggerPlugin boolean @if set, GameplayDebuggerPlugin will be loaded on module's startup
---@field DefaultSightCollisionChannel ECollisionChannel
---@field AllProxyObjects ULuaArrayHelper<UAIAsyncTaskBlueprintProxy>
local UAISystem = {}

function UAISystem:AIIgnorePlayers() end

function UAISystem:AILoggingVerbose() end
