---@meta

---@class FUGCOnDropItem : ULuaMulticastDelegate
FUGCOnDropItem = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCOnDropItem:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemActor AActor
function FUGCOnDropItem:Broadcast(ItemActor) end


---@class FUGCOnDropItemToBackpack : ULuaMulticastDelegate
FUGCOnDropItemToBackpack = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bPickUpDone: boolean, PickUpItemData: FPickUpItemData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCOnDropItemToBackpack:Add(Callback, Obj) end

---触发 Lua 广播
---@param bPickUpDone boolean
---@param PickUpItemData FPickUpItemData
function FUGCOnDropItemToBackpack:Broadcast(bPickUpDone, PickUpItemData) end


---@class FUGCOnDropIDList : ULuaMulticastDelegate
FUGCOnDropIDList = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemList: ULuaArrayHelper<FPickUpItemData>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCOnDropIDList:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemList ULuaArrayHelper<FPickUpItemData>
function FUGCOnDropIDList:Broadcast(ItemList) end


---@class FUGCOnDropOver : ULuaSingleDelegate
FUGCOnDropOver = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCOnDropOver:Bind(Callback, Obj) end

---执行委托
function FUGCOnDropOver:Execute() end


---掉落组件
---@class UUGCCommonProduceDropItemComponent: UCommonProduceDropItemBaseComponent, IObjectPoolInterface
---@field StepTime number @每波掉落次数
---@field StepGap number @每波掉落间隔
---@field DelayDropTime number @起始掉落延迟
---@field OnDropItem FUGCOnDropItem
---@field OnDropIDList FUGCOnDropIDList
---@field OnDropItemToBackpack FUGCOnDropItemToBackpack
---@field OnDropOver FUGCOnDropOver @当前掉落结束后触发 最后一个拾取物被创建时就触发，不会等抛物线动效走完 广播范围：DS
---@field CachePerformanceParticleObjects ULuaArrayHelper<UObject>
---@field StrategySelector FUGCDropItemStrategySelector @掉落方案配置
---@field DropItemContexts ULuaArrayHelper<FUGCDropItemStrategyContext>
---@field DropItemHistory FDropItemHistory
local UUGCCommonProduceDropItemComponent = {}

---@param SoftObjectPathList ULuaArrayHelper<FSoftObjectPath>
function UUGCCommonProduceDropItemComponent:OnLoadPerformanceParticleObjects(SoftObjectPathList) end

---@param DropItemActor AActor
---@param Killer AController
---@param TraceIgnoreActors ULuaArrayHelper<AActor>
function UUGCCommonProduceDropItemComponent:StartDropBase(DropItemActor, Killer, TraceIgnoreActors) end

---按照配置进行一次掉落行为
---生效范围：服务器
---@param DropItemActor AActor @需要掉落物资的Actor，一般为配置掉落物组件的Actor本身
---@param Killer AController @击杀者或交互者，当掉落物类型为直接进入背包时或者掉落方向为面相玩家时必须，其他时候可以为Null
---@param TraceIgnoreActors ULuaArrayHelper<AActor> @掉落检测射线忽略的Actor数组
---@param AttachComponent USceneComponent
function UUGCCommonProduceDropItemComponent:StartDrop(DropItemActor, Killer, TraceIgnoreActors, AttachComponent) end

---指定掉落方案进行一次 Wrapper 掉落
---生效范围：服务器
---@param ProduceID number @掉落方案ID
---@param ProduceGroupID number @掉落组方案ID(掉落组ID不为-1，掉落组ID生效。掉落组ID为-1,则掉落ID生效)
---@param EntityType EUGCGenerateItemEntityType @掉落物类型
---@param RelatedPlayer ACharacter @当掉落物方向为面相玩家时必须，当掉落物类型为进入背包时必须，其他时候可以为Null
function UUGCCommonProduceDropItemComponent:StartDropByProduceID(ProduceID, ProduceGroupID, EntityType, RelatedPlayer) end

---@param DropItemActor AActor
---@param OverrideProduceID number
function UUGCCommonProduceDropItemComponent:GetDropItemListByProduceID(DropItemActor, OverrideProduceID) end

---动态设置掉落物组，会强制将掉落物列表生成方式改为蓝图配置
---生效范围：服务器
---@param ConfigItem ULuaArrayHelper<FUGCGenerateDropItemInfo> @需要动态修改的掉落物蓝图配置
---@param EntityType EUGCGenerateItemEntityType @掉落物类型
---@param ConfigID number @需要修改的配置项索引，索引无效时修改失败
function UUGCCommonProduceDropItemComponent:SetBluePrintDropItemConfig(ConfigItem, EntityType, ConfigID) end

