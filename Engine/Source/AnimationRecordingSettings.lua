---@meta

---Settings describing how to record an animation
---@class FAnimationRecordingSettings
---@field bRecordInWorldSpace boolean @Whether to record animation in world space, defaults to true
---@field bRemoveRootAnimation boolean @Whether to remove the root bone transform from the animation
---@field bAutoSaveAsset boolean @Whether to auto-save asset when recording is completed. Defaults to false
---@field SampleRate number @Sample rate of the recorded animation (in Hz)
---@field Length number @Maximum length of the animation recorded (in seconds). If zero the animation will keep on recording until stopped.
---@field InterpMode ERichCurveInterpMode @Interpolation mode for the recorded keys.
---@field TangentMode ERichCurveTangentMode @Tangent mode for the recorded keys.
FAnimationRecordingSettings = {}
