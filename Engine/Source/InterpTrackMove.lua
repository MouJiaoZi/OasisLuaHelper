---@meta

---@class EInterpTrackMoveRotMode
---@field IMR_Keyframed number @Should take orientation from the keyframe.
---@field IMR_LookAtGroup number @Point the X-Axis of the controlled Actor at the group specified by LookAtGroupName.
---@field IMR_Ignore number @Do not change rotation. Ignore it.
---@field IMR_MAX number
EInterpTrackMoveRotMode = {}


---Array of group names to retrieve position and rotation data from instead of using the data stored in the keyframe. A value of NAME_None means to use the PosTrack and EulerTrack data for the keyframe. There needs to be the same amount of elements in this array as there are keyframes.
---@class FInterpLookupPoint
---@field GroupName string
---@field Time number
FInterpLookupPoint = {}


---@class FInterpLookupTrack
---@field Points ULuaArrayHelper<FInterpLookupPoint>
FInterpLookupTrack = {}


---Track containing data for moving an actor around over time.
---@class UInterpTrackMove: UInterpTrack
---@field PosTrack FInterpCurveVector @Actual position keyframe data.
---@field EulerTrack FInterpCurveVector @Actual rotation keyframe data, stored as Euler angles in degrees, for easy editing on curve.
---@field LookupTrack any
---@field LookAtGroupName string @When using IMR_LookAtGroup, specifies the Group which this track should always point its actor at.
---@field LinCurveTension number @Controls the tightness of the curve for the translation path.
---@field AngCurveTension number @Controls the tightness of the curve for the rotation path.
---@field bUseQuatInterpolation number @Use a Quaternion linear interpolation between keys. This is robust and will find the 'shortest' distance between keys, but does not support ease in/out.
---@field bShowArrowAtKeys number @In the editor, show a small arrow at each keyframe indicating the rotation at that key.
---@field bDisableMovement number @Disable previewing of this track - will always position  AActor  at Time=0.0. Useful when keyframing an object relative to this group.
---@field bShowTranslationOnCurveEd number @If false, when this track is displayed on the Curve Editor in Matinee, do not show the Translation tracks.
---@field bShowRotationOnCurveEd number @If false, when this track is displayed on the Curve Editor in Matinee, do not show the Rotation tracks.
---@field bHide3DTrack number @If true, 3D representation of this track in the 3D viewport is disabled.
---@field RotMode EInterpTrackMoveRotMode
local UInterpTrackMove = {}
