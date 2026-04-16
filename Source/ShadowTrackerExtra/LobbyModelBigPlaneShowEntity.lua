---@meta

---大飞机角色配置
---@class FLobbyBigPlaneCharacterConfig
---@field Character AActor
---@field SocketName string
---@field BindingGuid FGuid
---@field CacheOriginAnimClass UAnimInstance
---@field CacheOriginTransform FTransform
FLobbyBigPlaneCharacterConfig = {}


---@class FOnLobbyBigPlaneLevelSequenceStartedDelegate : ULuaSingleDelegate
FOnLobbyBigPlaneLevelSequenceStartedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLobbyBigPlaneLevelSequenceStartedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnLobbyBigPlaneLevelSequenceStartedDelegate:Execute() end


---@class FOnLobbyBigPlaneLevelSequenceFinishedDelegate : ULuaSingleDelegate
FOnLobbyBigPlaneLevelSequenceFinishedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLobbyBigPlaneLevelSequenceFinishedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnLobbyBigPlaneLevelSequenceFinishedDelegate:Execute() end


---@class FOnLobbyBigPlaneLevelSequenceStoppedDelegate : ULuaSingleDelegate
FOnLobbyBigPlaneLevelSequenceStoppedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLobbyBigPlaneLevelSequenceStoppedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnLobbyBigPlaneLevelSequenceStoppedDelegate:Execute() end


---大厅大飞机展示模型
---@class ULobbyModelBigPlaneShowEntity: ULobbyModelShowEntity
---@field LevelSequenceData FLobbyBigPlaneLevelSequenceData
---@field CharacterData ULuaArrayHelper<FLobbyBigPlaneCharacterConfig>
---@field LevelSequenceStartedEvent FOnLobbyBigPlaneLevelSequenceStartedDelegate
---@field LevelSequenceFinishedEvent FOnLobbyBigPlaneLevelSequenceFinishedDelegate
---@field LevelSequenceStoppedEvent FOnLobbyBigPlaneLevelSequenceStoppedDelegate
---@field bRefineCharacterMeshLocation boolean
---@field CharacterOffset FVector
---@field AsyncLoadIndex number
---@field LevelSequence ULevelSequence
---@field ItemShowActorBindingGuid FGuid
---@field LoadedMaterialObjects ULuaArrayHelper<UObject>
---@field LoadedAnimationObjects ULuaArrayHelper<UObject>
---@field AnimationObjectPaths ULuaArrayHelper<FSoftObjectPath>
---@field TeammatesCachePool ULuaMapHelper<AActor, boolean>
local ULobbyModelBigPlaneShowEntity = {}

---初始化大飞机模型
---@param InShowActor ALobbyItemShowActor
function ULobbyModelBigPlaneShowEntity:Init(InShowActor) end

---显示大飞机模型
---@param InBattleItemHandle UBattleItemHandleBase
function ULobbyModelBigPlaneShowEntity:ShowModel(InBattleItemHandle) end

---应用动画蓝图
---@param InBattleItemHandle UBattleItemHandleBase
function ULobbyModelBigPlaneShowEntity:ApplyAnimInstance(InBattleItemHandle) end

---清除大飞机模型
function ULobbyModelBigPlaneShowEntity:ClearEntity() end

---验证指定LevelSequence类型是否有效
---@param InBattleItemHandle UBattleItemHandleBase
---@param InLevelSequenceType number
---@return boolean
function ULobbyModelBigPlaneShowEntity:IsLevelSequenceTypeValid(InBattleItemHandle, InLevelSequenceType) end

---设置贴花组件的参数
---@param InDecalComponent UDecalComponent
---@param InBattleItemHandle UBattleItemHandleBase
---@param InDecalName string
---@param InExtraData ULuaMapHelper<string, string>
function ULobbyModelBigPlaneShowEntity:SetDecalComponentParams(InDecalComponent, InBattleItemHandle, InDecalName, InExtraData) end

---设置贴画组件的名字
---@param InDecalComponent UDecalComponent
---@param InBattleItemHandle UBattleItemHandleBase
---@param InParameterName string
---@param InDecalContent string
function ULobbyModelBigPlaneShowEntity:SetDecalComponentMaterialWithString(InDecalComponent, InBattleItemHandle, InParameterName, InDecalContent) end

---根据特效名称播放特效
---@param InBattleItemHandle UBattleItemHandleBase
---@param InParticleName string
---@param bIsLoop boolean
function ULobbyModelBigPlaneShowEntity:AttachParticleByName(InBattleItemHandle, InParticleName, bIsLoop) end

---释放LevelSequence的资源
function ULobbyModelBigPlaneShowEntity:ReleaseLevelSequenceResources() end

---判断当前设备是否应该使用高质量材质
---@param InBigPlaneHandle ULobbyBigPlaneHandle
---@return boolean
function ULobbyModelBigPlaneShowEntity:CanUseHighQualityMaterials(InBigPlaneHandle) end

---重置数据
function ULobbyModelBigPlaneShowEntity:ResetLevelSequenceData() end

---异步加载动画所需要的资源
---@return boolean
function ULobbyModelBigPlaneShowEntity:AsyncLoadAnimationResources() end

---异步加载以后的回调函数
---@param InAsyncLoadIndex number
function ULobbyModelBigPlaneShowEntity:OnAsyncLoadAnimationResourcesFinish(InAsyncLoadIndex) end

---执行播放LevelSequence的流程
---@return boolean
function ULobbyModelBigPlaneShowEntity:PlayLevelSequenceInternal() end

---停止播放LevelSequence
---@return boolean
function ULobbyModelBigPlaneShowEntity:StopLevelSequenceInternal() end

---将角色绑定到LevelSequence动画序列，并且绑定LevelSequence的回调函数
---@param InLevelSequence ULevelSequence
---@return boolean
function ULobbyModelBigPlaneShowEntity:Binding(InLevelSequence) end

---解绑大厅角色以及一系列回调函数
function ULobbyModelBigPlaneShowEntity:RemoveBinding() end

---生成锚点Actor用于大飞机动画的定位
---@return boolean
function ULobbyModelBigPlaneShowEntity:SpawnAnchorActor() end

---设置LevelSequence的Transform Origin Actor
function ULobbyModelBigPlaneShowEntity:SetTransformOriginActor() end

---LevelSequence停止时触发
function ULobbyModelBigPlaneShowEntity:OnLevelSequenceStop() end

---LevelSequence播完时触发
function ULobbyModelBigPlaneShowEntity:OnLevelSequenceFinished() end

---初始化所有角色数据
---@return boolean
function ULobbyModelBigPlaneShowEntity:InitAllCharactersData() end

---修改角色的位置
function ULobbyModelBigPlaneShowEntity:RefineCharacterMeshLocation() end

---重置角色的位置
function ULobbyModelBigPlaneShowEntity:ResetCharacterMeshLocation() end
