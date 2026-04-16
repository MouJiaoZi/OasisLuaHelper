---@meta

---@class ETemperatureSeverityType
---@field Unknown number
---@field Good number
---@field Bad number
---@field Serious number
---@field Critical number
---@field NumSeverities number
ETemperatureSeverityType = {}


---Component to handle receiving notifications from the OS about application state (activated, suspended, termination, etc).
---@class UApplicationLifecycleComponent: UActorComponent
---@field ApplicationWillDeactivateDelegate FApplicationLifetimeDelegate
---@field ApplicationHasReactivatedDelegate FApplicationLifetimeDelegate
---@field ApplicationWillEnterBackgroundDelegate FApplicationLifetimeDelegate
---@field ApplicationHasEnteredForegroundDelegate FApplicationLifetimeDelegate
---@field ApplicationWillTerminateDelegate FApplicationLifetimeDelegate
---@field OnTemperatureChangeDelegate FOnTemperatureChangeDelegate
local UApplicationLifecycleComponent = {}
