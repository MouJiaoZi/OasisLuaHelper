---@meta

---感知类型
---@class ESTQuadrupedCharacterScenePerceptionMode
---@field None number @无
---@field HighlightAlertPos number @高亮警戒位置
---@field HighlightSearchEnemyPos number @高亮搜索敌人位置
---@field HighlightItem number @高亮物品
---@field HighlightEnemy number @高亮敌人
ESTQuadrupedCharacterScenePerceptionMode = {}


---识别物品类型
---@class ESTQuadrupedCharacterScenePerceptionItemType
---@field None number @无
---@field TombBox number @死亡盒
---@field AirDrop number @空投
---@field SpecialAirDrop number @特殊空投（宝箱）
---@field PickUpWrapper number @可拾取物
---@field PickUpListWrapper number @可拾取列表
---@field EscapeSupplyBox number @地铁物资箱
---@field QuickSign number @快捷标点
---@field WarDogSign number @军犬标点
---@field Enemy number @敌人
ESTQuadrupedCharacterScenePerceptionItemType = {}


---识别得到的物品信息
---@class FSTQuadrupedCharacterScenePerceptionItemInfo
---@field bIsValid boolean
---@field StartLoc FVector
---@field ActorLoc FVector
---@field VisibleLoc FVector
---@field Actor AActor
---@field MsgID string
---@field SignType string
---@field TypeSpecificID number
---@field InstanceID number
---@field Dist number
---@field ItemType ESTQuadrupedCharacterScenePerceptionItemType
FSTQuadrupedCharacterScenePerceptionItemInfo = {}


---四足动物场景感知技能，赋予其主人
---@class USTQuadrupedCharacterScenePerceptionSkill: UPersistEffectBase
---@field bTraceAlertNeedTick boolean
---@field TraceAlertDist number
---@field TraceAlertObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field bTraceSearchEnemyNeedTick boolean
---@field TraceSearchEnemyDist number
---@field TraceSearchEnemyObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field ScreenCenter FVector2D
---@field ScreenSize number
---@field ActiveQuickSignOffset FVector4
---@field TraceQuickSignDist number
---@field TraceAirdropBoxRadius number
---@field TraceAirdropBoxDist number
---@field VisibleCheckAirdropBoxChannels ULuaArrayHelper<ECollisionChannel>
---@field TraceTombBoxRadius number
---@field TraceTombBoxDist number
---@field VisibleCheckTombBoxChannels ULuaArrayHelper<ECollisionChannel>
---@field TracePickupWrapperRadius number
---@field TracePickupWrapperDist number
---@field VisibleCheckPickupWrapperChannels ULuaArrayHelper<ECollisionChannel>
---@field EscapeSupplyBoxClassPath string
---@field TraceEscapeSupplyBoxRadius number
---@field TraceEscapeSupplyBoxDist number
---@field TraceEscapeSupplyBoxObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field VisibleCheckEscapeSupplyBoxChannels ULuaArrayHelper<ECollisionChannel>
---@field AttackEnemyClassPathWhiteList ULuaArrayHelper<string>
---@field TraceAttackEnemyRadius number
---@field TraceAttackEnemyDist number
---@field TraceAttackEnemyObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field VisibleCheckAttackEnemyChannels ULuaArrayHelper<ECollisionChannel>
---@field AttackEnemyForbidPawnStates ULuaArrayHelper<EPawnState>
---@field AttackEnemyForbidDynamicPawnStates ULuaArrayHelper<FGameplayTag>
---@field PerceptionMode ESTQuadrupedCharacterScenePerceptionMode
---@field CacheViewPoint FVector
---@field bCacheViewPointValid boolean
---@field CacheViewItem FSTQuadrupedCharacterScenePerceptionItemInfo
local USTQuadrupedCharacterScenePerceptionSkill = {}

---@param Character ASTExtraBaseCharacter
function USTQuadrupedCharacterScenePerceptionSkill:TickHighlightAlertPos(Character) end

---@param Character ASTExtraBaseCharacter
function USTQuadrupedCharacterScenePerceptionSkill:TickHighlightSearchEnemyPos(Character) end

---@param Character ASTExtraBaseCharacter
function USTQuadrupedCharacterScenePerceptionSkill:TickHighlightItem(Character) end

