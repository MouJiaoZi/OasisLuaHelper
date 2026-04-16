---@meta

---Media track types. Note: Keep this in sync with EMediaTrackType
---@class EMediaPlayerTrack
---@field Audio number @Audio track.
---@field Caption number @Caption track.
---@field Metadata number @Metadata track.
---@field Script number @Script track.
---@field Subtitle number @Subtitle track.
---@field Text number @Text track.
---@field Video number @Video track.
EMediaPlayerTrack = {}


---Multicast delegate that is invoked when a media event occurred in the player.
---@class FOnMediaPlayerMediaEvent : ULuaSingleDelegate
FOnMediaPlayerMediaEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMediaPlayerMediaEvent:Bind(Callback, Obj) end

---执行委托
function FOnMediaPlayerMediaEvent:Execute() end


---Multicast delegate that is invoked when a media player's media has been opened.
---@class FOnMediaPlayerMediaOpened : ULuaMulticastDelegate
FOnMediaPlayerMediaOpened = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OpenedUrl: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMediaPlayerMediaOpened:Add(Callback, Obj) end

---触发 Lua 广播
---@param OpenedUrl string
function FOnMediaPlayerMediaOpened:Broadcast(OpenedUrl) end


---Multicast delegate that is invoked when a media player's media has failed to open.
---@class FOnMediaPlayerMediaOpenFailed : ULuaMulticastDelegate
FOnMediaPlayerMediaOpenFailed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FailedUrl: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMediaPlayerMediaOpenFailed:Add(Callback, Obj) end

---触发 Lua 广播
---@param FailedUrl string
function FOnMediaPlayerMediaOpenFailed:Broadcast(FailedUrl) end


---Implements a media player asset that can play movies and other media sources.
---@class UMediaPlayer: UObject
---@field OnEndReached FOnMediaPlayerMediaEvent @A delegate that is invoked when playback has reached the end of the media.
---@field OnMediaClosed FOnMediaPlayerMediaEvent @A delegate that is invoked when a media source has been closed.
---@field OnMediaOpened FOnMediaPlayerMediaOpened @A delegate that is invoked when a media source has been opened. Depending on whether the underlying player implementation opens the media synchronously or asynchronously, this event may be executed before or after the call to OpenSource / OpenUrl returns.
---@field OnMediaOpenFailed FOnMediaPlayerMediaOpenFailed @A delegate that is invoked when a media source has failed to open. This delegate is only executed if OpenSource / OpenUrl returned true and the media failed to open asynchronously later. It is not executed if OpenSource / OpenUrl returned false, indicating an immediate failure.
---@field OnPlaybackResumed FOnMediaPlayerMediaEvent @A delegate that is invoked when media playback has been resumed.
---@field OnPlaybackSuspended FOnMediaPlayerMediaEvent @A delegate that is invoked when media playback has been suspended.
---@field OnSeekCompleted FOnMediaPlayerMediaEvent @A delegate that is invoked when a seek operation completed successfully. Depending on whether the underlying player implementation performs seeks synchronously or asynchronously, this event may be executed before or after the call to Seek returns.
---@field OnTracksChanged FOnMediaPlayerMediaEvent @A delegate that is invoked when the media track collection changed.
---@field OnMediaPlayFirstFrame FOnMediaPlayerMediaEvent
---@field CacheAhead FTimespan @Duration of samples to cache ahead of the play head.
---@field CacheBehind FTimespan @Duration of samples to cache behind the play head (when not running as game).
---@field CacheBehindGame FTimespan @Duration of samples to cache behind the play head (when running as game).
---@field NativeAudioOut boolean @Output any audio via the operating system's sound mixer instead of a Sound Wave asset. If enabled, the assigned Sound Wave asset will be ignored. The SetNativeVolume function can then be used to change the audio output volume at runtime. Note that not all media player plug-ins may support native audio output on all platforms.
---@field PlayOnOpen boolean @Automatically start playback after media opened successfully. If disabled, listen to the OnMediaOpened Blueprint event to detect when the media finished opening, and then start playback using the Play function.
---@field Shuffle number @Whether playback should shuffle media sources in the play list.
---@field Loop number @Whether the player should loop when media playback reaches the end. Use the SetLooping function to change this value at runtime.
---@field PlaylistIndex number @The current index of the source in the play list being played. Use the Previous and Next methods to change this value at runtime.
---@field HorizontalFieldOfView number @The initial horizontal field of view (in Euler degrees; default = 90). This setting is used only for 360 videos. It determines the portion of the video that is visible at a time. To modify the field of view at runtime in Blueprints, use the SetHorizontalFieldOfView function.
---@field VerticalFieldOfView number @The initial vertical field of view (in Euler degrees; default = 60). This setting is used only for 360 videos. It determines the portion of the video that is visible at a time. To modify the field of view at runtime in Blueprints, use the SetHorizontalFieldOfView function. Please note that some 360 video players may be able to change only the horizontal field of view, and this setting may be ignored.
---@field ViewRotation FRotator @The initial view rotation. This setting is used only for 360 videos. It determines the rotation of the video's view. To modify the view orientation at runtime in Blueprints, use the GetViewRotation and SetViewRotation functions. Please note that not all players may support video view rotations.
---@field PlayerGuid FGuid @The player's globally unique identifier.
local UMediaPlayer = {}

