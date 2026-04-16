---@meta

---@class EDropPattern
---@field DropToGround number
---@field SnapToGround number
EDropPattern = {}


---@class FCustomDropRule
---@field bTraceIgnorePawn boolean
---@field bTraceIgnoreWarteringArea boolean
---@field bAttachToTargetActor boolean
FCustomDropRule = {}


---@class FDelayDropItem
---@field ItemData FPickUpItemData
---@field WrapperTrans FTransform
---@field StartPos FVector
---@field ShowGroundEffect boolean
FDelayDropItem = {}


---@class FDropPropInfo
---@field DropSeqIdx number
---@field PendingPropData ULuaArrayHelper<FDelayDropItem>
---@field SpawnedWrapper ULuaArrayHelper<AActor>
FDropPropInfo = {}


---@class FDropPropQueue
---@field DropQueue ULuaArrayHelper<FDropPropInfo>
---@field OwnerComp UProduceDropItemComponent
FDropPropQueue = {}


---@class FDropItemConfig
---@field ItemDropPercent number
---@field ItemDropRuleStartID number
---@field ItemDropRuleEndID number
---@field ItemDropMode number
FDropItemConfig = {}


---@class FRandomPropData
---@field ItemIDs ULuaArrayHelper<number>
---@field ItemCounts ULuaArrayHelper<number>
---@field RuleID number
---@field Weight number
FRandomPropData = {}


---@class FOnItemSpawned : ULuaMulticastDelegate
FOnItemSpawned = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SpawnedItems: ULuaArrayHelper<AActor>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnItemSpawned:Add(Callback, Obj) end

---触发 Lua 广播
---@param SpawnedItems ULuaArrayHelper<AActor>
function FOnItemSpawned:Broadcast(SpawnedItems) end


---@class UProduceDropItemComponent: UActorComponent, IPropDropOutMethodInterface
---@field CustomDropRule FCustomDropRule
---@field GroundHitInfo FHitResult
---@field GridStep number
---@field Mode2RandomMax number
---@field DropItemCfgTableName string
---@field DropItemRuleTableName string
---@field CachedDataTable ULuaArrayHelper<UUAEDataTable>
---@field UGCDropItemCfgTable UUAEDataTable
---@field UGCDropItemRuleTable UUAEDataTable
---@field ProduceID number
---@field IsDropSuc boolean
---@field DeadInventoryBoxTemplate APlayerTombBox
---@field DelayDropTime number
---@field TombBoxLifeTime number
---@field DropToTargetReason EBattleItemPickupReason
---@field DropGroundEffect UParticleSystem
---@field bUsePickUpSelfEffect boolean
---@field DropGroundEffectTransform FTransform
---@field DropGroundItemLifeOverride number
---@field IsAutoDrop boolean
---@field bIsIgonreSelf boolean
---@field DropGroundEffectLifeSpan number
---@field DropGroundNetCullDistanceSquared number
---@field DropGroundInRandomCircle boolean
---@field UseLocalCenterOffest boolean
---@field TraceUseOwnerUpDir boolean
---@field DropGroundCenterOffest FVector
---@field DropGroundOuterCircleRadius number
---@field DropGroundInnerCircleRadius number
---@field DropGroundStartAndgle number
---@field DropGroundEndAngle number
---@field bDropGroundAngleRange boolean
---@field DropGroundAngleRangeList ULuaArrayHelper<FVector2D>
---@field bApplyPickUpTrace boolean
---@field bApplyBoxTrace boolean
---@field bDropGroundForceStatic boolean
---@field OpenDropGroundEffect number
---@field RandomDropGroundEffect number
---@field DropGroundItemLifeSpan number
---@field IsDropped boolean
---@field GenerateActorList ULuaArrayHelper<APickUpWrapperActor>
---@field MaxTraceDist number
---@field bUseDropCurveAnim boolean
---@field bUseDropCurveAnim_DropToTombBox boolean
---@field OnItemSpawned FOnItemSpawned
---@field IsFoeceNotTrainingMode boolean
---@field DropPropQueue FDropPropQueue
local UProduceDropItemComponent = {}

---@param FinalDropItems ULuaArrayHelper<FDropPropData>
---@return string
function UProduceDropItemComponent:GenerateDropItemByOwner(FinalDropItems) end

