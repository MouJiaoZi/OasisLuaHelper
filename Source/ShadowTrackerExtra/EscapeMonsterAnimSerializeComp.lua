---@meta

---@class FCharLikeMonsterAnimSerializeData
---@field AnimType ECharLikeMonsterAnimType
---@field StateType ECharLikeMonsterStateType
---@field AnimListID number
---@field AnimName string
---@field AnimTime number
FCharLikeMonsterAnimSerializeData = {}


---@class FZombieMonsterAnimSerializeData
---@field AnimType EMonsterPoseType
---@field AnimListID number
---@field AnimName string
---@field AnimTime number
FZombieMonsterAnimSerializeData = {}


---@class UEscapeMonsterAnimSerializeComp: UActorComponent
---@field IsCharLikeMonster boolean
---@field CharLikeMonsterAnimSerializeDataList ULuaArrayHelper<FCharLikeMonsterAnimSerializeData>
---@field ZombieMonsterAnimSerializeDataList ULuaArrayHelper<FZombieMonsterAnimSerializeData>
local UEscapeMonsterAnimSerializeComp = {}
