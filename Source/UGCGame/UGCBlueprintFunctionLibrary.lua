---@meta

---@class UUGCBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local UUGCBlueprintFunctionLibrary = {}

---@param Character ASTExtraBaseCharacter
---@param PlayerKey string
---@return boolean
function UUGCBlueprintFunctionLibrary:ServerRefreshAvatar(Character, PlayerKey) end

---Prints a string to the log, and optionally, to the screen If Print To Log is true, it will be visible in the Output Log window.  Otherwise it will be logged only as 'Verbose', so it generally won't show up.
---@param WorldContextObject UObject
---@param InString string
---@param Duration number
function UUGCBlueprintFunctionLibrary:PrintUGCDebugString(WorldContextObject, InString, Duration) end

---@param AIController AFakePlayerAIController
function UUGCBlueprintFunctionLibrary:PauseBehaviorTree(AIController) end

---@param AIController AFakePlayerAIController
function UUGCBlueprintFunctionLibrary:ResumeBehaviorTree(AIController) end

---@param WorldContextObject UObject
function UUGCBlueprintFunctionLibrary:StartAirRoute(WorldContextObject) end

---@param WorldContextObject UObject
---@param AirDropLoc FVector2D
function UUGCBlueprintFunctionLibrary:StartAirDrop(WorldContextObject, AirDropLoc) end

---@param WorldContextObject UObject
---@param Index number
---@param AirDropType EAirDropType
function UUGCBlueprintFunctionLibrary:StartAirDropUGC(WorldContextObject, Index, AirDropType) end

---@param WorldContextObject UObject
---@param StartPos FVector2D
---@param EndPos FVector2D
---@param DropDis number
---@param AirDropType EAirDropType
function UUGCBlueprintFunctionLibrary:StartNormalAirDropUGC(WorldContextObject, StartPos, EndPos, DropDis, AirDropType) end

---@param WorldContextObject UObject
---@param bEnable boolean
function UUGCBlueprintFunctionLibrary:TogglePoisonCircle(WorldContextObject, bEnable) end

---@param WorldContextObject UObject
function UUGCBlueprintFunctionLibrary:ClosePoisonCircle(WorldContextObject) end

---@param WorldContextObject UObject
function UUGCBlueprintFunctionLibrary:PausePoisonCircle(WorldContextObject) end

---@param WorldContextObject UObject
function UUGCBlueprintFunctionLibrary:UnPausePoisonCircle(WorldContextObject) end

---@param WorldContextObject UObject
---@param AirAttackLoc FVector2D
---@param Radius number
function UUGCBlueprintFunctionLibrary:StartAirAttack(WorldContextObject, AirAttackLoc, Radius) end

---@param WorldContextObject UObject
---@param State number
function UUGCBlueprintFunctionLibrary:NotifyMultiPlayerEnterControllState(WorldContextObject, State) end

function UUGCBlueprintFunctionLibrary:InitGameModeStates() end

---@param TargetState string
function UUGCBlueprintFunctionLibrary:ChangeGameModeState(TargetState) end

---@param WorldContextObject UObject
---@param DeltaNum number
function UUGCBlueprintFunctionLibrary:UpdateAlivePlayerNum(WorldContextObject, DeltaNum) end

---@param PlayerKey number
function UUGCBlueprintFunctionLibrary:RespawnPlayer(PlayerKey) end

---@param WorldContextObject UObject
---@param AIPlayerKey number
function UUGCBlueprintFunctionLibrary:DestroyFakePlayer(WorldContextObject, AIPlayerKey) end

---设置重力: 默认值-980
---@param NewGravity number
function UUGCBlueprintFunctionLibrary:SetWorldOverrideGravity(NewGravity) end

---设置跌落伤害调整系数: FallingDamage *= FallingDamageModifier
---@param NewModifier number
function UUGCBlueprintFunctionLibrary:SetFallingDamageModifier(NewModifier) end

---设置是否取消重伤状态
---@param NewValue boolean
function UUGCBlueprintFunctionLibrary:SetSkipNearDeath(NewValue) end

---批量添加道具
---@param PC ASTExtraPlayerController
---@param ItemIDs ULuaArrayHelper<number>
---@param ItemCounts ULuaArrayHelper<number>
function UUGCBlueprintFunctionLibrary:AddItemForPlayer(PC, ItemIDs, ItemCounts) end

---@param WorldContextObject ASTExtraPlayerController
---@return boolean
function UUGCBlueprintFunctionLibrary:IsUGCInnerUseAtRuntime(WorldContextObject) end

---@param ActorPlayAnim AActor
---@param AnimGameplayTag FGameplayTag
---@param AnimLayerName string
---@param bIsLoop boolean
---@return boolean
function UUGCBlueprintFunctionLibrary:PlayAnimation(ActorPlayAnim, AnimGameplayTag, AnimLayerName, bIsLoop) end

---@param WorldContextObject UObject
function UUGCBlueprintFunctionLibrary:SendGameOver(WorldContextObject) end

---@param WorldContextObject UObject
function UUGCBlueprintFunctionLibrary:ExitGame(WorldContextObject) end

---@param WorldContextObject UObject
---@param GamePartName string
---@return boolean
function UUGCBlueprintFunctionLibrary:IsGamePartLoaded(WorldContextObject, GamePartName) end

