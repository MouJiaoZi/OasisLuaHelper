---@meta

---@class FAvatarAnimalCollisionTestSubTask
FAvatarAnimalCollisionTestSubTask = {}


---@class FAvatarAnimalCollisionTestTask
FAvatarAnimalCollisionTestTask = {}


---@class FAvatarAnimalCollisionCurrentTask
FAvatarAnimalCollisionCurrentTask = {}


---@class FAvatarAnimalCollisionTestData
---@field TestBoneName string
---@field TestBoneParentName string
---@field TestScaleValue number
---@field TestOffsetValue number
FAvatarAnimalCollisionTestData = {}


---@class FAvatarAnimalCollisionHitData
---@field HitBoneIndex number
---@field HitBoneName string
---@field CollisionTestData FAvatarAnimalCollisionTestData
FAvatarAnimalCollisionHitData = {}


---@class FAvatarAnimalIgnoreBoneData
---@field ParentBoneName string
---@field ChildBoneName string
FAvatarAnimalIgnoreBoneData = {}


---@class FAvatarAnimalCollisionBoneData
FAvatarAnimalCollisionBoneData = {}


---@class FAvatarAnimalCollisionAvatarMeshData
FAvatarAnimalCollisionAvatarMeshData = {}


---@class FAvatarAnimalCollisionData
FAvatarAnimalCollisionData = {}


---@class AAvatarAnimalCollisionTestActor: ASTExtraPlayerCharacter
---@field bHitStop boolean
---@field DelayHitTime number
---@field DelayTest number
---@field bDrawRay boolean
---@field bDrawHit boolean
---@field HitDrawTime number
---@field HitPointSize number
---@field TestTaskList ULuaArrayHelper<FAvatarAnimalCollisionTestTask>
---@field CurrentTask FAvatarAnimalCollisionCurrentTask
---@field TestBonesData ULuaArrayHelper<FAvatarAnimalCollisionTestData>
---@field IgnoreBonesData ULuaArrayHelper<FAvatarAnimalIgnoreBoneData>
local AAvatarAnimalCollisionTestActor = {}
