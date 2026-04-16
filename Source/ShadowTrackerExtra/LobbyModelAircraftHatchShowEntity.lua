---@meta

---机舱动画播放状态
---@class ELobbyAircraftHatchPlayingStatus
---@field Play number
---@field PlayAndStopInTheEnd number
---@field JumpAndPause number
---@field Stopped number
ELobbyAircraftHatchPlayingStatus = {}


---机舱动画角色配置
---@class FLobbyAircraftHatchCharacterConfig
---@field Character AActor
---@field SocketName string
---@field BindingGuid FGuid
---@field CacheOriginAnimClass UAnimInstance
---@field IdleAnimationAsset UAnimationAsset
---@field CacheOriginTransform FTransform
---@field IsShowCharacter boolean
FLobbyAircraftHatchCharacterConfig = {}


---@class FOnLobbyAircraftHatchLevelSequenceStartedDelegate : ULuaSingleDelegate
FOnLobbyAircraftHatchLevelSequenceStartedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLobbyAircraftHatchLevelSequenceStartedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnLobbyAircraftHatchLevelSequenceStartedDelegate:Execute() end


---@class FOnLobbyAircraftHatchLevelSequenceFinishedDelegate : ULuaSingleDelegate
FOnLobbyAircraftHatchLevelSequenceFinishedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLobbyAircraftHatchLevelSequenceFinishedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnLobbyAircraftHatchLevelSequenceFinishedDelegate:Execute() end


---@class FOnLobbyAircraftHatchLevelSequenceStoppedDelegate : ULuaSingleDelegate
FOnLobbyAircraftHatchLevelSequenceStoppedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLobbyAircraftHatchLevelSequenceStoppedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnLobbyAircraftHatchLevelSequenceStoppedDelegate:Execute() end


---机舱展示模型
---@class ULobbyModelAircraftHatchShowEntity: ULobbyModelShowEntity
---@field LevelSequenceData FLobbyAircraftHatchLevelSequenceData
---@field CharacterData ULuaArrayHelper<FLobbyAircraftHatchCharacterConfig>
---@field LevelSequenceStartedEvent FOnLobbyAircraftHatchLevelSequenceStartedDelegate
---@field LevelSequenceFinishedEvent FOnLobbyAircraftHatchLevelSequenceFinishedDelegate
---@field LevelSequenceStoppedEvent FOnLobbyAircraftHatchLevelSequenceStoppedDelegate
---@field PlayingStatus ELobbyAircraftHatchPlayingStatus
---@field bRefineCharacterMeshLocation boolean
---@field CharacterOffset FVector
---@field AsyncLoadIndex number
---@field LevelSequence ULevelSequence
---@field ItemShowActorBindingGuid FGuid
---@field TeammatesCachePool ULuaMapHelper<AActor, boolean>
---@field LevelSequenceStopPosition number
---@field bStopBySetPlaybackPosition boolean
---@field LoadedAnimationObjects ULuaArrayHelper<UObject>
---@field AnimationObjectPaths ULuaArrayHelper<FSoftObjectPath>
local ULobbyModelAircraftHatchShowEntity = {}

---初始化机舱模型
---@param InShowActor ALobbyItemShowActor
function ULobbyModelAircraftHatchShowEntity:Init(InShowActor) end

---显示机舱模型
---@param InBattleItemHandle UBattleItemHandleBase
function ULobbyModelAircraftHatchShowEntity:ShowModel(InBattleItemHandle) end

---清除机舱模型
function ULobbyModelAircraftHatchShowEntity:ClearEntity() end

---释放LevelSequence的资源
function ULobbyModelAircraftHatchShowEntity:ReleaseLevelSequenceResources() end

---验证指定LevelSequence类型是否有效
---@param InBattleItemHandle UBattleItemHandleBase
---@param InLevelSequenceType number
---@return boolean
function ULobbyModelAircraftHatchShowEntity:IsLevelSequenceTypeValid(InBattleItemHandle, InLevelSequenceType) end

---验证指定LevelSequence播放模式是否有效
---@param InLevelSequenceMode number
---@return boolean
function ULobbyModelAircraftHatchShowEntity:IsLevelSequenceModeValid(InLevelSequenceMode) end

---重置LevelSequence数据
function ULobbyModelAircraftHatchShowEntity:ResetLevelSequenceData() end

---切换相机
---@param InCameraName string
function ULobbyModelAircraftHatchShowEntity:SwitchCameraInSequence(InCameraName) end

---初始化模型的Mesh
---@return boolean
function ULobbyModelAircraftHatchShowEntity:InitMesh() end

---异步加载动画所需要的资源
---@return boolean
function ULobbyModelAircraftHatchShowEntity:AsyncLoadAnimationResources() end

---异步加载以后的回调函数
---@param InAsyncLoadIndex number
function ULobbyModelAircraftHatchShowEntity:OnAsyncLoadAnimationResourcesFinish(InAsyncLoadIndex) end

---执行播放LevelSequence的准备流程
---@return boolean
function ULobbyModelAircraftHatchShowEntity:PreparePlayLevelSequence() end

---执行播放LevelSequence的流程
---@return boolean
function ULobbyModelAircraftHatchShowEntity:PlayLevelSequenceInternal() end

---停止播放LevelSequence
---@return boolean
function ULobbyModelAircraftHatchShowEntity:StopLevelSequenceInternal() end

---将角色绑定到LevelSequence动画序列
---@return boolean
function ULobbyModelAircraftHatchShowEntity:AddActorsBinding() end

---将角色从LevelSequence动画序列上解绑
---@return boolean
function ULobbyModelAircraftHatchShowEntity:RemoveActorsBinding() end

---生成锚点Actor用于机舱动画的定位
---@return boolean
function ULobbyModelAircraftHatchShowEntity:SpawnAnchorActor() end

---设置LevelSequence的Transform Origin Actor
function ULobbyModelAircraftHatchShowEntity:SetTransformOriginActor() end

---正常播放LevelSequence
---@return boolean
function ULobbyModelAircraftHatchShowEntity:Play() end

---正常播放LevelSequence并停止在最后一帧
---@return boolean
function ULobbyModelAircraftHatchShowEntity:PlayAndStopInTheEnd() end

---LevelSequence停止时触发
function ULobbyModelAircraftHatchShowEntity:OnPlayLevelSequenceStop() end

---LevelSequence播完时触发
function ULobbyModelAircraftHatchShowEntity:OnPlayLevelSequenceFinished() end

---直接跳到LevelSequence的某一帧并暂停
---@return boolean
function ULobbyModelAircraftHatchShowEntity:JumpAndPauseAtPosition() end

---重置所有角色的动画
function ULobbyModelAircraftHatchShowEntity:ResetAllCharactersAnim() end

---在动画的最后一帧替换所有人物的动画
function ULobbyModelAircraftHatchShowEntity:ReplaceAllCharactersAnim() end

---初始化所有角色数据
---@return boolean
function ULobbyModelAircraftHatchShowEntity:InitAllCharactersData() end

---修改角色的位置
function ULobbyModelAircraftHatchShowEntity:RefineCharacterMeshLocation() end

---重置角色的位置
function ULobbyModelAircraftHatchShowEntity:ResetCharacterMeshLocation() end

---激活LevelSequence里面的粒子特效
function ULobbyModelAircraftHatchShowEntity:ActivateLevelSequenceParticles() end

---激活LevelSequence里面配置的粒子特效
function ULobbyModelAircraftHatchShowEntity:ActivateLevelSequenceParticlesWithConfig() end
