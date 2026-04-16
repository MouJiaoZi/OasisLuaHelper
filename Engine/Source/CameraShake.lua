---@meta

---Shake start offset parameter
---@class EInitialOscillatorOffset
---@field EOO_OffsetRandom number @Start with random offset (default).
---@field EOO_OffsetZero number @Start with zero offset.
---@field EOO_MAX number
EInitialOscillatorOffset = {}


---Defines oscillation of a single number.
---@class FFOscillator
---@field Amplitude number @Amplitude of the sinusoidal oscillation.
---@field Frequency number @Frequency of the sinusoidal oscillation.
---@field InitialOffset EInitialOscillatorOffset @Defines how to begin (either at zero, or at a randomized value.
FFOscillator = {}


---Defines FRotator oscillation.
---@class FROscillator
---@field Pitch any @Pitch oscillation.
---@field Yaw any @Yaw oscillation.
---@field Roll any @Roll oscillation.
FROscillator = {}


---Defines FVector oscillation.
---@class FVOscillator
---@field X any @Oscillation in the X axis.
---@field Y any @Oscillation in the Y axis.
---@field Z any @Oscillation in the Z axis.
FVOscillator = {}


---A CameraShake is an asset that defines how to shake the camera in a particular way. CameraShakes can be authored as either oscillating shakes, animated shakes, or both. An oscillating shake will sinusoidally vibrate various camera parameters over time. Each location and rotation axis can be oscillated independently with different parameters to create complex and random-feeling shakes. These are easier to author and tweak, but can still feel mechanical and are limited to vibration-style shakes, such as earthquakes. Animated shakes play keyframed camera animations.  These can take more effort to author, but enable more natural-feeling results and things like directional shakes.  For instance, you can have an explosion to the camera's right push it primarily to the left.
---@class UCameraShake: UObject
---@field bSingleInstance number @If true to only allow a single instance of this shake class to play at any given time. Subsequent attempts to play this shake will simply restart the timer.
---@field OscillationDuration number @Duration in seconds of current screen shake. Less than 0 means indefinite, 0 means no oscillation.
---@field OscillationBlendInTime number @Duration of the blend-in, where the oscillation scales from 0 to 1.
---@field OscillationBlendOutTime number @Duration of the blend-out, where the oscillation scales from 1 to 0.
---@field RotOscillation any @Rotational oscillation
---@field LocOscillation any @Positional oscillation
---@field FOVOscillation any @FOV oscillation
---@field AnimPlayRate number @Scalar defining how fast to play the anim.
---@field AnimScale number @Scalar defining how "intense" to play the anim.
---@field AnimBlendInTime number @Linear blend-in time.
---@field AnimBlendOutTime number @Linear blend-out time.
---@field RandomAnimSegmentDuration number @When bRandomAnimSegment is true, this defines how long the anim should play.
---@field Anims ULuaArrayHelper<UCameraAnim> @Source camera animations to play. Can be empty.
---@field bRandomAnimSegment number @If true, play a random snippet of the animation of length Duration.  Implies bLoop and bRandomStartTime = true for the CameraAnim. If false, play the full anim once, non-looped. Useful for getting variety out of a single looped CameraAnim asset.
---@field RandomFinalIntenseScaleRange FVector2D
---@field RandomFinalIntenseScaleRange_X FVector2D
---@field RandomFinalIntenseScaleRange_Y FVector2D
---@field RandomFinalIntenseScaleRange_Z FVector2D
---@field RandomFinalIntenseScaleRange_Yaw FVector2D
---@field RandomFinalIntenseScaleRange_Pitch FVector2D
---@field RandomFinalIntenseScaleRange_Roll FVector2D
---@field ShakeScale number @Overall intensity scale for this shake instance.
---@field OscillatorTimeRemaining number @Time remaining for oscillation shakes. Less than 0.f means shake infinitely.
local UCameraShake = {}

---Called every tick to let the shake modify the point of view
---@param DeltaTime number
---@param Alpha number
---@param POV FMinimalViewInfo
---@param ModifiedPOV FMinimalViewInfo
function UCameraShake:BlueprintUpdateCameraShake(DeltaTime, Alpha, POV, ModifiedPOV) end

---Called when the shake starts playing
---@param Scale number
function UCameraShake:ReceivePlayShake(Scale) end

---Called to allow a shake to decide when it's finished playing.
---@return boolean
function UCameraShake:ReceiveIsFinished() end

---Called when the shake is explicitly stopped.
---@param bImmediately boolean
function UCameraShake:ReceiveStopShake(bImmediately) end
