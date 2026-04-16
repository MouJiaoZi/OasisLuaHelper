---@meta

---@class EAIOptionFlag
---@field Default number
---@field Enable number @Yes
---@field Disable number @No
---@field MAX number
EAIOptionFlag = {}


---@class FAIDistanceType
---@field Distance3D number
---@field Distance2D number
---@field DistanceZ number
---@field MAX number
FAIDistanceType = {}


---@class EAILogicResuming
---@field Continue number
---@field RestartedInstead number
EAILogicResuming = {}


---@class EPawnActionAbortState
---@field NeverStarted number
---@field NotBeingAborted number
---@field MarkPendingAbort number @This means waiting for child to abort before aborting self.
---@field LatentAbortInProgress number
---@field AbortDone number
---@field MAX number
EPawnActionAbortState = {}


---@class EPawnActionResult
---@field NotStarted number
---@field InProgress number
---@field Success number
---@field Failed number
---@field Aborted number
EPawnActionResult = {}


---@class EPawnActionEventType
---@field Invalid number
---@field FailedToStart number
---@field InstantAbort number
---@field FinishedAborting number
---@field FinishedExecution number
---@field Push number
EPawnActionEventType = {}


---@class EAIRequestPriority
---@field SoftScript number @Actions requested by Level Designers by placing AI-hinting elements on the map.
---@field Logic number @Actions AI wants to do due to its internal logic.
---@field HardScript number @Actions LDs really want AI to perform.
---@field Reaction number @Actions being result of game-world mechanics, like hit reactions, death, falling, etc. In general things not depending on what AI's thinking.
---@field Ultimate number @Ultimate priority, to be used with caution, makes AI perform given action regardless of anything else (for example disabled reactions).
---@field MAX number
EAIRequestPriority = {}


---@class EAILockSource
---@field Animation number
---@field Logic number
---@field Script number
---@field Gameplay number
---@field MAX number
EAILockSource = {}


---@class EGenericAICheck
---@field Less number
---@field LessOrEqual number
---@field Equal number
---@field NotEqual number
---@field GreaterOrEqual number
---@field Greater number
---@field IsTrue number
---@field MAX number
EGenericAICheck = {}


---@class FAIRequestID
---@field RequestID number
FAIRequestID = {}


---@class FAIMoveRequest
FAIMoveRequest = {}
