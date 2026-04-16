---@meta

---Implements a message that is published to discover existing application sessions.
---@class FSessionServicePing
---@field UserName string @The name of the user who sent this ping.
FSessionServicePing = {}


---Implements a message that is published in response to FSessionServicePing.
---@class FSessionServicePong
---@field Authorized boolean @Indicates whether the pinging user is authorized to interact with this session.
---@field BuildDate string @Holds the application's build date.
---@field DeviceName string @Holds the name of the device that the application is running on.
---@field InstanceId FGuid @Holds the application's instance identifier.
---@field InstanceName string @Holds the application's instance name.
---@field IsConsoleBuild boolean @Indicates whether the application is running on a console.
---@field PlatformName string @Holds the name of the platform that the application is running on.
---@field SessionId FGuid @Holds the identifier of the session that the application belongs to.
---@field SessionName string @Holds the user defined name of the session.
---@field SessionOwner string @Holds the name of the user that started the session.
---@field Standalone boolean @Indicates whether the application is the only one in that session.
FSessionServicePong = {}


---Implements a message that contains a console log entry.
---@class FSessionServiceLog
---@field Category string @Holds the log message category.
---@field Data string @Holds the log message data.
---@field InstanceId FGuid @Holds the application instance identifier.
---@field TimeSeconds number @Holds the time in seconds since the application was started.
---@field Verbosity number @Holds the log message's verbosity level.
FSessionServiceLog = {}


---Implements a message to subscribe to an application's console log.
---@class FSessionServiceLogSubscribe
FSessionServiceLogSubscribe = {}


---Implements a message to unsubscribe from an application's console log.
---@class FSessionServiceLogUnsubscribe
FSessionServiceLogUnsubscribe = {}
