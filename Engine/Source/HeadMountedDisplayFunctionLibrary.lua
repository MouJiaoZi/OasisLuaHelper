---@meta

---@class UHeadMountedDisplayFunctionLibrary: UBlueprintFunctionLibrary
local UHeadMountedDisplayFunctionLibrary = {}

---Returns whether or not we are currently using the head mounted display.
---@return boolean
function UHeadMountedDisplayFunctionLibrary:IsHeadMountedDisplayEnabled() end

---Returns whether or not the HMD hardware is connected and ready to use.  It may or may not actually be in use.
---@return boolean
function UHeadMountedDisplayFunctionLibrary:IsHeadMountedDisplayConnected() end

---Switches to/from using HMD and stereo rendering.
---@param bEnable boolean
---@return boolean
function UHeadMountedDisplayFunctionLibrary:EnableHMD(bEnable) end

---Returns the name of the device, so scripts can modify their behaviour appropriately
---@return string
function UHeadMountedDisplayFunctionLibrary:GetHMDDeviceName() end

---Returns the worn state of the device.
---@return EHMDWornState
function UHeadMountedDisplayFunctionLibrary:GetHMDWornState() end

---Grabs the current orientation and position for the HMD.  If positional tracking is not available, DevicePosition will be a zero vector
---@param DeviceRotation FRotator
---@param DevicePosition FVector
function UHeadMountedDisplayFunctionLibrary:GetOrientationAndPosition(DeviceRotation, DevicePosition) end

---If the HMD supports positional tracking, whether or not we are currently being tracked
---@return boolean
function UHeadMountedDisplayFunctionLibrary:HasValidTrackingPosition() end

---If the HMD has multiple positional tracking sensors, return a total number of them currently connected.
---@return number
function UHeadMountedDisplayFunctionLibrary:GetNumOfTrackingSensors() end

---If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking. This allows an in-game representation of the legal positional tracking range.  All values will be zeroed if the sensor is not available or the HMD does not support it.
---@param Origin FVector
---@param Rotation FRotator
---@param LeftFOV number
---@param RightFOV number
---@param TopFOV number
---@param BottomFOV number
---@param Distance number
---@param NearPlane number
---@param FarPlane number
---@param IsActive boolean
---@param Index number
function UHeadMountedDisplayFunctionLibrary:GetTrackingSensorParameters(Origin, Rotation, LeftFOV, RightFOV, TopFOV, BottomFOV, Distance, NearPlane, FarPlane, IsActive, Index) end

---If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking. This allows an in-game representation of the legal positional tracking range.  All values will be zeroed if the sensor is not available or the HMD does not support it.
---@param CameraOrigin FVector
---@param CameraRotation FRotator
---@param HFOV number
---@param VFOV number
---@param CameraDistance number
---@param NearPlane number
---@param FarPlane number
function UHeadMountedDisplayFunctionLibrary:GetPositionalTrackingCameraParameters(CameraOrigin, CameraRotation, HFOV, VFOV, CameraDistance, NearPlane, FarPlane) end

---Resets orientation by setting roll and pitch to 0, assuming that current yaw is forward direction and assuming current position as a 'zero-point' (for positional tracking).
---@param Yaw number
---@param Options EOrientPositionSelector
function UHeadMountedDisplayFunctionLibrary:ResetOrientationAndPosition(Yaw, Options) end

---Sets near and far clipping planes (NCP and FCP) for stereo rendering. Similar to 'stereo ncp= fcp' console command, but NCP and FCP set by this call won't be saved in .ini file.
---@param Near number
---@param Far number
function UHeadMountedDisplayFunctionLibrary:SetClippingPlanes(Near, Far) end

---Returns screen percentage to be used in VR mode.
---@return number
function UHeadMountedDisplayFunctionLibrary:GetScreenPercentage() end

---Sets the World to Meters scale, which changes the scale of the world as perceived by the player
---@param WorldContext UObject
---@param NewScale number
function UHeadMountedDisplayFunctionLibrary:SetWorldToMetersScale(WorldContext, NewScale) end

---Returns the World to Meters scale, which corresponds to the scale of the world as perceived by the player
---@param WorldContext UObject
---@return number
function UHeadMountedDisplayFunctionLibrary:GetWorldToMetersScale(WorldContext) end

---Sets current tracking origin type (eye level or floor level).
---@param Origin EHMDTrackingOrigin
function UHeadMountedDisplayFunctionLibrary:SetTrackingOrigin(Origin) end

---Returns current tracking origin type (eye level or floor level).
function UHeadMountedDisplayFunctionLibrary:GetTrackingOrigin() end

---Returns current state of VR focus.
---@param bUseFocus boolean
---@param bHasFocus boolean
function UHeadMountedDisplayFunctionLibrary:GetVRFocusState(bUseFocus, bHasFocus) end

---Return true if spectator screen mode control is available.
---@return boolean
function UHeadMountedDisplayFunctionLibrary:IsSpectatorScreenModeControllable() end

---Sets the social screen mode.
---@param Mode ESpectatorScreenMode
function UHeadMountedDisplayFunctionLibrary:SetSpectatorScreenMode(Mode) end

---Change the texture displayed on the social screen
---@param InTexture UTexture
function UHeadMountedDisplayFunctionLibrary:SetSpectatorScreenTexture(InTexture) end

---Setup the layout for ESpectatorScreenMode::TexturePlusEye.
---@param EyeRectMin FVector2D
---@param EyeRectMax FVector2D
---@param TextureRectMin FVector2D
---@param TextureRectMax FVector2D
---@param bDrawEyeFirst boolean
---@param bClearBlack boolean
function UHeadMountedDisplayFunctionLibrary:SetSpectatorScreenModeTexturePlusEyeLayout(EyeRectMin, EyeRectMax, TextureRectMin, TextureRectMax, bDrawEyeFirst, bClearBlack) end