---Check whether media playback can be paused right now. Playback can be paused if the media supports pausing and if it is currently playing.
---@return boolean
function UMediaPlayer:CanPause() end

---Check whether the specified media source can be played by this player. If a desired player name is set for this player, it will only check whether that particular player type can play the specified source.
---@param MediaSource UMediaSource
---@return boolean
function UMediaPlayer:CanPlaySource(MediaSource) end

---Check whether the specified URL can be played by this player. If a desired player name is set for this player, it will only check whether that particular player type can play the specified URL.
---@param Url string
---@return boolean
function UMediaPlayer:CanPlayUrl(Url) end

---Close the currently open media, if any.
function UMediaPlayer:Close() end

---Get the number of channels in the specified audio track.
---@param TrackIndex number
---@param FormatIndex number
---@return number
function UMediaPlayer:GetAudioTrackChannels(TrackIndex, FormatIndex) end

---Get the sample rate of the specified audio track.
---@param TrackIndex number
---@param FormatIndex number
---@return number
function UMediaPlayer:GetAudioTrackSampleRate(TrackIndex, FormatIndex) end

---Get the type of the specified audio track format.
---@param TrackIndex number
---@param FormatIndex number
---@return string
function UMediaPlayer:GetAudioTrackType(TrackIndex, FormatIndex) end

---Get the name of the current desired native player.
---@return string
function UMediaPlayer:GetDesiredPlayerName() end

---Get the media's duration.
---@return FTimespan
function UMediaPlayer:GetDuration() end

---Get the current horizontal field of view (only for 360 videos).
---@return number
function UMediaPlayer:GetHorizontalFieldOfView() end

---Get the human readable name of the currently loaded media source.
---@return string
function UMediaPlayer:GetMediaName() end

---Get the number of tracks of the given type.
---@param TrackType EMediaPlayerTrack
---@return number
function UMediaPlayer:GetNumTracks(TrackType) end

---Get the number of formats of the specified track.
---@param TrackType EMediaPlayerTrack
---@param TrackIndex number
---@return number
function UMediaPlayer:GetNumTrackFormats(TrackType, TrackIndex) end

---Get the name of the current native media player.
---@return string
function UMediaPlayer:GetPlayerName() end

---Get the media's current playback rate.
---@return number
function UMediaPlayer:GetRate() end

---Get the index of the currently selected track of the given type.
---@param TrackType EMediaPlayerTrack
---@return number
function UMediaPlayer:GetSelectedTrack(TrackType) end

---Get the supported playback rates.
---@param OutRates ULuaArrayHelper<FFloatRange>
---@param Unthinned boolean
function UMediaPlayer:GetSupportedRates(OutRates, Unthinned) end

---Get the media's current playback time.
---@return FTimespan
function UMediaPlayer:GetTime() end

---Get the human readable name of the specified track.
---@param TrackType EMediaPlayerTrack
---@param TrackIndex number
---@return string
function UMediaPlayer:GetTrackDisplayName(TrackType, TrackIndex) end

---Get the index of the active format of the specified track type.
---@param TrackType EMediaPlayerTrack
---@param TrackIndex number
---@return number
function UMediaPlayer:GetTrackFormat(TrackType, TrackIndex) end

---Get the language tag of the specified track.
---@param TrackType EMediaPlayerTrack
---@param TrackIndex number
---@return string
function UMediaPlayer:GetTrackLanguage(TrackType, TrackIndex) end

---Get the current vertical field of view (only for 360 videos).
---@return number
function UMediaPlayer:GetVerticalFieldOfView() end

---Get the aspect ratio of the specified video track.
---@param TrackIndex number
---@param FormatIndex number
---@return number
function UMediaPlayer:GetVideoTrackAspectRatio(TrackIndex, FormatIndex) end

---Get the current dimensions of the specified video track.
---@param TrackIndex number
---@param FormatIndex number
---@return FIntPoint
function UMediaPlayer:GetVideoTrackDimensions(TrackIndex, FormatIndex) end

---Get the frame rate of the specified video track.
---@param TrackIndex number
---@param FormatIndex number
---@return number
function UMediaPlayer:GetVideoTrackFrameRate(TrackIndex, FormatIndex) end

---Get the supported range of frame rates of the specified video track.
---@param TrackIndex number
---@param FormatIndex number
---@return FFloatRange
function UMediaPlayer:GetVideoTrackFrameRates(TrackIndex, FormatIndex) end

---Get the type of the specified video track format.
---@param TrackIndex number
---@param FormatIndex number
---@return string
function UMediaPlayer:GetVideoTrackType(TrackIndex, FormatIndex) end

---Get the current view rotation (only for 360 videos).
---@return FRotator
function UMediaPlayer:GetViewRotation() end

---Check whether the player is in an error state. When the player is in an error state, no further operations are possible. The current media must be closed, and a new media source must be opened before the player can be used again. Errors are usually caused by faulty media files or interrupted network connections.
---@return boolean
function UMediaPlayer:HasError() end

