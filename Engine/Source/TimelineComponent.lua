---@meta

---Whether or not the timeline should be finished after the specified length, or the last keyframe in the tracks
---@class ETimelineLengthMode
---@field TL_TimelineLength number
---@field TL_LastKeyFrame number
ETimelineLengthMode = {}


---Does timeline play or reverse ?
---@class ETimelineDirection
---@field Forward number
---@field Backward number
ETimelineDirection = {}


---Struct that contains one entry for an 'event' during the timeline
---@class FTimelineEventEntry
---@field Time number @Time at which event should fire
---@field EventFunc FOnTimelineEvent @Function to execute when Time is reached
FTimelineEventEntry = {}


---Struct that contains one entry for each vector interpolation performed by the timeline
---@class FTimelineVectorTrack
---@field InterpFunc FOnTimelineVector @Function that the output from ValueCurve will be passed to
---@field TrackName string @Name of track, usually set in Timeline Editor. Used by SetInterpVectorCurve function.
---@field VectorPropertyName string @Name of property that we should update from this curve
FTimelineVectorTrack = {}


---Struct that contains one entry for each vector interpolation performed by the timeline
---@class FTimelineFloatTrack
---@field InterpFunc FOnTimelineFloat @Function that the output from ValueCurve will be passed to
---@field TrackName string @Name of track, usually set in Timeline Editor. Used by SetInterpFloatCurve function.
---@field FloatPropertyName string @Name of property that we should update from this curve
FTimelineFloatTrack = {}


---Struct that contains one entry for each linear color interpolation performed by the timeline
---@class FTimelineLinearColorTrack
---@field InterpFunc FOnTimelineLinearColor @Function that the output from ValueCurve will be passed to
---@field TrackName string @Name of track, usually set in Timeline Editor. Used by SetInterpLinearColorCurve function.
---@field LinearColorPropertyName string @Name of property that we should update from this curve
FTimelineLinearColorTrack = {}


---@class FTimeline
---@field LengthMode ETimelineLengthMode @Specified how the timeline determines its own length (e.g. specified length, last keyframe)
---@field Length number @How long the timeline is, will stop or loop at the end
---@field bLooping number @Whether timeline should loop when it reaches the end, or stop
---@field bReversePlayback number @If playback should move the current position backwards instead of forwards
---@field bPlaying number @Are we currently playing (moving Position)
---@field PlayRate number @How fast we should play through the timeline
---@field Position number @Current position in the timeline
---@field Events ULuaArrayHelper<FTimelineEventEntry> @Array of events that are fired at various times during the timeline
---@field InterpVectors ULuaArrayHelper<FTimelineVectorTrack> @Array of vector interpolations performed during the timeline
---@field InterpFloats ULuaArrayHelper<FTimelineFloatTrack> @Array of float interpolations performed during the timeline
---@field InterpLinearColors ULuaArrayHelper<FTimelineLinearColorTrack> @Array of linear color interpolations performed during the timeline
---@field TimelinePostUpdateFunc FOnTimelineEvent @Called whenever this timeline is playing and updates - done after all delegates are executed and variables updated
---@field TimelineFinishedFunc FOnTimelineEvent @Called whenever this timeline is finished. Is not called if 'stop' is used to terminate timeline early
---@field PropertySetObject UObject @Optional. If set, Timeline will also set float/vector properties on this object using the PropertyName set in the tracks.
---@field DirectionPropertyName string @Optional. If set, Timeline will also set ETimelineDirection property on PropertySetObject using the name.
FTimeline = {}


---Signature of function to handle a timeline 'event'
---@class FOnTimelineEvent : ULuaSingleDelegate
FOnTimelineEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTimelineEvent:Bind(Callback, Obj) end

---执行委托
function FOnTimelineEvent:Execute() end


---Signature of function to handle timeline float track
---@class FOnTimelineFloat : ULuaSingleDelegate
FOnTimelineFloat = {}