function USTQuadrupedCharacterScenePerceptionSkill:ResetViewInfo() end

---@param Character ASTExtraBaseCharacter
---@param OutViewPoint FVector
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewAlertPos(Character, OutViewPoint) end

---@param Character ASTExtraBaseCharacter
---@param OutViewPoint FVector
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewSearchEnemyPos(Character, OutViewPoint) end

---@param Character ASTExtraBaseCharacter
---@param OutResult FSTQuadrupedCharacterScenePerceptionItemInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewEnemy(Character, OutResult) end

---@param Pos FVector
function USTQuadrupedCharacterScenePerceptionSkill:OnHighlightPos(Pos) end

---@param ItemInfo FSTQuadrupedCharacterScenePerceptionItemInfo
function USTQuadrupedCharacterScenePerceptionSkill:OnHighlightItem(ItemInfo) end

---@param QuickSignInfo FSTQuadrupedCharacterQuickSignInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CanQuickSignBeTraced(QuickSignInfo) end

---@param WarDogSignInfo FSTQuadrupedCharacterQuickSignInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CanWarDogSignBeTraced(WarDogSignInfo) end

---@param PickupWrapper APickUpWrapperActor
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CanPickupWrapperBeTraced(PickupWrapper) end

---@param AirDropBox AAirDropBoxActor
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CanAirdropBoxBeTraced(AirDropBox) end

---@param SpecialAirDropBox ATreasureBox
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CanSpecialAirdropBoxBeTraced(SpecialAirDropBox) end

---@param TombBox APlayerTombBox
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CanTombBoxBeTraced(TombBox) end

---@param EscapeSupplyBox AActor
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CanEscapeSupplyBoxBeTraced(EscapeSupplyBox) end

---@param Enemy AActor
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CanEnemyBeTraced(Enemy) end

---@param PickupWrapper APickUpWrapperActor
function USTQuadrupedCharacterScenePerceptionSkill:GetPickupWrapperActorBoundsPoints(PickupWrapper) end

---@param AirDropBox AAirDropBoxActor
function USTQuadrupedCharacterScenePerceptionSkill:GetAirdropBoxActorBoundsPoints(AirDropBox) end

---@param SpecialAirDropBox ATreasureBox
function USTQuadrupedCharacterScenePerceptionSkill:GetSpecialAirdropBoxActorBoundsPoints(SpecialAirDropBox) end

---@param TombBox APlayerTombBox
function USTQuadrupedCharacterScenePerceptionSkill:GetTombBoxActorBoundsPoints(TombBox) end

---@param Character ASTExtraBaseCharacter
---@param TraceDist number
---@param ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@param OutViewPoint FVector
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewPoint(Character, TraceDist, ObjectTypes, OutViewPoint) end

---@param Character ASTExtraBaseCharacter
---@param TraceDist number
---@param ItemType ESTQuadrupedCharacterScenePerceptionItemType
---@param SignInfos ULuaArrayHelper<FSTQuadrupedCharacterQuickSignInfo>
---@param OutResult FSTQuadrupedCharacterScenePerceptionItemInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CommonGetViewSign(Character, TraceDist, ItemType, SignInfos, OutResult) end

---@param Character ASTExtraBaseCharacter
---@param TraceDist number
---@param OutResult FSTQuadrupedCharacterScenePerceptionItemInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewQuickSign(Character, TraceDist, OutResult) end

---@param Character ASTExtraBaseCharacter
---@param TraceDist number
---@param OutResult FSTQuadrupedCharacterScenePerceptionItemInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewWarDogSign(Character, TraceDist, OutResult) end

---@param Character ASTExtraBaseCharacter
function USTQuadrupedCharacterScenePerceptionSkill:RetrievePlayerCenterAndSize(Character) end

---@param Character ASTExtraBaseCharacter
---@param TraceDist number
---@param TraceRadius number
---@param VisibleCheckTraceChannels ULuaArrayHelper<ECollisionChannel>
---@param OutResult FSTQuadrupedCharacterScenePerceptionItemInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewAirdropBox(Character, TraceDist, TraceRadius, VisibleCheckTraceChannels, OutResult) end

