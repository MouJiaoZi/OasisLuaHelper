---@meta

---@class FAIProbeAIItemList
---@field ItemList ULuaArrayHelper<number>
FAIProbeAIItemList = {}


---@class FFakePlayerInfoTableItem
---@field ID number
---@field Name string
FFakePlayerInfoTableItem = {}


---@class UAIProbeComponent: UGameModeBaseComponent
---@field SMComp UUAEStateMachineComponent
---@field bEnableAIPolicyDecisionLog number
---@field bEnableAIPolicyDecisionLogShipping number
---@field AIPolicyDecisionRelevantUpdateInterval number
---@field RelevantPlayerAIPolicyDecisionCheckDistanceSqurad number
---@field AIPolicyDecisionTargetPlayerNum number
---@field bVisibleCheck boolean
---@field AIItemList ULuaArrayHelper<FAIProbeAIItemList>
---@field AIPlayers ULuaArrayHelper<number>
---@field TimeIntervalDelta number
---@field TimeInterval number
---@field CurPolicyDecisionRelevantUpdateInterval number
---@field bEnableAIPolicyLog boolean
---@field AIParachutePoints ULuaArrayHelper<FVector>
---@field AICanJumpPoint FVector
---@field AIForceJumpPoint FVector
---@field PlaneFlyStartPoint FVector
---@field PlaneFlyEndPoint FVector
---@field AISpawnTypeCache ULuaMapHelper<number, number>
---@field RealAiIdxMap ULuaMapHelper<number, number>
---@field VaildSpawnPointActors ULuaArrayHelper<AActor>
local UAIProbeComponent = {}

function UAIProbeComponent:PreSpawnAIWhenGameModeInited() end

---@param PlayerKey number
function UAIProbeComponent:NotifyNewAIPlayerEnter(PlayerKey) end

function UAIProbeComponent:ChooseAIPolicyTarget() end

---@return number
function UAIProbeComponent:GetRelevantPlayerAIPolicyDecisionCheckDistanceSqurad() end

---@return number
function UAIProbeComponent:GetDefaultRelevantPlayerAIPolicyDecisionCheckDistanceSqurad() end

---@param PlaneFlyStart FVector
---@param PlaneFlyEnd FVector
---@return boolean
function UAIProbeComponent:OnInitializeAIParachutePoints(PlaneFlyStart, PlaneFlyEnd) end

---@param PlaneData FPlaneData
function UAIProbeComponent:OnNotifyAIEnterPlane(PlaneData) end

---@param BuildingLoc FVector
---@param SpotLoc FVector
---@param PickupActor AActor
function UAIProbeComponent:RegisterAIPickupPoint(BuildingLoc, SpotLoc, PickupActor) end

---@param MaxDistance number
---@param AIPlayer AController
---@return FVector
function UAIProbeComponent:GetAITeamParachuteJumpPoint(MaxDistance, AIPlayer) end

---@param InPlayerKey number
function UAIProbeComponent:ReceiveNewAIPlayerEnter(InPlayerKey) end

---@param OutParam FGameModeAIPlayerParams
function UAIProbeComponent:GetDefaultAIPlayerParams(OutParam) end

function UAIProbeComponent:TimerHandleSpawnAI() end

---@param PlayerKey number
---@return boolean
function UAIProbeComponent:SpawnAIWithPlayerKey(PlayerKey) end

function UAIProbeComponent:SpawnAllAI() end

---@return number
function UAIProbeComponent:GetAIMaxNum() end

---@return number
function UAIProbeComponent:GetAICharacterNum() end

---@param DeltaTime number
function UAIProbeComponent:UpdateAIPolicyDecisionFlag(DeltaTime) end

---@param PlayerKey number
---@return number
function UAIProbeComponent:GetDefaultAIType(PlayerKey) end

---@param PlayerKey number
---@param AIType number
function UAIProbeComponent:SetAITypeCache(PlayerKey, AIType) end

---@param PlayerKey number
---@param bDeleteIfGet boolean
---@return number
function UAIProbeComponent:GetAITypeCache(PlayerKey, bDeleteIfGet) end

---@param PlayerKey number
---@param SpawnLoc FVector
function UAIProbeComponent:SetSpawnAILocCache(PlayerKey, SpawnLoc) end

---@param PlayerKey number
---@param OutSpawnLoc FVector
---@param bDeleteIfGet boolean
---@return boolean
function UAIProbeComponent:GetSpawnAILocCache(PlayerKey, OutSpawnLoc, bDeleteIfGet) end

---@param FightNo number
---@return number
function UAIProbeComponent:GetRealAiIdx(FightNo) end

---@param FightNo number
function UAIProbeComponent:AddRealAiIdx(FightNo) end

function UAIProbeComponent:ResetRealAiIdx() end
