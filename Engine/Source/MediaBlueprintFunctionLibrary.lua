---@meta

---Filter flags for the EnumerateAudioCaptureDevices BP function.
---@class EMediaAudioCaptureDeviceFilter
---@field Card number @Audio capture cards.
---@field Microphone number @Microphone.
---@field Software number @Software device.
---@field Unknown number @Unknown audio capture device types.
EMediaAudioCaptureDeviceFilter = {}


---@class EMediaVideoCaptureDeviceFilter
---@field Card number @Video capture card.
---@field Software number @Software video capture device.
---@field Unknown number @Unknown video capture device types.
---@field Webcam number @Web cam.
EMediaVideoCaptureDeviceFilter = {}


---@class EMediaWebcamCaptureDeviceFilter
---@field DepthSensor number @Depth sensor.
---@field Front number @Front facing web cam.
---@field Rear number @Rear facing web cam.
---@field Unknown number @Unknown web cam types.
EMediaWebcamCaptureDeviceFilter = {}


---@class FMediaCaptureDevice
---@field DisplayName string @Human readable display name.
---@field Url string @Media URL string for use with media players.
FMediaCaptureDevice = {}


---Blueprint library for Media related functions.
---@class UMediaBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local UMediaBlueprintFunctionLibrary = {}

---Enumerate available audio capture devices. To filter for a specific subset of devices, use the MakeBitmask node with EMediaAudioCaptureDeviceFilter as the Bitmask Enum.
---@param OutDevices ULuaArrayHelper<FMediaCaptureDevice>
---@param Filter number
function UMediaBlueprintFunctionLibrary:EnumerateAudioCaptureDevices(OutDevices, Filter) end

---Enumerate available audio capture devices. To filter for a specific subset of devices, use the MakeBitmask node with EMediaVideoCaptureDeviceFilter as the Bitmask Enum.
---@param OutDevices ULuaArrayHelper<FMediaCaptureDevice>
---@param Filter number
function UMediaBlueprintFunctionLibrary:EnumerateVideoCaptureDevices(OutDevices, Filter) end

---Enumerate available audio capture devices. To filter for a specific subset of devices, use the MakeBitmask node with EMediaWebcamCaptureDeviceFilter as the Bitmask Enum.
---@param OutDevices ULuaArrayHelper<FMediaCaptureDevice>
---@param Filter number
function UMediaBlueprintFunctionLibrary:EnumerateWebcamCaptureDevices(OutDevices, Filter) end
