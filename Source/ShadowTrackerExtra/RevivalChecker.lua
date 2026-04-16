---@meta

---@class ERevivalCheckerStatisticType
---@field PlayerEnter number
---@field PlayerDead number
---@field PlayerParachuteLanded number
---@field PlayerUse number
ERevivalCheckerStatisticType = {}


---@class FTimeRange
---@field BeginTime number
---@field EndTime number
FTimeRange = {}


---@class FRevivalPlaneSegmentParam
---@field CircleIndex number
---@field SpecificRad number
FRevivalPlaneSegmentParam = {}


---@class FOnPlayerNumInCheckerChanged : ULuaMulticastDelegate
FOnPlayerNumInCheckerChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Checker: ARevivalChecker, Num: number, DeltaNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerNumInCheckerChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Checker ARevivalChecker
---@param Num number
---@param DeltaNum number
function FOnPlayerNumInCheckerChanged:Broadcast(Checker, Num, DeltaNum) end


---@class ARevivalChecker: AUAERegionActor
---@field RevivalCheckerID number
---@field RevivalDelayTime number
---@field ParachuteHeight number
---@field ParachuteRadius number
---@field TickCheckInternal number
---@field bUseTickCheck boolean
---@field EnableTimeRangeList ULuaArrayHelper<FTimeRange>
---@field bEnabled boolean
---@field LifeCycleRatio number
---@field SizeData FVector
---@field bNeedShowUIMark boolean
---@field AutoGiveCardID number
---@field RegionTags ULuaSetHelper<string>
---@field OnPlayerNumInCheckerChanged FOnPlayerNumInCheckerChanged
---@field PlayerNumInCheckerList ULuaArrayHelper<number>
local ARevivalChecker = {}

---@param PlayerKey number
---@param bAdd boolean
function ARevivalChecker:ModifyPlayerList(PlayerKey, bAdd) end

---@param Character ASTExtraBaseCharacter
function ARevivalChecker:OnPlayerDeath(Character) end

---@param Character ASTExtraBaseCharacter
function ARevivalChecker:PostPlayerDeath(Character) end

---@param PlayerState ASTExtraPlayerState
function ARevivalChecker:DisableRevivalCard(PlayerState) end

---@param PlayerState ASTExtraPlayerState
function ARevivalChecker:EnableRevivalCard(PlayerState) end

---@param TlogType ERevivalCheckerStatisticType
---@param Playerkey number
function ARevivalChecker:TlogTheData(TlogType, Playerkey) end

---@param PlayerKey number
function ARevivalChecker:OnPlayerParachuteLanded(PlayerKey) end

---@param PlayerPawn ASTExtraBaseCharacter
---@return boolean
function ARevivalChecker:CheckPlayerWhetherInRange(PlayerPawn) end

---@return boolean
function ARevivalChecker:CheckRevivalCheckerValidity() end

function ARevivalChecker:RefreshMeshCollision() end

---@param bEnabled boolean
function ARevivalChecker:PostRevivalCheckerState(bEnabled) end

---@param InCharacter ASTExtraBaseCharacter
function ARevivalChecker:PostEnter(InCharacter) end

---@param InCharacter ASTExtraBaseCharacter
function ARevivalChecker:PostLeave(InCharacter) end

function ARevivalChecker:ShowMeshCollision() end

---@param InCharacter ASTExtraPlayerCharacter
---@return boolean
function ARevivalChecker:CheckPlayerInPlayerList(InCharacter) end

---@param inSizeData FVector
function ARevivalChecker:SetSizeData(inSizeData) end

function ARevivalChecker:OnRep_bEnabled() end

---@param PlayerState ASTExtraPlayerState
---@param PlayerKeys ULuaArrayHelper<number>
function ARevivalChecker:RevivalProcess(PlayerState, PlayerKeys) end

---@param TeamID number
---@return number
function ARevivalChecker:GetSpecificRad(TeamID) end

---@param PlayerKey number
function ARevivalChecker:ChangePlayerNumInChecker(PlayerKey) end

---@param WorldContextObjects UObject
function ARevivalChecker:GetPlayerControllerInChecker(WorldContextObjects) end

function ARevivalChecker:GetRegionPlayerNum() end

---@param OverlappedActor AActor
---@param Other AActor
function ARevivalChecker:TrigBeginOverlap(OverlappedActor, Other) end

---@param OverlappedActor AActor
---@param Other AActor
function ARevivalChecker:TrigEndOverlap(OverlappedActor, Other) end

---@param PlayerController AController
function ARevivalChecker:DistributeRevivalCard(PlayerController) end
