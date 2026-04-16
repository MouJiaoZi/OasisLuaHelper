---@meta

---@class ASTFastDestructibleActor: AFastDestructibleActor, IDamageableInterface
---@field AnimActorClass AActor
---@field CachedActor ULuaMapHelper<number, AActor>
---@field CachedHitparams ULuaMapHelper<number, FFastDestructibleParameters>
local ASTFastDestructibleActor = {}

---@param params FFastDestructibleParameters
function ASTFastDestructibleActor:HandleOnInstanceDestroy(params) end

---@param NewState EFastDestructibleState
---@param InstanceIDs ULuaArrayHelper<number>
function ASTFastDestructibleActor:HandleOnPreSwitchState(NewState, InstanceIDs) end

---@param NewState EFastDestructibleState
---@param InstanceIDs ULuaArrayHelper<number>
function ASTFastDestructibleActor:HandleOnPostSwitchState(NewState, InstanceIDs) end

---@param Params FFastDestructibleParameters
---@return number
function ASTFastDestructibleActor:GetAnimationPlayRate(Params) end
