---@meta

---@class EPowerUsageFrameRateLock
---@field PUFRL_None number @Frame rate is not limited.
---@field PUFRL_20 number @Frame rate is limited to a maximum of 20 frames per second.
---@field PUFRL_30 number @Frame rate is limited to a maximum of 30 frames per second.
---@field PUFRL_60 number @Frame rate is limited to a maximum of 60 frames per second.
EPowerUsageFrameRateLock = {}


---@class EIOSVersion
---@field IOS_61 number @iOS 6.1
---@field IOS_7 number @iOS 7
---@field IOS_8 number @iOS 8
---@field IOS_9 number @iOS 9
---@field IOS_10 number @iOS 10
---@field IOS_11 number @iOS 11
---@field IOS_12 number @iOS 12
EIOSVersion = {}


---@class EIOSMetalShaderStandard
---@field IOSMetalSLStandard_1_0 number @Metal Shaders Compatible With iOS 8.0/tvOS 9.0 or later (std=ios-metal1.0)
---@field IOSMetalSLStandard_1_1 number @Metal Shaders Compatible With iOS 9.0/tvOS 9.0 or later (std=ios-metal1.1)
---@field IOSMetalSLStandard_1_2 number @Metal Shaders Compatible With iOS 10.0/tvOS 10.0 or later (std=ios-metal1.2)
---@field IOSMetalSLStandard_2_0 number @Metal Shaders Compatible With iOS 11.0/tvOS 11.0 or later (std=ios-metal2.0)
---@field IOSMetalSLStandard_2_1 number @Metal Shaders Compatible With iOS 12.0/tvOS 12.0 or later (std=ios-metal2.1)
EIOSMetalShaderStandard = {}


---IOS Build resource file struct, used to serialize filepaths to the configs for use in the build system,
---@class FIOSBuildResourceFilePath
---@field FilePath string @The path to the file.
FIOSBuildResourceFilePath = {}


---IOS Build resource file struct, used to serialize Directorys to the configs for use in the build system,
---@class FIOSBuildResourceDirectory
---@field Path string @The path to the file.
FIOSBuildResourceDirectory = {}


---Implements the settings for the iOS target platform.
---@class UIOSRuntimeSettings: UObject
---@field bEnableGameCenterSupport number
---@field bEnableCloudKitSupport number
---@field bEnableRemoteNotificationsSupport number
---@field bSupportsMetal boolean
---@field bSupportsMetalMRT boolean
---@field bCookPVRTCTextures boolean
---@field bCookASTCTextures boolean
---@field bSupportsOpenGLES2 boolean
---@field EnableRemoteShaderCompile boolean
---@field bGeneratedSYMFile boolean
---@field bGeneratedSYMBundle boolean
---@field bGenerateXCArchive boolean
---@field bDevForArmV7 boolean
---@field bDevForArm64 boolean
---@field bDevForArmV7S boolean
---@field bShipForArmV7 boolean
---@field bShipForArm64 boolean
---@field bShipForArmV7S boolean
---@field bShipForBitcode boolean
---@field AdditionalLinkerFlags string
---@field AdditionalShippingLinkerFlags string
---@field RemoteServerName string
---@field bUseRSync boolean
---@field RSyncUsername string
---@field DeltaCopyInstallPath FIOSBuildResourceDirectory
---@field SSHPrivateKeyLocation string
---@field SSHPrivateKeyOverridePath FIOSBuildResourceFilePath
---@field bTreatRemoteAsSeparateController boolean
---@field bAllowRemoteRotation boolean
---@field bUseRemoteAsVirtualJoystick boolean
---@field bUseRemoteAbsoluteDpadValues boolean
---@field bSupportsPortraitOrientation number
---@field bSupportsUpsideDownOrientation number
---@field bSupportsLandscapeLeftOrientation number
---@field bSupportsLandscapeRightOrientation number
---@field BundleDisplayName string
---@field BundleName string
---@field BundleIdentifier string
---@field VersionInfo string
---@field FrameRateLock EPowerUsageFrameRateLock @Set the maximum frame rate to save on power consumption
---@field MinimumiOSVersion EIOSVersion
---@field bSupportsIPad number
---@field bSupportsIPhone number
---@field AdditionalPlistData string
---@field bEnableFacebookSupport boolean
---@field FacebookAppID string
---@field MobileProvision string
---@field SigningCertificate string
---@field bAutomaticSigning boolean
---@field MaxShaderLanguageVersion number
---@field UseFastIntrinsics boolean @Whether to use the Metal shading language's "fast" intrinsics. Fast intrinsics assume that no NaN or INF value will be provided as input, so are more efficient. However, they will produce undefined results if NaN/INF is present in the argument/s.
---@field EnableMathOptimisations boolean @Whether to use of Metal shader-compiler's -ffast-math optimisations. Fast-Math performs algebraic-equivalent & reassociative optimisations not permitted by the floating point arithmetic standard (IEEE-754). These can improve shader performance at some cost to precision and can lead to NaN/INF propagation as they rely on shader inputs or variables not containing NaN/INF values. By default fast-math is enabled for performance.
---@field bUseIntegratedKeyboard boolean
---@field AudioSampleRate number @Sample rate to run the audio mixer with.
---@field AudioCallbackBufferFrameSize number @The amount of audio to compute each callback block. Lower values decrease latency but may increase CPU cost.
---@field AudioNumBuffersToEnqueue number @The number of buffers to keep enqueued. More buffers increases latency, but can compensate for variable compute availability in audio callbacks on some platforms.
---@field AudioMaxChannels number @The max number of channels (voices) to limit for this platform. The max channels used will be the minimum of this value and the global audio quality settings. A value of 0 will not apply a platform channel count max.
---@field AudioNumSourceWorkers number @The number of workers to use to compute source audio. Will only use up to the max number of sources. Will evenly divide sources to each source worker.
---@field SpatializationPlugin string @Which of the currently enabled spatialization plugins to use on Windows.
---@field ReverbPlugin string @Which of the currently enabled reverb plugins to use on Windows.
---@field OcclusionPlugin string @Which of the currently enabled occlusion plugins to use on Windows.
local UIOSRuntimeSettings = {}
