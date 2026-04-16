---@meta

---语音系统接口库
---@class UGCSoundManagerSystem
UGCSoundManagerSystem = {}

---播放 2D 音效
---生效范围：客户端
---@param AKEvent UAkAudioEvent @音效资源（通过 UE.LoadObject(SoundPath) 获取）
---@return number @ 音效 ID
function UGCSoundManagerSystem.PlaySound2D(AKEvent) end

---在指定位置播放音效
---生效范围：客户端
---@param AKEvent UAkAudioEvent @音效资源（通过 UE.LoadObject(SoundPath) 获取），需要导入音效时选 3D
---@param Location Vector @位置
---@param Orientation Rotator @旋转 可使用 Rotator.New(Roll,Pitch,Yaw) 创建,结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw}
---@return number @ 音效 ID
function UGCSoundManagerSystem.PlaySoundAtLocation(AKEvent, Location, Orientation) end

---依附于 Actor 播放音效
---生效范围：客户端
---@param AKEvent UAkAudioEvent @音效资源（通过 UE.LoadObject(SoundPath) 获取）
---@param AttachedActor Actor @依附的 Actor
---@param StopWhenAttachedToDestroyed boolean @依附的 Actor 销毁时是否停止音效播放
---@return number @ 音效 ID
function UGCSoundManagerSystem.PlaySoundAttachActor(AKEvent, AttachedActor, StopWhenAttachedToDestroyed) end

---停止全部音效
---生效范围：客户端
function UGCSoundManagerSystem.StopAllSound() end

---停止指定 Actor 上的所有音效
---生效范围：客户端
---@param Actor Actor @指定的Actor
function UGCSoundManagerSystem.StopSoundByActor(Actor) end

---停止指定 ID 的音效
---生效范围：客户端
---@param ID number @音效 ID
function UGCSoundManagerSystem.StopSoundByID(ID) end

---在以指定音量音高的方式播放音效，如果播放的是同一个音效，必须在上次播放完成再开始下一个播放，音效资源必须在最新的UGC编辑器上制作生成的
---生效范围：客户端
---@param AKEvent UAkAudioEvent @音效资源（通过 UE.LoadObject(SoundPath) 获取）
---@param AttachedActor Actor @依附的 Actor
---@param Volume number @范围为-12到12的值  如果不想调整该参数就传一个范围以外的值
---@param Pitch number @范围为-2400到2400的值 如果不想调整该参数就传一个范围以外的值
---@param StopWhenAttachedToDestroyed boolean @依附的 Actor 销毁时是否停止音效播放
---@return number @ 音效 ID
function UGCSoundManagerSystem.PlaySoundWithVolumePitch(AKEvent, AttachedActor, Volume, Pitch, StopWhenAttachedToDestroyed) end

---播放指定时间范围的音频
---生效范围：客户端
---@param AKEvent UAkAudioEvent @音效资源（通过 UE.LoadObject(SoundPath) 获取）
---@param AttachedActor Actor @依附的 Actor
---@param StartTime number @开始时间
---@param EndTime number @结束时间
---@param ID number @音效 ID
function UGCSoundManagerSystem.PlaySoundWithRange(AKEvent, AttachedActor, StartTime, EndTime) end

---播放循环音频
---生效范围：客户端
---@param AKEvent UAkAudioEvent @音效资源（通过 UE.LoadObject(SoundPath) 获取）
---@param AttachedActor Actor @依附的 Actor
function UGCSoundManagerSystem.PlaySoundWithLoop(AKEvent, AttachedActor) end

---播放2D音频
---生效范围：客户端
---@param AKEvent UAkAudioEvent @音效资源（通过 UE.LoadObject(SoundPath) 获取）
---@param AttachedActor Actor @依附的 Actor
function UGCSoundManagerSystem.PlaySoundWith2D(AKEvent, AttachedActor) end