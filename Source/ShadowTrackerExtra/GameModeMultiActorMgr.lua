---@meta

---@class EAddPlayerResult
---@field Result_Success number
---@field Result_Full number
---@field Result_Error number
---@field Result_Exist number
EAddPlayerResult = {}


---@class FZoneActorConfigInfo
---@field SetOwnerToPlayer boolean
---@field OnlyNetRelevantForPlayer boolean
---@field ZoneActorDelayDestroyTime number
---@field TotalPlayerCount number
---@field ZoneX number
---@field ZoneY number
---@field ZoneZ number
---@field ZoneOffset FVector
---@field OriginPos FVector
---@field OriginRot FRotator
---@field ZoneActorClass AGameModeActor
---@field EnterClearItemIDs ULuaArrayHelper<number>
---@field ExitClearItemIDs ULuaArrayHelper<number>
FZoneActorConfigInfo = {}


---@class FZoneActorCacheInfo
---@field CanAddToZone boolean
---@field CurrentZoneIndex number
---@field PlayerList ULuaArrayHelper<ASTExtraPlayerController>
---@field AIList ULuaArrayHelper<AAIController>
FZoneActorCacheInfo = {}


---@class FZoneActorListInfo
---@field ZonesInfoMap ULuaMapHelper<number, FZoneActorCacheInfo>
FZoneActorListInfo = {}


---@class UGameModeMultiActorMgr: UGameModeBaseComponent
---@field bExitLastZoneIfIn boolean
---@field bVerticalSpawnActor boolean
---@field AIKeyStartID number
---@field ZoneConfigs ULuaArrayHelper<FZoneActorConfigInfo>
---@field ZonesList ULuaArrayHelper<FZoneActorListInfo>
local UGameModeMultiActorMgr = {}

---@param PC APlayerController
function UGameModeMultiActorMgr:OnPlayerRealExit(PC) end

---@param InZoneID number
function UGameModeMultiActorMgr:OnAsyncLoadClassComplete(InZoneID) end

---@param InZoneID number
---@param InZoneIndex number
---@return boolean
function UGameModeMultiActorMgr:CanEnterZone(InZoneID, InZoneIndex) end

---@param InZoneID number
---@return boolean
function UGameModeMultiActorMgr:IsZoneReady(InZoneID) end

---@param Controller APlayerController
---@return boolean
function UGameModeMultiActorMgr:PlayerIsInZone(Controller) end

---@param Controller APlayerController
---@param OutZoneID number
---@param OutZoneIndex number
---@return boolean
function UGameModeMultiActorMgr:GetPlayerZoneID(Controller, OutZoneID, OutZoneIndex) end

---@param InTeamID number
---@param OutZoneID number
---@param OutZoneIndex number
---@param CheckFull boolean
---@return boolean
function UGameModeMultiActorMgr:GetTeamZoneID(InTeamID, OutZoneID, OutZoneIndex, CheckFull) end

---@param InTeamID number
---@param InZoneID number
---@param OutZoneIndex number
---@param CheckFull boolean
---@return boolean
function UGameModeMultiActorMgr:GetTeamZoneIndexID(InTeamID, InZoneID, OutZoneIndex, CheckFull) end

---@param InZoneID number
---@return number
function UGameModeMultiActorMgr:GetMaxZoneCount(InZoneID) end

---@param InZoneID number
---@param bForceNew boolean
---@return number
function UGameModeMultiActorMgr:CalculateZoneIndex(InZoneID, bForceNew) end

---@param InZoneID number
function UGameModeMultiActorMgr:GetZonesInfoMap(InZoneID) end

---@param Controller APlayerController
---@param InZoneID number
---@param bForceNew boolean
---@return EAddPlayerResult
function UGameModeMultiActorMgr:AddPlayerToScene(Controller, InZoneID, bForceNew) end

---@param Controller APlayerController
---@param InZoneID number
---@return EAddPlayerResult
function UGameModeMultiActorMgr:AddPlayerToTeamScene(Controller, InZoneID) end

---@param Controller APlayerController
---@param InZoneID number
---@param InZoneIndex number
---@return EAddPlayerResult
function UGameModeMultiActorMgr:AddPlayerToZoneScene(Controller, InZoneID, InZoneIndex) end

---@param Controller APlayerController
function UGameModeMultiActorMgr:RemovePlayerFromScene(Controller) end

---@param GameModeActor AGameModeActor
function UGameModeMultiActorMgr:RemoveZoneActor(GameModeActor) end

---@param InZoneID number
---@param InZoneIndex number
function UGameModeMultiActorMgr:RemoveZoneInfo(InZoneID, InZoneIndex) end

function UGameModeMultiActorMgr:RemoveAllZone() end

function UGameModeMultiActorMgr:RemoveEmptyInfo() end

---@param InZoneID number
---@param InZoneIndex number
function UGameModeMultiActorMgr:RemoveZoneEmptyInfo(InZoneID, InZoneIndex) end

---@param InValue boolean
function UGameModeMultiActorMgr:SetCanAddPlayerToScean(InValue) end

---@param DestinTrans FTransform
---@param PC ASTExtraPlayerController
function UGameModeMultiActorMgr:MoveToTransform(DestinTrans, PC) end

---@param AIName string
---@param InCharacter AUAECharacter
---@param InController AAIController
---@param ItemList ULuaArrayHelper<FGameModePlayerItem>
function UGameModeMultiActorMgr:InitAIParams(AIName, InCharacter, InController, ItemList) end

---@param Controller APlayerController
---@param ItemID number
---@param Count number
---@return boolean
function UGameModeMultiActorMgr:AddItemToPlayer(Controller, ItemID, Count) end

---@param Controller APlayerController
---@param ItemID number
---@param Count number
---@return boolean
function UGameModeMultiActorMgr:ConsumeItemFromPlayer(Controller, ItemID, Count) end

---@param Controller APlayerController
---@param ItemIDList ULuaArrayHelper<number>
function UGameModeMultiActorMgr:DropItemsFromPlayer(Controller, ItemIDList) end