---动态设置掉落串，会强制将掉落物列表生成方式改为读表
---生效范围：服务器
---@param InProduceID number @需要动态修改的掉落方案ID
---@param ProduceGroupID number @需要动态修改的掉落方案组ID
---@param EntityType EUGCGenerateItemEntityType @掉落物类型
---@param ConfigID number @需要修改的配置项索引，索引无效时修改失败
function UUGCCommonProduceDropItemComponent:SetProduceIDConfig(InProduceID, ProduceGroupID, EntityType, ConfigID) end

---动态添加掉落，按照选择类型添加
---生效范围：服务器
---@param InProduceID number @需要添加的掉落方案ID，如果不需要添加读表配置方案请传参-1
---@param ProduceGroupID number @需要添加的掉落方案组ID，如果不需要添加读表配置方案请传参-1
---@param ConfigItem ULuaArrayHelper<FUGCGenerateDropItemInfo> @需要添加的掉落物蓝图配置
---@param EntityType EUGCGenerateItemEntityType @掉落物类型
function UUGCCommonProduceDropItemComponent:AddDropConfig(InProduceID, ProduceGroupID, ConfigItem, EntityType) end

---动态清空配置，蓝图或读表
---生效范围：服务器
---@param SelectType EUGCDropItemListGeneratorType @需要清空的配置
function UUGCCommonProduceDropItemComponent:ClearDropConfig(SelectType) end

---动态修改掉落物列表生成方式
---生效范围：服务器
---@param SelectType EUGCDropItemListGeneratorType @生成方式
function UUGCCommonProduceDropItemComponent:SetGeneratorType(SelectType) end

---@param InConfigItem ULuaArrayHelper<FUGCSpawnSpotItem>
---@param EntityType EUGCGenerateItemEntityType
function UUGCCommonProduceDropItemComponent:UGCMSetDropItemConfig(InConfigItem, EntityType) end

---动态设置掉落圆环偏移
---生效范围：服务器
---@param InDynamicCenterOffset FVector @偏移量
function UUGCCommonProduceDropItemComponent:SetDynamicCenterOffset(InDynamicCenterOffset) end

---@param BoxName string
function UUGCCommonProduceDropItemComponent:SetCustomDropBoxName(BoxName) end

---@param DeltaTime number
---@param InNum number
function UUGCCommonProduceDropItemComponent:DoDropItemStrategy(DeltaTime, InNum) end

---@param PerformanceInfo FDropItemPerformanceInfo
function UUGCCommonProduceDropItemComponent:AddPerformanceItem(PerformanceInfo) end

---@param Category EDropItemCategory
---@return number
function UUGCCommonProduceDropItemComponent:GetDropIDByHistoryConfig(Category) end

---@param HistoryKey number
---@param Category EDropItemCategory
---@return boolean
function UUGCCommonProduceDropItemComponent:CheckDropItemHistory(HistoryKey, Category) end

---@param HistoryKey number
---@param Category EDropItemCategory
---@param DroppedCount number
function UUGCCommonProduceDropItemComponent:AddDroppedCountToHistory(HistoryKey, Category, DroppedCount) end

---@param AddItemDataList FPickUpItemDataList
---@param GenerateItemEntityType EGenerateItemEntityType
function UUGCCommonProduceDropItemComponent:AddExDropitemToStrategy(AddItemDataList, GenerateItemEntityType) end

---@param ExDropItemMap ULuaMapHelper<EGenerateItemEntityType, FPickUpItemDataList>
---@param IsNeedRegisterGenerate boolean
function UUGCCommonProduceDropItemComponent:AddExDropitemToStrategyByMap(ExDropItemMap, IsNeedRegisterGenerate) end

---@param ItemDataList ULuaArrayHelper<FUGCGenerateDropItemInfo>
---@param ProduceID number
---@param ProduceGroupID number
function UUGCCommonProduceDropItemComponent:InitDropItemList_BP(ItemDataList, ProduceID, ProduceGroupID) end

---@param TrailParticleTemplateList ULuaMapHelper<number, UParticleSystem>
---@param GroundParticleTemplateList ULuaMapHelper<number, UParticleSystem>
function UUGCCommonProduceDropItemComponent:InitDropItemPerformance_BP(TrailParticleTemplateList, GroundParticleTemplateList) end

---@param ItemID number
---@return boolean
function UUGCCommonProduceDropItemComponent:GetIsObjEditorItemV2(ItemID) end