---@param Character ASTExtraBaseCharacter
---@param TraceDist number
---@param TraceRadius number
---@param VisibleCheckTraceChannels ULuaArrayHelper<ECollisionChannel>
---@param OutResult FSTQuadrupedCharacterScenePerceptionItemInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewSpecialAirdropBox(Character, TraceDist, TraceRadius, VisibleCheckTraceChannels, OutResult) end

---@param Character ASTExtraBaseCharacter
---@param TraceDist number
---@param TraceRadius number
---@param VisibleCheckTraceChannels ULuaArrayHelper<ECollisionChannel>
---@param OutResult FSTQuadrupedCharacterScenePerceptionItemInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewTombBox(Character, TraceDist, TraceRadius, VisibleCheckTraceChannels, OutResult) end

---@param Character ASTExtraBaseCharacter
---@param TraceDist number
---@param TraceRadius number
---@param VisibleCheckTraceChannels ULuaArrayHelper<ECollisionChannel>
---@param OutResult FSTQuadrupedCharacterScenePerceptionItemInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewPickupWrapper(Character, TraceDist, TraceRadius, VisibleCheckTraceChannels, OutResult) end

---@param Character ASTExtraBaseCharacter
---@param TraceDist number
---@param TraceRadius number
---@param ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@param TraceChannels ULuaArrayHelper<ECollisionChannel>
---@param OutResult FSTQuadrupedCharacterScenePerceptionItemInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewEscapeSupplyBox(Character, TraceDist, TraceRadius, ObjectTypes, TraceChannels, OutResult) end

---@param Character ASTExtraBaseCharacter
---@param TraceDist number
---@param TraceRadius number
---@param VisibleCheckTraceChannels ULuaArrayHelper<ECollisionChannel>
---@param ExpectedType ESTQuadrupedCharacterScenePerceptionItemType
---@param OutResult FSTQuadrupedCharacterScenePerceptionItemInfo
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetViewPickableActor(Character, TraceDist, TraceRadius, VisibleCheckTraceChannels, ExpectedType, OutResult) end

---@param Character ASTExtraBaseCharacter
---@param OutCameraLoc FVector
---@param OutDirection FVector
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:GetCameraInfo(Character, OutCameraLoc, OutDirection) end

---@param Dist1 number
---@param Radius1 number
---@param Dist2 number
---@param Radius2 number
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CheckNeedReplace(Dist1, Radius1, Dist2, Radius2) end

---@param ContextObject UObject
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param BoundsPoints ULuaArrayHelper<FVector>
---@param CheckLoc FVector
---@param StartLoc FVector
---@param EndLoc FVector
---@param Direction FVector
---@param TraceDist number
---@param TraceRadius number
---@param bNeedVisible boolean
---@param TraceChannels ULuaArrayHelper<ECollisionChannel>
---@param OutDist number
---@param OutRadius number
---@param OutVisibleLoc FVector
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CheckLocationValid(ContextObject, IgnoreActors, BoundsPoints, CheckLoc, StartLoc, EndLoc, Direction, TraceDist, TraceRadius, bNeedVisible, TraceChannels, OutDist, OutRadius, OutVisibleLoc) end

---@param ContextObject UObject
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param StartLoc FVector
---@param EndLoc FVector
---@param TraceChannels ULuaArrayHelper<ECollisionChannel>
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CheckVisible(ContextObject, IgnoreActors, StartLoc, EndLoc, TraceChannels) end

---@param Mode ESTQuadrupedCharacterScenePerceptionMode
function USTQuadrupedCharacterScenePerceptionSkill:SetPerceptionMode(Mode) end

---@param Mode ESTQuadrupedCharacterScenePerceptionMode
---@return boolean
function USTQuadrupedCharacterScenePerceptionSkill:CanSetPerceptionMode(Mode) end

function USTQuadrupedCharacterScenePerceptionSkill:OnPerceptionModeChanged() end

---@return ESTQuadrupedCharacterScenePerceptionMode
function USTQuadrupedCharacterScenePerceptionSkill:GetPerceptionMode() end

function USTQuadrupedCharacterScenePerceptionSkill:OnRep_PerceptionMode() end
