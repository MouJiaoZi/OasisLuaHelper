---@meta

---多人表情的播放状态
---@class ELobbyMultiEmoteStatus
---@field Preparing number
---@field Playing number
---@field Paused number
---@field Stopped number
ELobbyMultiEmoteStatus = {}


---多人表情角色配置
---@class FLobbyMultiEmoteCharacterConfig
---@field LocationKey EDuoActionPerformanceLocation
---@field Character AActor
---@field OriginTransform FTransform
---@field BindingGuid FGuid
---@field CacheOriginAnimClass UAnimInstance
FLobbyMultiEmoteCharacterConfig = {}


---播放完多人表情以后的回调参数
---@class FLobbyMultiEmoteFinishCallbackArgs
---@field DstTag string
---@field InviterUid string
---@field InviteeUid ULuaArrayHelper<string>
---@field EmoteHandleID number
---@field bPlayIgnoreAnimation boolean
---@field bPlayAnimationSuccess boolean
FLobbyMultiEmoteFinishCallbackArgs = {}


---LevelSequence播放配置
---@class FLobbyMultiEmoteLevelSequenceConfig
---@field bIsLoop boolean
---@field bSetTransformOriginActor boolean
---@field bShouldSpawnTeammateToFillGap boolean
---@field bPlayIgnoreAnimation boolean
---@field bUseEmoteComponentPlayCharacterAnimation boolean
---@field bRefineCharacterMeshLocation boolean
---@field CharacterOffset FVector
---@field LevelSequencePlayTransform FTransform
FLobbyMultiEmoteLevelSequenceConfig = {}


---@class FLobbyMultiEmoteEndDelegate : ULuaMulticastDelegate
FLobbyMultiEmoteEndDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CallbackArgs: FLobbyMultiEmoteFinishCallbackArgs) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLobbyMultiEmoteEndDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CallbackArgs FLobbyMultiEmoteFinishCallbackArgs
function FLobbyMultiEmoteEndDelegate:Broadcast(CallbackArgs) end


---大厅的双人表情导演类
---@class ALobbyMultiEmoteDirector: AActor
---@field EmoteHandleID number
---@field LevelSeqConfig FLobbyMultiEmoteLevelSequenceConfig
---@field EmoteCharacterData ULuaArrayHelper<FLobbyMultiEmoteCharacterConfig>
---@field FinishCallbackArgs FLobbyMultiEmoteFinishCallbackArgs
---@field OnMultiEmoteEnd FLobbyMultiEmoteEndDelegate
---@field AsyncLoadIndex number
---@field MultiEmoteLevelSequence ULevelSequence
---@field PlayAnimationNum number
---@field ReadyToPlayAnimationNum number
---@field Status ELobbyMultiEmoteStatus
local ALobbyMultiEmoteDirector = {}

---用于设置当前多人表情表演的表情ID
---@param InEmoteID number
---@param InEmoteHandle UBackpackEmoteHandle
---@return boolean
function ALobbyMultiEmoteDirector:SetEmoteHandle(InEmoteID, InEmoteHandle) end

---添加角色和表情动画Handle到导演类中
---@param LocationKey EDuoActionPerformanceLocation
---@param InCharacter AActor
---@param InEmoteHandle UBackpackEmoteHandle
function ALobbyMultiEmoteDirector:AddCharacterAndEmoteHandle(LocationKey, InCharacter, InEmoteHandle) end

---重置导演类中的所有数据
function ALobbyMultiEmoteDirector:ResetData() end

---播放多人动画
---@return boolean
function ALobbyMultiEmoteDirector:ExecuteMultiEmoteAction() end

---停止播放多人动画
---@return boolean
function ALobbyMultiEmoteDirector:StopMultiEmoteAction() end

---设置播放结束时的回调参数
---@param InDstTag string
---@param InInviterUid string
---@param InInviteeUid ULuaArrayHelper<string>
---@param InEmoteHandleID number
---@param InPlayIgnoreAnimation boolean
function ALobbyMultiEmoteDirector:SetFinishCallbackArgs(InDstTag, InInviterUid, InInviteeUid, InEmoteHandleID, InPlayIgnoreAnimation) end

---异步加载所需要的资源
---@return boolean
function ALobbyMultiEmoteDirector:AsyncLoadResources() end

---异步加载以后的回调函数
---@param InAsyncLoadIndex number
---@param InEmoteHandleID number
function ALobbyMultiEmoteDirector:OnAsyncLoadResourcesFinish(InAsyncLoadIndex, InEmoteHandleID) end

