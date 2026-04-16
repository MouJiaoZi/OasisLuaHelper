---@meta

---This is curve flags that are saved in asset and *
---@class EAnimAssetCurveFlags
---@field AACF_DriveMorphTarget_DEPRECATED number
---@field AACF_DriveAttribute_DEPRECATED number
---@field AACF_Editable number @Editable
---@field AACF_DriveMaterial_DEPRECATED number
---@field AACF_Metadata number @Metadata
---@field AACF_DriveTrack number
---@field AACF_Disabled number
EAnimAssetCurveFlags = {}


---@class ERawCurveTrackTypes
---@field RCT_Float number @Float Curve
---@field RCT_Vector number @Vector Curve
---@field RCT_Transform number @Transformation Curve
---@field RCT_MAX number
ERawCurveTrackTypes = {}


---UI Curve Parameter type This gets name, and cached UID and use it when needed Also it contains curve types
---@class FAnimCurveParam
---@field Name string
FAnimCurveParam = {}


---Float curve data for one track
---@class FAnimCurveBase
---@field LastObservedName_DEPRECATED string
---@field Name FSmartName
---@field CurveTypeFlags number @Curve Type Flags
FAnimCurveBase = {}


---@class FFloatCurve
---@field FloatCurve FRichCurve @Curve data for float.
FFloatCurve = {}


---@class FVectorCurve
FVectorCurve = {}


---@class FTransformCurve
---@field TranslationCurve FVectorCurve @Curve data for each transform.
---@field RotationCurve FVectorCurve @Rotation curve - right now we use euler because quat also doesn't provide linear interpolation - curve editor can't handle quat interpolation If you hit gimbal lock, you should add extra key to fix it. This will cause gimbal lock.
---@field ScaleCurve FVectorCurve
FTransformCurve = {}


---Raw Curve data for serialization
---@class FRawCurveTracks
---@field FloatCurves ULuaArrayHelper<FFloatCurve>
FRawCurveTracks = {}
