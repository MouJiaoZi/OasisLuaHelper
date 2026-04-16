---@meta

---@class ESoundDistanceCalc
---@field SOUNDDISTANCE_Normal number
---@field SOUNDDISTANCE_InfiniteXYPlane number
---@field SOUNDDISTANCE_InfiniteXZPlane number
---@field SOUNDDISTANCE_InfiniteYZPlane number
---@field SOUNDDISTANCE_MAX number
ESoundDistanceCalc = {}


---@class ESoundSpatializationAlgorithm
---@field SPATIALIZATION_Default number
---@field SPATIALIZATION_HRTF number
ESoundSpatializationAlgorithm = {}


---@class EAirAbsorptionMethod
---@field Linear number
---@field CustomCurve number
EAirAbsorptionMethod = {}


---@class EReverbSendMethod
---@field Linear number
---@field CustomCurve number
---@field Manual number
EReverbSendMethod = {}


---@class FSoundAttenuationSettings
---@field bAttenuate number
---@field bSpatialize number
---@field bAttenuateWithLPF number @Allows simulation of air absorption by applying a filter with a cutoff frequency as a function of distance.
---@field bEnableListenerFocus number @Enable listener focus-based adjustments.
---@field bEnableFocusInterpolation number @Enables focus interpolation to smooth transition in and and of focus.
---@field bEnableOcclusion number @Enables realtime occlusion tracing.
---@field bUseComplexCollisionForOcclusion number @Enables tracing against complex collision when doing occlusion traces.
---@field bEnableReverbSend number @Enables adjusting reverb sends based on distance.
---@field bApplyNormalizationToStereoSounds number @Enables applying a -6 dB attenuation to stereo assets which are 3d spatialized. Avoids clipping when assets have spread of 0.0 due to channel summing.
---@field bEnableLogFrequencyScaling number @Enables applying a log scale to frequency values (so frequency sweeping is perceptually linear).
---@field DistanceType_DEPRECATED ESoundDistanceCalc
---@field OmniRadius number @The distance below which a sound is non-spatialized (2D). This prevents near-field audio from flipping as audio crosses the listener's position.
---@field StereoSpread number @The world-space absolution distance between left and right stereo channels when stereo assets are 3D spatialized.
---@field SpatializationAlgorithm ESoundSpatializationAlgorithm @What method we use to spatialize the sound.
---@field RadiusMin_DEPRECATED number
---@field RadiusMax_DEPRECATED number
---@field LPFRadiusMin number
---@field LPFRadiusMax number
---@field AbsorptionMethod EAirAbsorptionMethod @What method to use to map distance values to frequency absorption values.
---@field CustomLowpassAirAbsorptionCurve FRuntimeFloatCurve
---@field CustomHighpassAirAbsorptionCurve FRuntimeFloatCurve
---@field LPFFrequencyAtMin number
---@field LPFFrequencyAtMax number
---@field HPFFrequencyAtMin number
---@field HPFFrequencyAtMax number
---@field FocusAzimuth number @Azimuth angle (in degrees) relative to the listener forward vector which defines the focus region of sounds. Sounds playing at an angle less than this will be in focus.
---@field NonFocusAzimuth number @Azimuth angle (in degrees) relative to the listener forward vector which defines the non-focus region of sounds. Sounds playing at an angle greater than this will be out of focus.
---@field FocusDistanceScale number @Amount to scale the distance calculation of sounds that are in-focus. Can be used to make in-focus sounds appear to be closer or further away than they actually are.
---@field NonFocusDistanceScale number @Amount to scale the distance calculation of sounds that are not in-focus. Can be used to make in-focus sounds appear to be closer or further away than they actually are.
---@field FocusPriorityScale number @Amount to scale the priority of sounds that are in focus. Can be used to boost the priority of sounds that are in focus.
---@field NonFocusPriorityScale number @Amount to scale the priority of sounds that are not in-focus. Can be used to reduce the priority of sounds that are not in focus.
---@field FocusVolumeAttenuation number @Amount to attenuate sounds that are in focus. Can be overridden at the sound-level.
---@field NonFocusVolumeAttenuation number @Amount to attenuate sounds that are not in focus. Can be overridden at the sound-level.
---@field FocusAttackInterpSpeed number @Scalar used to increase interpolation speed upwards to the target Focus value
---@field FocusReleaseInterpSpeed number @Scalar used to increase interpolation speed downwards to the target Focus value
---@field OcclusionTraceChannel ECollisionChannel
---@field OcclusionLowPassFilterFrequency number @The low pass filter frequency (in hertz) to apply if the sound playing in this audio component is occluded. This will override the frequency set in LowPassFilterFrequency. A frequency of 0.0 is the device sample rate and will bypass the filter.
---@field OcclusionVolumeAttenuation number @The amount of volume attenuation to apply to sounds which are occluded.
---@field OcclusionInterpolationTime number @The amount of time in seconds to interpolate to the target OcclusionLowPassFilterFrequency when a sound is occluded.
---@field ReverbSendMethod EReverbSendMethod @What method to use to control master reverb sends
---@field ReverbWetLevelMin number @The amount to send to master reverb when sound is located at a distance equal to value specified in the reverb min send distance.
---@field ReverbWetLevelMax number @The amount to send to master reverb when sound is located at a distance equal to value specified in the reverb max send distance.
---@field ReverbDistanceMin number @The min distance to send to the master reverb.
---@field ReverbDistanceMax number @The max distance to send to the master reverb.
---@field CustomReverbSendCurve FRuntimeFloatCurve
---@field ManualReverbSendLevel number
FSoundAttenuationSettings = {}


---Defines how a sound changes volume with distance to the listener
---@class USoundAttenuation: UObject
---@field Attenuation FSoundAttenuationSettings
local USoundAttenuation = {}