---执行播放多人动画的流程
---@return boolean
function ALobbyMultiEmoteDirector:PlayMultiEmoteActionAnimation() end

---将角色绑定到LevelSequence动画序列，并且绑定LevelSequence的回调函数
---@param InLevelSequence ULevelSequence
---@return boolean
function ALobbyMultiEmoteDirector:Binding(InLevelSequence) end

---解绑大厅角色以及一系列回调函数
function ALobbyMultiEmoteDirector:RemoveBinding() end

---生成多人表情对象
---@param InEmoteHandle UBackpackEmoteHandle
---@param InTransform FTransform
---@return boolean
function ALobbyMultiEmoteDirector:SpawnMultiEmoteActor(InEmoteHandle, InTransform) end

---生成锚点Actor用于多人表情动画的定位
---@param InEmoteHandle UBackpackEmoteHandle
---@param InTransform FTransform
---@return boolean
function ALobbyMultiEmoteDirector:SpawnAnchorActor(InEmoteHandle, InTransform) end

---设置LevelSequence的Transform Origin Actor
function ALobbyMultiEmoteDirector:SetTransformOriginActor() end

---生成小蓝人队友玩家角色
---@param InTeammateClass AActor
function ALobbyMultiEmoteDirector:SpawnTeammatePlayers(InTeammateClass) end

---生成指定位置的小蓝人队友玩家角色
---@param InTeammateClass AActor
---@param InLocationKey EDuoActionPerformanceLocation
---@param InEmoteHandle UBackpackEmoteHandle
function ALobbyMultiEmoteDirector:SpawnTeammatePlayer(InTeammateClass, InLocationKey, InEmoteHandle) end

---初始化角色动画资源。表情动画资源加载完毕以后直接播放，多角色动画同步交给Director类的Tick处理。
---@return boolean
function ALobbyMultiEmoteDirector:InitCharacterAnimationsAssets() end

---异步加载动画资源完成时的回调函数。异步加载完毕以后立即播放动画。
---@param InAsyncLoadIndex number
---@param InCharacterIndex number
function ALobbyMultiEmoteDirector:AsyncLoadAnimationResourcesCompleted(InAsyncLoadIndex, InCharacterIndex) end

---播放队友角色的表情动画
---@param EmoteCharacterConfig FLobbyMultiEmoteCharacterConfig
function ALobbyMultiEmoteDirector:PlayTeammateCharacterAnimation(EmoteCharacterConfig) end

---立即开始播放所有准备好的动画
function ALobbyMultiEmoteDirector:StartPlayAnimationsImmediately() end

---停止所有的角色动画，并强制显示一遍大厅的角色
---@return boolean
function ALobbyMultiEmoteDirector:StopCharacterAnimations() end

---播放LevelSequence动画
---@return boolean
function ALobbyMultiEmoteDirector:PlayLevelSequence() end

---停止播放LevelSequence动画
---@return boolean
function ALobbyMultiEmoteDirector:StopPlayLevelSequence() end

---LevelSequence动画播放停止时的回调函数。 设置多人表情的播放状态，并停止角色的动画。解绑大厅角色并重置所有数据。
function ALobbyMultiEmoteDirector:OnPlayLevelSequenceStop() end

---LevelSequence动画播放完成时的回调函数。
function ALobbyMultiEmoteDirector:OnPlayLevelSequenceFinished() end

---修改角色的位置
function ALobbyMultiEmoteDirector:RefineCharacterMeshLocation() end

---重置角色的位置
function ALobbyMultiEmoteDirector:ResetCharacterMeshLocation() end

---设置所有角色的动画播放位置
---@param InPosition number
function ALobbyMultiEmoteDirector:SetAllCharactersAnimationPosition(InPosition) end

---大厅动画表情播放时的代理
---@param InEmoteHandleID number
function ALobbyMultiEmoteDirector:OnLobbyEmoteMontageStart(InEmoteHandleID) end

---大厅动画表情播放前的代理
---@param InEmoteHandleID number
function ALobbyMultiEmoteDirector:OnLobbyEmoteMontagePreStart(InEmoteHandleID) end

---大厅动画表情播放前的代理
---@param InEmoteHandleID number
function ALobbyMultiEmoteDirector:OnLobbyEmoteMontageFinished(InEmoteHandleID) end

---显示出动画相关的所有角色
function ALobbyMultiEmoteDirector:ShowAllCharacters() end

---处理播放过程中退出的流程
---@param bSuccess boolean
function ALobbyMultiEmoteDirector:HandleExecuteMultiEmoteActionEnd(bSuccess) end
