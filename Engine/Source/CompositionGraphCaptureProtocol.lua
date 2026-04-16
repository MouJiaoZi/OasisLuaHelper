---@meta

---Used by UCompositionGraphCaptureSettings. Matches gamut oreder in TonemapCommon.usf OuputGamutMappingMatrix()
---@class EHDRCaptureGamut
---@field HCGM_Rec709 number @Rec.709 / sRGB
---@field HCGM_P3DCI number @P3 D65
---@field HCGM_Rec2020 number @Rec.2020
---@field HCGM_ACES number @ACES
---@field HCGM_ACEScg number @ACEScg
---@field HCGM_MAX number
EHDRCaptureGamut = {}


---@class FCompositionGraphCapturePasses
---@field Value ULuaArrayHelper<string>
FCompositionGraphCapturePasses = {}


---@class UCompositionGraphCaptureSettings: UMovieSceneCaptureProtocolSettings
---@field IncludeRenderPasses FCompositionGraphCapturePasses @A list of render passes to include in the capture. Leave empty to export all available passes.
---@field bCaptureFramesInHDR boolean @Whether to capture the frames as HDR textures (*.exr format)
---@field HDRCompressionQuality number @Compression Quality for HDR Frames (0 for no compression, 1 for default compression which can be slow)
---@field CaptureGamut EHDRCaptureGamut @The color gamut to use when storing HDR captured data. The gamut depends on whether the bCaptureFramesInHDR option is enabled.
---@field PostProcessingMaterial FSoftObjectPath @Custom post processing material to use for rendering
local UCompositionGraphCaptureSettings = {}