---随机选取合法刷怪位置（按层搜索：第0层=原始高度，之后按优先方向逐层下/上） 每层做 MaxTryTimes 次水平随机 + nudge 碰撞微调，总尝试不超过 MaxTotalAttempts
---@param WorldContextObject UObject
---@param InOutSpawnLocation FVector
---@param Range number
---@param UpRange number
---@param DownRange number
---@param PlayerDistance number
---@param bNavmeshReady boolean
---@param MaxTryTimes number
---@param CollisionRadius number
---@param CollisionHalfHeight number
---@param MaxNudgeTries number
---@param MinWallBoundsSize number
---@param MaxTotalAttempts number
---@return boolean
function UUGCBlueprintFunctionLibrary:UGCM_RandomGetSpawnLocation(WorldContextObject, InOutSpawnLocation, Range, UpRange, DownRange, PlayerDistance, bNavmeshReady, MaxTryTimes, CollisionRadius, CollisionHalfHeight, MaxNudgeTries, MinWallBoundsSize, MaxTotalAttempts) end

---@param WorldContextObject UObject
---@param InMobGroupID number
---@return FUGCMobSpawnConfig
function UUGCBlueprintFunctionLibrary:GetMobGroupConfig(WorldContextObject, InMobGroupID) end

---@param WorldContextObject UObject
---@param InOutSpawnLocation FVector
---@param Range number
---@param HeightRange number
---@param PlayerDistance number
---@param ObjRange number
---@param ObjHeight number
---@param MaxTryTimes number
---@return boolean
function UUGCBlueprintFunctionLibrary:RandomGetSpawnLocation(WorldContextObject, InOutSpawnLocation, Range, HeightRange, PlayerDistance, ObjRange, ObjHeight, MaxTryTimes) end

---@param WorldContextObject UObject
---@param RandVec FVector
---@param PlayerDistance number
---@return boolean
function UUGCBlueprintFunctionLibrary:IsKeepMinDistanceWithPlayer(WorldContextObject, RandVec, PlayerDistance) end

---@param WorldContextObject UObject
---@param InOutSpawnLocation FVector
---@param UpRange number
---@param DownRange number
---@return boolean
function UUGCBlueprintFunctionLibrary:FindValidSpawnLocation(WorldContextObject, InOutSpawnLocation, UpRange, DownRange) end

---@param InActor AActor
---@param ConfigIndex number
function UUGCBlueprintFunctionLibrary:StartMotion(InActor, ConfigIndex) end

---@param InActor AActor
---@param ConfigIndex number
function UUGCBlueprintFunctionLibrary:PauseMotion(InActor, ConfigIndex) end

---@param InActor AActor
---@param ConfigIndex number
function UUGCBlueprintFunctionLibrary:ResetMotion(InActor, ConfigIndex) end

---@param Widget UWidget
function UUGCBlueprintFunctionLibrary:CleanupWidgetTree(Widget) end

---@param WorldContextObject UObject
---@param InMapID number
---@param OutConfigInfo FUGCMinimapConfigInfo
function UUGCBlueprintFunctionLibrary:GetMinimapConfigInfo(WorldContextObject, InMapID, OutConfigInfo) end

---@param WorldContextObject UObject
---@param InClass UClass
---@param OutConfigInfo FUGCMapMarkConfigInfo
function UUGCBlueprintFunctionLibrary:GetMapMarkConfigInfoByClass(WorldContextObject, InClass, OutConfigInfo) end

---@param WorldContextObject UObject
---@param InSoftClass AActor
---@param OutConfigInfo FUGCMapMarkConfigInfo
function UUGCBlueprintFunctionLibrary:GetMapMarkConfigInfoBySoftClass(WorldContextObject, InSoftClass, OutConfigInfo) end

---@param WorldContextObject UObject
---@param ResID number
---@param OutConfigInfo FUGCMapMarkConfigInfo
function UUGCBlueprintFunctionLibrary:GetMapMarkConfigInfoByResID(WorldContextObject, ResID, OutConfigInfo) end

---@param WorldContextObject UObject
---@param OutAllMapMarkConfigInfos ULuaMapHelper<AActor, FUGCMapMarkConfigInfo>
function UUGCBlueprintFunctionLibrary:GetAllMapMarkConfigInfos(WorldContextObject, OutAllMapMarkConfigInfos) end

---@param Class UClass
---@param bIncludeDerivedClasses boolean
function UUGCBlueprintFunctionLibrary:GetObjectsOfClass(Class, bIncludeDerivedClasses) end

---@param Outer UObject
---@param bIncludeNestedObjects boolean
function UUGCBlueprintFunctionLibrary:GetObjectsWithOuter(Outer, bIncludeNestedObjects) end

---@param WorldContextObject UObject
---@param TargetActor AActor
---@param Params FUGCDamageNumberParams
function UUGCBlueprintFunctionLibrary:AddUGCCustomDamageNumber(WorldContextObject, TargetActor, Params) end

---@return FUGCDamageNumberParams
function UUGCBlueprintFunctionLibrary:MakeCustomDamageNumberParams() end

---@param SocketSelector FMeshSocketSelector
---@param InTarget UObject
---@return string
function UUGCBlueprintFunctionLibrary:GetMeshSocketBySelector(SocketSelector, InTarget) end
