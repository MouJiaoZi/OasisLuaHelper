---@meta

---@class UAnimCompress_Automatic: UAnimCompress
---@field MaxEndEffectorError number @Maximum amount of error that a compression technique can introduce in an end effector Determines the current setting for world - space error tolerance in the animation compressor. When requested, animation being compressed will also consider an alternative compression method if the end result of that method produces less error than the AlternativeCompressionThreshold. Also known as "Alternative Compression Threshold"
---@field bTryFixedBitwiseCompression number @If true, the uniform bitwise techniques will be tried
---@field bTryPerTrackBitwiseCompression number @If true, the per-track compressor techniques will be tried
---@field bTryLinearKeyRemovalCompression number @If true, the linear key removal techniques will be tried
---@field bTryIntervalKeyRemoval number @If true, the resampling techniques will be tried
---@field bRunCurrentDefaultCompressor number @If true, then the animation will be first recompressed with it's current compressor if non-NULL, or with the global default compressor (specified in the engine ini) Also known as "First Recompress Using Current Or Default"
---@field bAutoReplaceIfExistingErrorTooGreat number @If true and the existing compression error is greater than Max End Effector Error, then any compression technique (even one that increases the size) with a lower error will be used until it falls below the threshold Also known as "force below threshold"
---@field bRaiseMaxErrorToExisting number @If true and the existing compression error is greater than Max End Effector Error, then Max End Effector Error will be effectively raised to the existing error level
---@field bTryPerTrackVarBitCompression number @If true, the per-track variable bit compressor techniques will be tried
local UAnimCompress_Automatic = {}
