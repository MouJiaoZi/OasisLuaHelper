---@meta

---@class UAvatarBehaviorFeature_MatPlayerState: UAvatarBehaviorFeature_UtilFuncLayer
---@field MatPlayerStateBehavior FMatPlayerStateBehaviorParam
---@field bBuffStateDirty boolean
---@field bConcernStateChange boolean
---@field bConcernBuffChange boolean
---@field bIsSwimState boolean
---@field CachedState EPawnState
---@field bShouldOverlap boolean
---@field TickCounter number
---@field FrameMatchIndexList ULuaArrayHelper<boolean>
local UAvatarBehaviorFeature_MatPlayerState = {}

---@param EnteredState EPawnState
function UAvatarBehaviorFeature_MatPlayerState:HandleStateChanged(EnteredState) end

function UAvatarBehaviorFeature_MatPlayerState:ReMatchMat() end

---@return boolean
function UAvatarBehaviorFeature_MatPlayerState:MatchStateMat() end

---@return boolean
function UAvatarBehaviorFeature_MatPlayerState:MatchNormalMat() end

---@param BuffName string
function UAvatarBehaviorFeature_MatPlayerState:OnCharBuffAdd(BuffName) end

---@param BuffName string
function UAvatarBehaviorFeature_MatPlayerState:OnCharBuffRemove(BuffName) end

---@param bIsEnter boolean
function UAvatarBehaviorFeature_MatPlayerState:OnPlayerEnterWater(bIsEnter) end

---@return boolean
function UAvatarBehaviorFeature_MatPlayerState:OverlapWater() end
