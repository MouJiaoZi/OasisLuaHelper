---@meta

---@class FRenderActorDetail
---@field RenderPawnList ULuaArrayHelper<ASceneRenderActorBase>
FRenderActorDetail = {}


---@class USceneRenderActorManager: UActorComponent
---@field RenderActorMap ULuaMapHelper<ESceneRenderActorType, FRenderActorDetail>
---@field SceneDisplayDirectorList ULuaArrayHelper<ASceneDisplayDirectorBase>
local USceneRenderActorManager = {}

---@param ActorType ESceneRenderActorType
---@param RenderActor ASceneRenderActorBase
---@param Order number
function USceneRenderActorManager:RegisterRenderActor(ActorType, RenderActor, Order) end

---@param ActorType ESceneRenderActorType
---@param CountDown number
---@param TotalCountDown number
function USceneRenderActorManager:OnRefreshCountDownValue(ActorType, CountDown, TotalCountDown) end

---@param ActorType ESceneRenderActorType
function USceneRenderActorManager:DestroyRenderActorByType(ActorType) end

---@param ActorType ESceneRenderActorType
---@param ActorTag string
function USceneRenderActorManager:DestroyRenderActorByTag(ActorType, ActorTag) end

---@param ActorType ESceneRenderActorType
---@return number
function USceneRenderActorManager:GetRenderActorNumberByType(ActorType) end

---@param SceneDisplayDirector ASceneDisplayDirectorBase
function USceneRenderActorManager:RegisterSceneDisplayDirector(SceneDisplayDirector) end

---@param SceneDisplayDirector ASceneDisplayDirectorBase
function USceneRenderActorManager:UnRegisterSceneDisplayDirector(SceneDisplayDirector) end

---@param Tag string
---@param ActorIndex number
---@param DetailInfo FPlayerDetailInfo
function USceneRenderActorManager:OnRefreshSceneDisplayAvatarByTag(Tag, ActorIndex, DetailInfo) end

---@param Tag string
---@param CountDown number
---@param TotalCountDown number
function USceneRenderActorManager:OnRefreshSceneDisplayCountDownValue(Tag, CountDown, TotalCountDown) end

---@param Tag string
function USceneRenderActorManager:DestroySceneDisplayActorByTag(Tag) end

---@param Tag string
---@param ActorIndex number
---@param DetailInfo FTeamAssembleAvatarDisplayInfo
function USceneRenderActorManager:OnRefreshTeamAssembleDisplayInfoByTag(Tag, ActorIndex, DetailInfo) end

---@param Tag string
---@param ActorNumber number
function USceneRenderActorManager:OnRefreshDisplayActorNumberByTag(Tag, ActorNumber) end

---@param Tag string
function USceneRenderActorManager:OnResetDisplayAvatarByTag(Tag) end

---@param Tag string
---@return number
function USceneRenderActorManager:GetTotalDisplayActorNumberByTag(Tag) end

---@param RenderActorList ULuaArrayHelper<ASceneRenderActorBase>
---@param RenderActor ASceneRenderActorBase
---@param Order number
function USceneRenderActorManager:RegisterRenderActorInternal(RenderActorList, RenderActor, Order) end