---绑定回调函数
---@param Callback fun(Obj: any, Output: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTimelineFloat:Bind(Callback, Obj) end

---执行委托
---@param Output number
function FOnTimelineFloat:Execute(Output) end


---Signature of function to handle timeline vector track
---@class FOnTimelineVector : ULuaSingleDelegate
FOnTimelineVector = {}

---绑定回调函数
---@param Callback fun(Obj: any, Output: FVector) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTimelineVector:Bind(Callback, Obj) end

---执行委托
---@param Output FVector
function FOnTimelineVector:Execute(Output) end


---Signature of function to handle linear color track
---@class FOnTimelineLinearColor : ULuaSingleDelegate
FOnTimelineLinearColor = {}

---绑定回调函数
---@param Callback fun(Obj: any, Output: FLinearColor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTimelineLinearColor:Bind(Callback, Obj) end

---执行委托
---@param Output FLinearColor
function FOnTimelineLinearColor:Execute(Output) end


---Static version of delegate to handle a timeline 'event'
---@class FOnTimelineEventStatic : ULuaSingleDelegate
FOnTimelineEventStatic = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTimelineEventStatic:Bind(Callback, Obj) end

---执行委托
function FOnTimelineEventStatic:Execute() end


---Static version of timeline delegate for a float track
---@class FOnTimelineFloatStatic : ULuaSingleDelegate
FOnTimelineFloatStatic = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTimelineFloatStatic:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
function FOnTimelineFloatStatic:Execute(Param1) end


---Static version of timeline delegate for a vector track
---@class FOnTimelineVectorStatic : ULuaSingleDelegate
FOnTimelineVectorStatic = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FVector) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTimelineVectorStatic:Bind(Callback, Obj) end

---执行委托
---@param Param1 FVector
function FOnTimelineVectorStatic:Execute(Param1) end


---Static version of timeline delegate for a linear color track
---@class FOnTimelineLinearColorStatic : ULuaSingleDelegate
FOnTimelineLinearColorStatic = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FLinearColor) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTimelineLinearColorStatic:Bind(Callback, Obj) end

---执行委托
---@param Param1 FLinearColor
function FOnTimelineLinearColorStatic:Execute(Param1) end


---TimelineComponent holds a series of events, floats, vectors or colors with associated keyframes. Events can be triggered at keyframes along the timeline. Floats, vectors, and colors are interpolated between keyframes along the timeline.
---@class UTimelineComponent: UActorComponent
---@field TheTimeline FTimeline @The actual timeline structure
---@field bIgnoreTimeDilation number @True if global time dilation should be ignored by this timeline, false otherwise.
local UTimelineComponent = {}

---Start playback of timeline
function UTimelineComponent:Play() end

---Start playback of timeline from the start
function UTimelineComponent:PlayFromStart() end

---Start playback of timeline in reverse
function UTimelineComponent:Reverse() end

---Start playback of timeline in reverse from the end
function UTimelineComponent:ReverseFromEnd() end

---Stop playback of timeline
function UTimelineComponent:Stop() end

---Get whether this timeline is playing or not.
---@return boolean
function UTimelineComponent:IsPlaying() end

---Get whether we are reversing or not
---@return boolean
function UTimelineComponent:IsReversing() end

---Jump to a position in the timeline.
---@param NewPosition number
---@param bFireEvents boolean
---@param bFireUpdate boolean
function UTimelineComponent:SetPlaybackPosition(NewPosition, bFireEvents, bFireUpdate) end

---Get the current playback position of the Timeline
---@return number
function UTimelineComponent:GetPlaybackPosition() end

---true means we would loop, false means we should not.
---@param bNewLooping boolean
function UTimelineComponent:SetLooping(bNewLooping) end

---Get whether we are looping or not
---@return boolean
function UTimelineComponent:IsLooping() end

---Sets the new play rate for this timeline
---@param NewRate number
function UTimelineComponent:SetPlayRate(NewRate) end

---Get the current play rate for this timeline
---@return number
function UTimelineComponent:GetPlayRate() end

---Set the new playback position time to use
---@param NewTime number
function UTimelineComponent:SetNewTime(NewTime) end

---Get length of the timeline
---@return number
function UTimelineComponent:GetTimelineLength() end

---Set length of the timeline
---@param NewLength number
function UTimelineComponent:SetTimelineLength(NewLength) end

---Sets the length mode of the timeline
---@param NewLengthMode ETimelineLengthMode
function UTimelineComponent:SetTimelineLengthMode(NewLengthMode) end

---Set whether to ignore time dilation.
---@param bNewIgnoreTimeDilation boolean
function UTimelineComponent:SetIgnoreTimeDilation(bNewIgnoreTimeDilation) end

---Get whether to ignore time dilation.
---@return boolean
function UTimelineComponent:GetIgnoreTimeDilation() end

---Update a certain float track's curve
---@param NewFloatCurve UCurveFloat
---@param FloatTrackName string
function UTimelineComponent:SetFloatCurve(NewFloatCurve, FloatTrackName) end

---Update a certain vector track's curve
---@param NewVectorCurve UCurveVector
---@param VectorTrackName string
function UTimelineComponent:SetVectorCurve(NewVectorCurve, VectorTrackName) end

---Update a certain linear color track's curve
---@param NewLinearColorCurve UCurveLinearColor
---@param LinearColorTrackName string
function UTimelineComponent:SetLinearColorCurve(NewLinearColorCurve, LinearColorTrackName) end

function UTimelineComponent:OnRep_Timeline() end
