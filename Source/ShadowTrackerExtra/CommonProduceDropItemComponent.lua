---@meta

---@class FOnDropItem : ULuaMulticastDelegate
FOnDropItem = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDropItem:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemActor AActor
function FOnDropItem:Broadcast(ItemActor) end


---@class FOnDropItemToBackpack : ULuaMulticastDelegate
FOnDropItemToBackpack = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bPickUpDone: boolean, PickUpItemData: FPickUpItemData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDropItemToBackpack:Add(Callback, Obj) end

---触发 Lua 广播
---@param bPickUpDone boolean
---@param PickUpItemData FPickUpItemData
function FOnDropItemToBackpack:Broadcast(bPickUpDone, PickUpItemData) end


---@class FOnDropIDList : ULuaMulticastDelegate
FOnDropIDList = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemList: ULuaArrayHelper<FPickUpItemData>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDropIDList:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemList ULuaArrayHelper<FPickUpItemData>
function FOnDropIDList:Broadcast(ItemList) end


---@class UCommonProduceDropItemBaseComponent: USceneComponent, IProduceDropItemVisualizerInterface
local UCommonProduceDropItemBaseComponent = {}


---@class UCommonProduceDropItemComponent: UCommonProduceDropItemBaseComponent, IObjectPoolInterface
---@field StepTime number
---@field StepGap number
---@field OnDropItem FOnDropItem
---@field OnDropIDList FOnDropIDList
---@field OnDropItemToBackpack FOnDropItemToBackpack
---@field StrategySelector FDropItemStrategySelector
---@field DropItemContexts ULuaArrayHelper<FDropItemStrategyContext>
---@field DropItemHistory FDropItemHistory
local UCommonProduceDropItemComponent = {}

---@param DropItemActor AActor
---@param Killer AController
---@param TraceIgnoreActors ULuaArrayHelper<AActor>
function UCommonProduceDropItemComponent:StartDropBase(DropItemActor, Killer, TraceIgnoreActors) end

---@param DropItemActor AActor
---@param Killer AController
---@param TraceIgnoreActors ULuaArrayHelper<AActor>
---@param OverrideProduceID number
---@param AttachComponent USceneComponent
function UCommonProduceDropItemComponent:StartDrop(DropItemActor, Killer, TraceIgnoreActors, OverrideProduceID, AttachComponent) end

---@param DropItemActor AActor
---@param TombBox APlayerTombBox
---@param OverrideProduceID number
function UCommonProduceDropItemComponent:StartDropToBox(DropItemActor, TombBox, OverrideProduceID) end

---@param DropItemActor AActor
---@param OverrideProduceID number
---@param PlayerRank number
---@param IsSimulate boolean
---@param KillerPawn ACharacter
function UCommonProduceDropItemComponent:GetDropItemListByProduceID(DropItemActor, OverrideProduceID, PlayerRank, IsSimulate, KillerPawn) end

function UCommonProduceDropItemComponent:EndDrop() end

---@param InProduceID number
function UCommonProduceDropItemComponent:SetProduceID(InProduceID) end

---@param InDynamicCenterOffset FVector
function UCommonProduceDropItemComponent:SetDynamicCenterOffset(InDynamicCenterOffset) end

---@param BoxName string
function UCommonProduceDropItemComponent:SetCustomDropBoxName(BoxName) end

---@param OverrideTombBoxTemplate APlayerTombBox
---@param BoxType EPickUpBoxType
function UCommonProduceDropItemComponent:SetCustomTombBoxTemplate(OverrideTombBoxTemplate, BoxType) end

---@param DeltaTime number
---@param InNum number
function UCommonProduceDropItemComponent:DoDropItemStrategy(DeltaTime, InNum) end

function UCommonProduceDropItemComponent:DropAllItemsImmediately() end

---@param PerformanceInfo FDropItemPerformanceInfo
function UCommonProduceDropItemComponent:AddPerformanceItem(PerformanceInfo) end

---@param ParticleType EDropItemParitcleType
function UCommonProduceDropItemComponent:LoadPerformanceParticle(ParticleType) end

---@param ProbabilityOverride ULuaMapHelper<number, number>
function UCommonProduceDropItemComponent:SetDisposableProbabilityOverride(ProbabilityOverride) end

---@param Category EDropItemCategory
---@return number
function UCommonProduceDropItemComponent:GetDropIDByHistoryConfig(Category) end

---@param HistoryKey number
---@param Category EDropItemCategory
---@return boolean
function UCommonProduceDropItemComponent:CheckDropItemHistory(HistoryKey, Category) end

---@param HistoryKey number
---@param Category EDropItemCategory
---@param DroppedCount number
function UCommonProduceDropItemComponent:AddDroppedCountToHistory(HistoryKey, Category, DroppedCount) end

---@param AddItemDataList FPickUpItemDataList
---@param GenerateItemEntityType EGenerateItemEntityType
---@param IsNeedRegisterID boolean
function UCommonProduceDropItemComponent:AddExDropitemToStrategy(AddItemDataList, GenerateItemEntityType, IsNeedRegisterID) end

---@param ExDropItemMap ULuaMapHelper<EGenerateItemEntityType, FPickUpItemDataList>
---@param IsNeedRegisterID boolean
function UCommonProduceDropItemComponent:AddExDropitemToStrategyByMap(ExDropItemMap, IsNeedRegisterID) end

---@param DropItem AActor
function UCommonProduceDropItemComponent:RegisterDropItemToAIWorldVolume(DropItem) end