---Check whether playback is buffering data.
---@return boolean
function UMediaPlayer:IsBuffering() end

---Check whether the player is currently connecting to a media source.
---@return boolean
function UMediaPlayer:IsConnecting() end

---Check whether playback is looping.
---@return boolean
function UMediaPlayer:IsLooping() end

---Check whether playback is currently paused.
---@return boolean
function UMediaPlayer:IsPaused() end

---Check whether playback has started.
---@return boolean
function UMediaPlayer:IsPlaying() end

---Check whether the media is currently opening or buffering.
---@return boolean
function UMediaPlayer:IsPreparing() end

---Check whether media is ready for playback. A player is ready for playback if it has a media source opened that finished preparing and is not in an error state.
---@return boolean
function UMediaPlayer:IsReady() end

---Open the next item in the current play list. The player will start playing the new media source if it was playing something previously, otherwise it will only open the media source.
---@return boolean
function UMediaPlayer:Next() end

---Opens the specified media file path. A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the media is ready!
---@param FilePath string
---@return boolean
function UMediaPlayer:OpenFile(FilePath) end

---Open a particular media source in the specified play list.
---@param InPlaylist UMediaPlaylist
---@param Index number
---@return boolean
function UMediaPlayer:OpenPlaylistIndex(InPlaylist, Index) end

---Open the specified media source. A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the media is ready!
---@param MediaSource UMediaSource
---@return boolean
function UMediaPlayer:OpenSource(MediaSource) end

---Opens the specified media URL. A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the media is ready!
---@param Url string
---@return boolean
function UMediaPlayer:OpenUrl(Url) end

---Pauses media playback. This is the same as setting the playback rate to 0.0.
---@return boolean
function UMediaPlayer:Pause() end

---Starts media playback. This is the same as setting the playback rate to 1.0.
---@return boolean
function UMediaPlayer:Play() end

---Open the previous item in the current play list. The player will start playing the new media source if it was playing something previously, otherwise it will only open the media source.
---@return boolean
function UMediaPlayer:Previous() end

---Reopens the currently opened media or play list.
---@return boolean
function UMediaPlayer:Reopen() end

---Rewinds the media to the beginning. This is the same as seeking to zero time.
---@return boolean
function UMediaPlayer:Rewind() end

---Seeks to the specified playback time.
---@param Time FTimespan
---@return boolean
function UMediaPlayer:Seek(Time) end

---Select the active track of the given type. The selected track will use its currently active format. Active formats will be remembered on a per track basis. The first available format is active by default. To switch the track format, use SetTrackFormat instead.
---@param TrackType EMediaPlayerTrack
---@param TrackIndex number
---@return boolean
function UMediaPlayer:SelectTrack(TrackType, TrackIndex) end

---Set the name of the desired native player.
---@param PlayerName string
function UMediaPlayer:SetDesiredPlayerName(PlayerName) end

---Enables or disables playback looping.
---@param Looping boolean
---@return boolean
function UMediaPlayer:SetLooping(Looping) end

---Changes the media's playback rate.
---@param Rate number
---@return boolean
function UMediaPlayer:SetRate(Rate) end

---Set the volume on the native player if not mixing with Sound Wave asset. The SetNativeVolume can be used to change the audio output volume at runtime. Note that not all media player plug-ins may support native audio output on all platforms.
---@param Volume number
---@return boolean
function UMediaPlayer:SetNativeVolume(Volume) end

---Set the format on the specified track. Selecting the format will not switch to the specified track. To switch tracks, use SelectTrack instead. If the track is already selected, the format change will be applied immediately.
---@param TrackType EMediaPlayerTrack
---@param TrackIndex number
---@param FormatIndex number
---@return boolean
function UMediaPlayer:SetTrackFormat(TrackType, TrackIndex, FormatIndex) end

---Set the frame rate of the specified video track.
---@param TrackIndex number
---@param FormatIndex number
---@param FrameRate number
---@return boolean
function UMediaPlayer:SetVideoTrackFrameRate(TrackIndex, FormatIndex, FrameRate) end

---Set the field of view (only for 360 videos).
---@param Horizontal number
---@param Vertical number
---@param Absolute boolean
---@return boolean
function UMediaPlayer:SetViewField(Horizontal, Vertical, Absolute) end

---Set the view's rotation (only for 360 videos).
---@param Rotation FRotator
---@param Absolute boolean
---@return boolean
function UMediaPlayer:SetViewRotation(Rotation, Absolute) end

---Check whether the specified playback rate is supported.
---@param Rate number
---@param Unthinned boolean
---@return boolean
function UMediaPlayer:SupportsRate(Rate, Unthinned) end

---Check whether the currently loaded media supports scrubbing.
---@return boolean
function UMediaPlayer:SupportsScrubbing() end

---Check whether the currently loaded media can jump to a certain position.
---@return boolean
function UMediaPlayer:SupportsSeeking() end

---Sets the audio device for the media player; currently only effective on PC platforms. add by watsonxie
---@param DeviceGUID string
function UMediaPlayer:SetAudioDeviceGUID(DeviceGUID) end
