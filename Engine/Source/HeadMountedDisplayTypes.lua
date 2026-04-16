---@meta

---@class EOrientPositionSelector
---@field Orientation number @Orientation
---@field Position number @Position
---@field OrientationAndPosition number @Orientation and Position
EOrientPositionSelector = {}


---For HMDs that support it, this specifies whether the origin of the tracking universe will be at the floor, or at the user's eye height
---@class EHMDTrackingOrigin
---@field Floor number @Floor Level
---@field Eye number @Eye Level
EHMDTrackingOrigin = {}


---Stores if the user is wearing the HMD or not. For HMDs without a sensor to detect the user wearing it, the state defaults to Unknown.
---@class EHMDWornState
---@field Unknown number @Unknown
---@field Worn number @Worn
---@field NotWorn number @Not Worn
EHMDWornState = {}


---The Spectator Screen Mode controls what the non-vr video device displays on platforms that support one. Not all modes are universal. Modes SingleEyeCroppedToFill, Texture, and MirrorPlusTexture are supported on all. Disabled is supported on all except PSVR.
---@class ESpectatorScreenMode
---@field Disabled number @Disabled
---@field SingleEyeLetterboxed number @SingleEyeLetterboxed
---@field Undistorted number @Undistorted
---@field Distorted number @Distorted
---@field SingleEye number @SingleEye
---@field SingleEyeCroppedToFill number @SingleEyeCroppedToFill
---@field Texture number @Texture
---@field TexturePlusEye number @TexturePlusEye
ESpectatorScreenMode = {}


---@class FSpectatorScreenRenderDelegate : ULuaSingleDelegate
FSpectatorScreenRenderDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FRHICommandListImmediate, Param2: FTexture2DRHIRef, Param3: FTexture2DRHIRef, Param4: FTexture2DRHIRef, Param5: FVector2D) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSpectatorScreenRenderDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FRHICommandListImmediate
---@param Param2 FTexture2DRHIRef
---@param Param3 FTexture2DRHIRef
---@param Param4 FTexture2DRHIRef
---@param Param5 FVector2D
function FSpectatorScreenRenderDelegate:Execute(Param1, Param2, Param3, Param4, Param5) end
