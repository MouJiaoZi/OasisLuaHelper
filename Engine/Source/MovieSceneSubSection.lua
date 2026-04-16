---@meta

---@class FOnSequenceChanged : ULuaSingleDelegate
FOnSequenceChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UMovieSceneSequence) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSequenceChanged:Bind(Callback, Obj) end

---执行委托
---@param Param1 UMovieSceneSequence
function FOnSequenceChanged:Execute(Param1) end


---Implements a section in sub-sequence tracks.
---@class UMovieSceneSubSection: UMovieSceneSection
---@field Parameters FMovieSceneSectionParameters
---@field StartOffset_DEPRECATED number
---@field TimeScale_DEPRECATED number
---@field PrerollTime_DEPRECATED number
---@field ActorToRecord TLazyObjectPtr<AActor> @Target actor to record
---@field TargetSequenceName string @Target name of sequence to try to record to (will record automatically to another if this already exists)
---@field TargetPathToRecordTo FDirectoryPath @Target path of sequence to record to
local UMovieSceneSubSection = {}
