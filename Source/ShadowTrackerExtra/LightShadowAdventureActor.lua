---@meta

---@class ELightShadowAdventureActorStatus
---@field Sleep number
---@field Awake number @未激活
---@field Ready number @激活
---@field PreGame number @有玩家ready了
---@field Teleport number @播放过渡UI中
---@field Gaming number @瞬移
ELightShadowAdventureActorStatus = {}


---@class FLSAPlayerInfo
---@field LastReadyLoc FVector @用来判断取消
---@field Ready boolean @用来判断玩家是否已经准备
FLSAPlayerInfo = {}


---@class ALightShadowAdventureActor: AActivityBaseActor
---@field NeedLoadUI number
---@field NeedUnLoadUI number
---@field AreaIndex number
---@field Status ELightShadowAdventureActorStatus
---@field ReadyOne boolean
---@field ReadyTwo boolean
---@field ReadyThree boolean
---@field ReadyFour boolean
---@field ActivityBaseActorPath string
---@field ActivityBaseActorLocationList ULuaArrayHelper<FVector>
---@field AreaHight number
---@field AwakeDuration number
---@field StopDuration number
---@field KickOutPlayerPosList ULuaArrayHelper<FTransform>
---@field TeamID number
---@field PCInfoList ULuaArrayHelper<FLSAPlayerInfo>
---@field IconID number
---@field TeamPlayerTotal number @缓存实例ID
---@field TickFreq number
---@field bIsCheckInstance boolean
local ALightShadowAdventureActor = {}

function ALightShadowAdventureActor:SpawnGameActivityBaseActor() end

function ALightShadowAdventureActor:OnRep_LoadUI() end

function ALightShadowAdventureActor:OnRep_UnLoadUI() end

function ALightShadowAdventureActor:OnRep_AreaIndex() end

function ALightShadowAdventureActor:OnRep_Status() end

function ALightShadowAdventureActor:OnRep_ReadyOne() end

function ALightShadowAdventureActor:OnRep_ReadyTwo() end

function ALightShadowAdventureActor:OnRep_ReadyThree() end

function ALightShadowAdventureActor:OnRep_ReadyFour() end

---@param PC ASTExtraPlayerController
---@param WithTeammate boolean
function ALightShadowAdventureActor:GMPlayGame(PC, WithTeammate) end

function ALightShadowAdventureActor:ServerCreateAreaIndex() end

function ALightShadowAdventureActor:ServerGoToSleep() end

function ALightShadowAdventureActor:ServerGoToAwake() end

function ALightShadowAdventureActor:ServerGoToReady() end

function ALightShadowAdventureActor:ServerGoToPreGame() end

function ALightShadowAdventureActor:ServerGoToTeleport() end

function ALightShadowAdventureActor:ServerGoToGaming() end

function ALightShadowAdventureActor:LevelActorStartPlay() end

function ALightShadowAdventureActor:TeleportPlayers() end

function ALightShadowAdventureActor:RelevantPawns() end

---@param InStatus ELightShadowAdventureActorStatus
function ALightShadowAdventureActor:ServerGoToStatus(InStatus) end

---@param InStatus ELightShadowAdventureActorStatus
function ALightShadowAdventureActor:OnServerGoToStatus(InStatus) end

---@param PC ASTExtraPlayerController
---@param InAreaIndex number
function ALightShadowAdventureActor:ServerPlayerReady(PC, InAreaIndex) end

---@param PC ASTExtraPlayerController
---@param InAreaIndex number
function ALightShadowAdventureActor:ServerPlayerCancelReady(PC, InAreaIndex) end

---@param PC ASTExtraPlayerController
function ALightShadowAdventureActor:OnServerPlayerCancelReady(PC) end

---@param PC ASTExtraPlayerController
---@param InAreaIndex number
function ALightShadowAdventureActor:ServerPlayerGaming(PC, InAreaIndex) end

---@param OutLocationList ULuaArrayHelper<FTransform>
function ALightShadowAdventureActor:GetActivityBaseActorPlayerStartLocation(OutLocationList) end

---@param PC ASTExtraPlayerController
---@param InAreaIndex number
---@return boolean
function ALightShadowAdventureActor:ServerCheckShowReadyButton(PC, InAreaIndex) end

---@param PC ASTExtraPlayerController
---@param InAreaIndex number
---@return boolean
function ALightShadowAdventureActor:ServerCheckShowCancelReadyButton(PC, InAreaIndex) end

---@param PC ASTExtraPlayerController
---@param InAreaIndex number
---@return boolean
function ALightShadowAdventureActor:ServerCheckShowGamingButton(PC, InAreaIndex) end

---@param PC ASTExtraPlayerController
---@return boolean
function ALightShadowAdventureActor:InPCInfoList(PC) end

---@param PC ASTExtraPlayerController
function ALightShadowAdventureActor:RemoveInfoList(PC) end

---@param PC ASTExtraPlayerController
function ALightShadowAdventureActor:AddInfoList(PC) end

function ALightShadowAdventureActor:ServerCheckCancelReady() end

function ALightShadowAdventureActor:ServerCheckAllPlayerReady() end

function ALightShadowAdventureActor:ServerForceCancelAllReadyPlayer() end

function ALightShadowAdventureActor:ServerInitIcon() end

---@param Status string
function ALightShadowAdventureActor:ServerSetIconStatus(Status) end

function ALightShadowAdventureActor:LuaOnRep_Status() end

function ALightShadowAdventureActor:LuaOnReadyOne() end

function ALightShadowAdventureActor:LuaOnReadyTwo() end

function ALightShadowAdventureActor:LuaOnReadyThree() end

function ALightShadowAdventureActor:LuaOnReadyFour() end

---@param PlayerState AActor
---@param PC ASTExtraPlayerController
function ALightShadowAdventureActor:LuaPlayerGoToGaming(PlayerState, PC) end

---@param PC ASTExtraPlayerController
---@param Ready boolean
function ALightShadowAdventureActor:ServerSetPlayerReadyTips(PC, Ready) end

---@param PC ASTExtraPlayerController
function ALightShadowAdventureActor:ServerLeaveActivityActor(PC) end

---@return number
function ALightShadowAdventureActor:GetTeamPlayerTotal() end

function ALightShadowAdventureActor:CheckAndReportDamageFreeBuff() end

function ALightShadowAdventureActor:LuaTick() end
