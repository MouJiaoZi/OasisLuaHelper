---@meta

---@class EAddPlayerToSceneResult
---@field Result_Success number
---@field Result_Full number
---@field Result_Error number
EAddPlayerToSceneResult = {}


---@class UGameModeActorMgrCustomLogin: UGameModeActorMgr
---@field bCanRemoveEmptyInfo boolean
---@field bVerticalSpawnActor boolean
---@field bRemoveGameModeActorUseLifeTime boolean
---@field AIKeyStartID number
---@field GameModeActorUseLifeTime number
---@field SceanOffset FVector
---@field DelayRemoveAGameModeActorList ULuaArrayHelper<AGameModeActor>
---@field AIControllerList ULuaArrayHelper<AAIController>
---@field AIControllerClass AAIController
local UGameModeActorMgrCustomLogin = {}

---@param Controller APlayerController
---@return EAddPlayerToSceneResult
function UGameModeActorMgrCustomLogin:AddPlayerToScene(Controller) end

---@param Controller APlayerController
function UGameModeActorMgrCustomLogin:RemovePlayerFromScene(Controller) end

---@param GameModeActor AGameModeActor
function UGameModeActorMgrCustomLogin:RemoveAGameModeActor(GameModeActor) end

---@param GameModeActor AGameModeActor
function UGameModeActorMgrCustomLogin:AddDelayRemoveAGameModeActor(GameModeActor) end

function UGameModeActorMgrCustomLogin:RemoveAllPlayer() end

function UGameModeActorMgrCustomLogin:RemoveEmptyInfo() end

---@param InValue boolean
function UGameModeActorMgrCustomLogin:SetCanAddPlayerToScean(InValue) end

---@param Actor AGameModeActor
---@param Trans FTransform
---@param Controller APlayerController
---@return boolean
function UGameModeActorMgrCustomLogin:FindPlayerStartTransformCustom(Actor, Trans, Controller) end

---@param DestinTrans FTransform
---@param PC ASTExtraPlayerController
function UGameModeActorMgrCustomLogin:MoveToTransform(DestinTrans, PC) end

---@param AIName string
---@param InCharacter AUAECharacter
---@param InController AAIController
---@param ItemList ULuaArrayHelper<FGameModePlayerItem>
function UGameModeActorMgrCustomLogin:InitAIParams(AIName, InCharacter, InController, ItemList) end
