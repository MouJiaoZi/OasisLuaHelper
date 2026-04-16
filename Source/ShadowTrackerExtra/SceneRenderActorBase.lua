---@meta

---@class ESceneRenderActorType
---@field Commom number
---@field TopCharmPawn number
---@field LuckyAudience number
ESceneRenderActorType = {}


---@class ASceneRenderActorBase: AActor
---@field ActorType ESceneRenderActorType
---@field ActorTag string
---@field Order number
local ASceneRenderActorBase = {}

---@param Gender number
---@param ItemList ULuaArrayHelper<number>
function ASceneRenderActorBase:OnRefreshAvatarInfoBlueprint(Gender, ItemList) end

---@param CountDown number
---@param TotalCountDown number
function ASceneRenderActorBase:OnRefreshCountDownValue(CountDown, TotalCountDown) end

function ASceneRenderActorBase:OnDestroyRenderActor() end
