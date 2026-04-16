---@meta

---@class FSTCameraShakeDataAssetDelegate : ULuaSingleDelegate
FSTCameraShakeDataAssetDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSTCameraShakeDataAssetDelegate:Bind(Callback, Obj) end

---执行委托
function FSTCameraShakeDataAssetDelegate:Execute() end


---@class USTCameraShakeDataAsset: UDataAsset
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
---@field OnSTCameraShakeDataAssetDelegate FSTCameraShakeDataAssetDelegate
local USTCameraShakeDataAsset = {}
