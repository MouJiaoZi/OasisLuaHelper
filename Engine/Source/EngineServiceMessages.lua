---@meta

---Implements a message for discovering engine instances on the network.
---@class FEngineServicePing
FEngineServicePing = {}


---Implements a message for responding to a request to discover engine instances on the network.
---@class FEngineServicePong
---@field CurrentLevel string @Holds the name of the currently loaded level, if any.
---@field EngineVersion number @Holds the engine version.
---@field HasBegunPlay boolean @Holds a flag indicating whether game play has begun.
---@field InstanceId FGuid @Holds the instance identifier.
---@field InstanceType string @Holds the type of the engine instance.
---@field SessionId FGuid @Holds the identifier of the session that the application belongs to.
---@field WorldTimeSeconds number @Holds the time in seconds since the world was loaded.
FEngineServicePong = {}


---Implements a message for denying service access to a remote user.
---@class FEngineServiceAuthDeny
---@field UserName string @Holds the name of the user that denied access.
---@field UserToDeny string @Holds the name of the user that access is denied to.
FEngineServiceAuthDeny = {}


---Implements a message for granting service access to a remote user.
---@class FEngineServiceAuthGrant
---@field UserName string @Holds the name of the user that granted access.
---@field UserToGrant string @Holds the name of the user that access is granted to.
FEngineServiceAuthGrant = {}


---Implements a message for executing a console command.
---@class FEngineServiceExecuteCommand
---@field Command string @Holds the command to execute.
---@field UserName string @Holds the name of the user that wants to execute the command.
FEngineServiceExecuteCommand = {}


---Implements a message for terminating the engine.
---@class FEngineServiceTerminate
---@field UserName string @Holds the name of the user that wants to terminate the engine.
FEngineServiceTerminate = {}


---Implements a message that contains a notification or log output.
---@class FEngineServiceNotification
---@field Text string @Holds the notification text.
---@field TimeSeconds number @Holds the time in seconds since the engine started.
FEngineServiceNotification = {}
