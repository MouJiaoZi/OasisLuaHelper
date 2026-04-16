---@meta

---@class FLevelSequenceSnapshotSettings
---@field ZeroPadAmount number @Zero pad frames
---@field FrameRate number @Playback framerate
FLevelSequenceSnapshotSettings = {}


---Frame snapshot information for a level sequence
---@class FLevelSequencePlayerSnapshot
---@field MasterName string
---@field MasterTime number
---@field CurrentShotName string
---@field CurrentShotLocalTime number
---@field Settings FLevelSequenceSnapshotSettings
---@field ShotID FMovieSceneSequenceID
FLevelSequencePlayerSnapshot = {}


---@class FOnLevelSequencePlayerCameraCutEvent : ULuaMulticastDelegate
FOnLevelSequencePlayerCameraCutEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CameraComponent: UCameraComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLevelSequencePlayerCameraCutEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param CameraComponent UCameraComponent
function FOnLevelSequencePlayerCameraCutEvent:Broadcast(CameraComponent) end


---ULevelSequencePlayer is used to actually "play" an level sequence asset at runtime. This class keeps track of playback state and provides functions for manipulating an level sequence while its playing.
---@class ULevelSequencePlayer: UMovieSceneSequencePlayer
---@field OnCameraCut FOnLevelSequencePlayerCameraCutEvent @Event triggered when there is a camera cut
---@field AdditionalEventReceivers ULuaArrayHelper<UObject> @Array of additional event receivers
local ULevelSequencePlayer = {}
