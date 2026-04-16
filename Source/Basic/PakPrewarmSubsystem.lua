---@meta

---@class EPrewarmOperationReason
---@field LoadMap number
---@field FlushLoading number
---@field Console number
---@field None number
EPrewarmOperationReason = {}


---@class UPakPrewarmSubsystem: UGameInstanceSubsystem
local UPakPrewarmSubsystem = {}

---Finds pak files in standard directories containing any of the given keywords and starts a new pre-warming task for them. This will cancel any previously running task.
---@param Keywords ULuaArrayHelper<string>
---@param bSearchSubdirectories boolean
function UPakPrewarmSubsystem:StartByKeywords(Keywords, bSearchSubdirectories) end

---Starts a new pre-warming task with an explicit list of absolute file paths. If a task is already running, it will be safely cancelled first.
---@param AbsoluteFilePaths ULuaArrayHelper<string>
function UPakPrewarmSubsystem:StartByPaths(AbsoluteFilePaths) end

---Starts a new pre-warming task with an explicit list of absolute file paths and their priorities.
---@param FilesWithPriorities ULuaMapHelper<string, number>
function UPakPrewarmSubsystem:StartByPathsWithPriorities(FilesWithPriorities) end

---Finds pak files by keywords, applies given priorities, and starts a new pre-warming task.
---@param KeywordsWithPriorities ULuaMapHelper<string, number>
---@param bSearchSubdirectories boolean
function UPakPrewarmSubsystem:StartByKeywordsWithPriorities(KeywordsWithPriorities, bSearchSubdirectories) end

---Starts a new pre-warming task with an array of PakRequest structs.
---@param Requests ULuaArrayHelper<FPakRequest>
function UPakPrewarmSubsystem:StartWithRequests(Requests) end

---Appends files to the current pre-warming task queue using keywords.
---@param Keywords ULuaArrayHelper<string>
---@param bSearchSubdirectories boolean
function UPakPrewarmSubsystem:AppendByKeywords(Keywords, bSearchSubdirectories) end

---Appends files to the current pre-warming task queue using an explicit list of absolute file paths.
---@param AbsoluteFilePaths ULuaArrayHelper<string>
function UPakPrewarmSubsystem:AppendByPaths(AbsoluteFilePaths) end

---Appends files to the current pre-warming task queue with an explicit list of absolute file paths and their priorities.
---@param FilesWithPriorities ULuaMapHelper<string, number>
function UPakPrewarmSubsystem:AppendByPathsWithPriorities(FilesWithPriorities) end

---Finds pak files by keywords, applies given priorities, and appends them to the current pre-warming task queue.
---@param KeywordsWithPriorities ULuaMapHelper<string, number>
---@param bSearchSubdirectories boolean
function UPakPrewarmSubsystem:AppendByKeywordsWithPriorities(KeywordsWithPriorities, bSearchSubdirectories) end

---Appends files to the current pre-warming task queue with an array of PakRequest structs.
---@param Requests ULuaArrayHelper<FPakRequest>
function UPakPrewarmSubsystem:AppendWithRequests(Requests) end

---Pauses the background pre-warming task.
---@param Reason EPrewarmOperationReason
function UPakPrewarmSubsystem:Pause(Reason) end

---Resumes a paused pre-warming task.
---@param Reason EPrewarmOperationReason
function UPakPrewarmSubsystem:Resume(Reason) end

---Stops and cancels any ongoing pre-warming task.
function UPakPrewarmSubsystem:Shutdown() end

---Checks if the pre-warming system is currently active.
---@return boolean
function UPakPrewarmSubsystem:IsBusy() end

---[Sync] Waits for any ongoing pre-warming task to complete, then shuts down and cleans up the background thread. This is intended to be called on fork-safe platforms (like Linux) right before forking, to ensure the process is single-threaded.
function UPakPrewarmSubsystem:WaitForCompletionAndShutdown() end

---Sets a dynamic speed factor to adjust the prefetching rate at runtime.
---@param NewFactor number
function UPakPrewarmSubsystem:SetPrefetchSpeedFactor(NewFactor) end