---@param DropList ULuaArrayHelper<FDropItemConfig>
---@return string
function UProduceDropItemComponent:GetDropItemCfgList(DropList) end

---@param DropRuleCfg FDropItemConfig
---@param DropItemList ULuaArrayHelper<FDropPropData>
function UProduceDropItemComponent:CalcDropItemListByDropRule(DropRuleCfg, DropItemList) end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageType number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function UProduceDropItemComponent:OnOwnerPawnDead(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageType, DamageTypeClass, IsHeadShotDamage, Context) end

---@param SelfRef AActor
function UProduceDropItemComponent:OnPickUpDataEmptyOnServer(SelfRef) end

---@param DeadCharacter AActor
---@param Killer AController
function UProduceDropItemComponent:StartDrop(DeadCharacter, Killer) end

---@param DestinPos FVector
---@param KillerPawn ACharacter
---@param DeadPawn AActor
---@param InTraceGround boolean
function UProduceDropItemComponent:StartDropToPosition(DestinPos, KillerPawn, DeadPawn, InTraceGround) end

---@param PropData ULuaArrayHelper<FDropPropData>
---@param KillerPawn ACharacter
---@param DeadPawn AActor
---@param BoxName string
function UProduceDropItemComponent:DropOutProps(PropData, KillerPawn, DeadPawn, BoxName) end

---@param PropData ULuaArrayHelper<FDropPropData>
---@param KillerPawn ACharacter
---@param DeadPawn AActor
---@param DestinPos FVector
---@param BoxName string
function UProduceDropItemComponent:DropOutPropsToPosition(PropData, KillerPawn, DeadPawn, DestinPos, BoxName) end

---@param PropData ULuaArrayHelper<FDropPropData>
---@param TargetActor AActor
---@param BoxName string
---@param BoxType EPickUpBoxType
---@param SpawnLoc FVector
---@param ShouldTreasureBoxHidden boolean
---@param InLifeTime number
---@param bAddToNewRegion boolean
---@return boolean
function UProduceDropItemComponent:DropToTreasureBox(PropData, TargetActor, BoxName, BoxType, SpawnLoc, ShouldTreasureBoxHidden, InLifeTime, bAddToNewRegion) end

---@param DefineID FItemDefineID
---@param Count number
---@param Backpack UBackpackComponent
function UProduceDropItemComponent:DropToTarget(DefineID, Count, Backpack) end

---@param PropData ULuaArrayHelper<FPickUpItemData>
---@param DeadPawn ACharacter
---@param BoxName string
function UProduceDropItemComponent:DropToTombBox(PropData, DeadPawn, BoxName) end

---@param Producer AActor
function UProduceDropItemComponent:DropToCommonTreasureBox(Producer) end

---@param Producer AActor
---@param BoxTrans FTransform
---@param CommonTreasureBox ACommonTreasureBox
function UProduceDropItemComponent:DropToCommonLootBox(Producer, BoxTrans, CommonTreasureBox) end

---@param PropDatas ULuaArrayHelper<FPickUpItemData>
---@param PawnTrans FTransform
---@param IgnorePawn AActor
---@param KillerActor AActor
function UProduceDropItemComponent:NineGridDrop(PropDatas, PawnTrans, IgnorePawn, KillerActor) end

---@param PropDatas ULuaArrayHelper<FPickUpItemData>
---@param PawnTrans FTransform
---@param IgnorePawn AActor
---@param KillerActor AActor
function UProduceDropItemComponent:RandomCircleDrop(PropDatas, PawnTrans, IgnorePawn, KillerActor) end

function UProduceDropItemComponent:FlushDropQueue() end

---@param bAutoDrop boolean
function UProduceDropItemComponent:SetAutoDrop(bAutoDrop) end

---@param Weight number
---@return number
function UProduceDropItemComponent:PickItemByIndependentRandom(Weight) end

---@param WeightCount number
---@param WeightMap ULuaArrayHelper<FRandomPropData>
---@return number
function UProduceDropItemComponent:PickItemByUnionRandom(WeightCount, WeightMap) end

---@param DefineID FItemDefineID
---@return string
function UProduceDropItemComponent:GetWrapperActorPath(DefineID) end

---@param StartPos FVector
---@param IgnoreActor AActor
---@return FVector
function UProduceDropItemComponent:TraceGroundPoint(StartPos, IgnoreActor) end

function UProduceDropItemComponent:ClearGenerateActorList() end
