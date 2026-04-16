---@meta

---Implements a message that is published to find automation workers.
---@class FAutomationWorkerFindWorkers
---@field Changelist number @Holds the change list number to find workers for.
---@field GameName string @The name of the game.
---@field ProcessName string @The name of the process.
---@field SessionId FGuid @Holds the session identifier to find workers for.
FAutomationWorkerFindWorkers = {}


---Implements a message that is sent in response to FAutomationWorkerFindWorkers.
---@class FAutomationWorkerFindWorkersResponse
---@field DeviceName string @Holds the name of the device that the worker is running on.
---@field InstanceName string @Holds the name of the worker's application instance.
---@field Platform string @Holds the name of the platform that the worker is running on.
---@field OSVersionName string @Holds the name of the operating system version.
---@field ModelName string @Holds the name of the device model.
---@field GPUName string @Holds the name of the GPU.
---@field CPUModelName string @Holds the name of the CPU model.
---@field RAMInGB number @Holds the amount of RAM this device has in gigabytes.
---@field RenderModeName string @Holds the name of the current render mode.
---@field SessionId FGuid @Holds the worker's application session identifier.
FAutomationWorkerFindWorkersResponse = {}


---Implements a message that notifies automation controllers that a worker went off-line.
---@class FAutomationWorkerWorkerOffline
FAutomationWorkerWorkerOffline = {}


---@class FAutomationWorkerPing
FAutomationWorkerPing = {}


---@class FAutomationWorkerResetTests
FAutomationWorkerResetTests = {}


---@class FAutomationWorkerPong
FAutomationWorkerPong = {}


---Implements a message for requesting available automation tests from a worker.
---@class FAutomationWorkerRequestTests
---@field DeveloperDirectoryIncluded boolean @Holds a flag indicating whether the developer directory should be included.
---@field RequestedTestFlags number @Holds a flag indicating which tests we'd like to request.
FAutomationWorkerRequestTests = {}


---A single test reply, used by FAutomationWorkerRequestTestsReplyComplete
---@class FAutomationWorkerSingleTestReply
---@field DisplayName string
---@field FullTestPath string
---@field TestName string
---@field TestParameter string
---@field SourceFile string
---@field SourceFileLine number
---@field AssetPath string
---@field OpenCommand string
---@field TestFlags number
---@field NumParticipantsRequired number
FAutomationWorkerSingleTestReply = {}


---Returns list of all tests
---@class FAutomationWorkerRequestTestsReplyComplete
---@field Tests ULuaArrayHelper<FAutomationWorkerSingleTestReply>
FAutomationWorkerRequestTestsReplyComplete = {}


---Implements a message to request the running of automation tests on a worker.
---@class FAutomationWorkerRunTests
---@field ExecutionCount number
---@field RoleIndex number
---@field TestName string @Holds the name of the test to run.
---@field BeautifiedTestName string @Holds the name of the test to run.
---@field bSendAnalytics boolean @If true, send results to analytics when complete
FAutomationWorkerRunTests = {}


---Implements a message that is sent in response to FAutomationWorkerRunTests.
---@class FAutomationWorkerRunTestsReply
---@field TestName string
---@field Events ULuaArrayHelper<FAutomationEvent>
---@field WarningTotal number
---@field ErrorTotal number
---@field Duration number
---@field ExecutionCount number
---@field Success boolean
FAutomationWorkerRunTestsReply = {}


---@class FAutomationWorkerRequestNextNetworkCommand
---@field ExecutionCount number
FAutomationWorkerRequestNextNetworkCommand = {}


---@class FAutomationWorkerNextNetworkCommandReply
FAutomationWorkerNextNetworkCommandReply = {}


---@class FAutomationScreenshotMetadata
---@field Name string
---@field Context string
---@field Id FGuid
---@field Commit string
---@field Width number
---@field Height number
---@field Rhi string
---@field Platform string
---@field FeatureLevel string
---@field bIsStereo boolean
---@field Vendor string
---@field AdapterName string
---@field AdapterInternalDriverVersion string
---@field AdapterUserDriverVersion string
---@field UniqueDeviceId string
---@field ResolutionQuality number
---@field ViewDistanceQuality number
---@field AntiAliasingQuality number
---@field ShadowQuality number
---@field PostProcessQuality number
---@field TextureQuality number
---@field EffectsQuality number
---@field FoliageQuality number
---@field bHasComparisonRules boolean
---@field ToleranceRed number
---@field ToleranceGreen number
---@field ToleranceBlue number
---@field ToleranceAlpha number
---@field ToleranceMinBrightness number
---@field ToleranceMaxBrightness number
---@field MaximumLocalError number
---@field MaximumGlobalError number
---@field bIgnoreAntiAliasing boolean
---@field bIgnoreColors boolean
FAutomationScreenshotMetadata = {}


---Implements a message that is sent in containing a screen shot run during performance test.
---@class FAutomationWorkerScreenImage
---@field ScreenImage ULuaArrayHelper<number> @The screen shot data.
---@field ScreenShotName string @The screen shot name.
---@field Metadata FAutomationScreenshotMetadata
FAutomationWorkerScreenImage = {}


---Implements a message that is sent in containing a screen shot run during performance test.
---@class FAutomationWorkerImageComparisonResults
---@field bNew boolean @Was this a new image we've never seen before and have no ground truth for?
---@field bSimilar boolean @Were the images similar?  If they're not you should log an error.
---@field MaxLocalDifference number
---@field GlobalDifference number
---@field ErrorMessage string
FAutomationWorkerImageComparisonResults = {}


---Implements a message that handles both storing and requesting ground truth data. for the first time this test is run, it might need to store things, or get things.
---@class FAutomationWorkerTestDataRequest
---@field DataType string @The category of the data, this is purely to bucket and separate the ground truth data we store into different directories.
---@field DataPlatform string
---@field DataTestName string
---@field DataName string
---@field JsonData string
FAutomationWorkerTestDataRequest = {}


---Implements a message that responds to TestDataRequests.
---@class FAutomationWorkerTestDataResponse
---@field JsonData string
---@field bIsNew boolean
FAutomationWorkerTestDataResponse = {}


---Implements a message to request the performance data for this hardware.
---@class FAutomationWorkerPerformanceDataRequest
---@field Platform string
---@field Hardware string
---@field TestName string
---@field DataPoints ULuaArrayHelper<number>
FAutomationWorkerPerformanceDataRequest = {}


---Implements a message that responds to PerformanceDataRequest.
---@class FAutomationWorkerPerformanceDataResponse
---@field bSuccess boolean
---@field ErrorMessage string
FAutomationWorkerPerformanceDataResponse = {}
