---@meta

---Supported methods for focusing the camera.
---@class ECameraFocusMethod
---@field None number @Disables DoF entirely.
---@field Manual number @Allows for specifying or animating exact focus distances.
---@field Tracking number @Locks focus to specific object.
ECameraFocusMethod = {}


---#note, this struct has a details customization in CameraFilmbackSettingsCustomization.cpp/h
---@class FCameraFilmbackSettings
---@field SensorWidth number @Horizontal size of filmback or digital sensor, in mm.
---@field SensorHeight number @Vertical size of filmback or digital sensor, in mm.
---@field SensorAspectRatio number @Read-only. Computed from Sensor dimensions.
FCameraFilmbackSettings = {}


---A named bundle of filmback settings used to implement filmback presets
---@class FNamedFilmbackPreset
---@field Name string @Name for the preset.
---@field FilmbackSettings FCameraFilmbackSettings
FNamedFilmbackPreset = {}


---#note, this struct has a details customization in CameraLensSettingsCustomization.cpp/h
---@class FCameraLensSettings
---@field MinFocalLength number @Minimum focal length for this lens
---@field MaxFocalLength number @Maximum focal length for this lens
---@field MinFStop number @Minimum aperture for this lens (e.g. 2.8 for an f/2.8 lens)
---@field MaxFStop number @Minimum aperture for this lens (e.g. 2.8 for an f/2.8 lens)
---@field MinimumFocusDistance number @Shortest distance this lens can focus on.
FCameraLensSettings = {}


---A named bundle of lens settings used to implement lens presets.
---@class FNamedLensPreset
---@field Name string @Name for the preset.
---@field LensSettings FCameraLensSettings
FNamedLensPreset = {}


---Settings to control tracking-focus mode.
---@class FCameraTrackingFocusSettings
---@field RelativeOffset FVector @Offset from actor position to track. Relative to actor if tracking an actor, relative to world otherwise.
---@field bDrawDebugTrackingFocusPoint number @True to draw a debug representation of the tracked position.
FCameraTrackingFocusSettings = {}


---Settings to control camera focus
---@class FCameraFocusSettings
---@field FocusMethod ECameraFocusMethod @Which method to use to handle camera focus
---@field ManualFocusDistance number @Manually-controlled focus distance (manual focus mode only)
---@field TrackingFocusSettings FCameraTrackingFocusSettings @Settings to control tracking focus (tracking focus mode only)
---@field bDrawDebugFocusPlane number @True to draw a translucent plane at the current focus depth, for easy tweaking.
---@field DebugFocusPlaneColor FColor @For customizing the focus plane color, in case the default doesn't show up well in your scene.
---@field bSmoothFocusChanges number @True to use interpolation to smooth out changes in focus distance, false for focus distance changes to be instantaneous.
---@field FocusSmoothingInterpSpeed number @Controls interpolation speed when smoothing focus distance changes. Ignored if bSmoothFocusChanges is false.
---@field FocusOffset number @Additional focus depth offset, used for manually tweaking if your chosen focus method needs adjustment
FCameraFocusSettings = {}


---A specialized version of a camera component, geared toward cinematic usage.
---@class UCineCameraComponent: UCameraComponent
---@field FilmbackSettings FCameraFilmbackSettings @Controls the filmback of the camera.
---@field LensSettings FCameraLensSettings @Controls the camera's lens.
---@field FocusSettings FCameraFocusSettings @Controls the camera's focus.
---@field CurrentFocalLength number @Current focal length of the camera (i.e. controls FoV, zoom)
---@field CurrentAperture number @Current aperture, in terms of f-stop (e.g. 2.8 for f/2.8)
---@field CurrentFocusDistance number @Read-only. Control this value via FocusSettings.
---@field FilmbackPresets ULuaArrayHelper<FNamedFilmbackPreset> @List of available filmback presets
---@field LensPresets ULuaArrayHelper<FNamedLensPreset> @List of available lens presets
---@field DefaultFilmbackPresetName string @Name of the default filmback preset
---@field DefaultLensPresetName string @Name of the default lens preset
---@field DefaultLensFocalLength number @Default focal length (will be constrained by default lens)
---@field DefaultLensFStop number @Default aperture (will be constrained by default lens)
local UCineCameraComponent = {}

---Returns the horizonal FOV of the camera with current settings.
---@return number
function UCineCameraComponent:GetHorizontalFieldOfView() end

---Returns the vertical FOV of the camera with current settings.
---@return number
function UCineCameraComponent:GetVerticalFieldOfView() end

---Returns the filmback name of the camera with the current settings.
---@return string
function UCineCameraComponent:GetFilmbackPresetName() end

---Set the current preset settings by preset name.
---@param InPresetName string
function UCineCameraComponent:SetFilmbackPresetByName(InPresetName) end

---Returns the lens name of the camera with the current settings.
---@return string
function UCineCameraComponent:GetLensPresetName() end

---Set the current lens settings by preset name.
---@param InPresetName string
function UCineCameraComponent:SetLensPresetByName(InPresetName) end
