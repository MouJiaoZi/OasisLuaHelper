---@meta

---@class EAvatarDisplayAnimType
---@field None number
---@field Base number
---@field Add number
---@field Add_Adapt number
---@field Max number
EAvatarDisplayAnimType = {}


---@class FAvatarDisplayPoseData
---@field DisplayAnimType EAvatarDisplayAnimType
---@field DisplayAnim UAnimationAsset
FAvatarDisplayPoseData = {}


---@class FAvatarDisplayAnimData
---@field WeaponID number
---@field WeaponAnimBP UAnimInstance
---@field DisplayAnimList ULuaArrayHelper<FAvatarDisplayPoseData>
FAvatarDisplayAnimData = {}


---@class FWeaponAnimAsset
---@field WeaponName string
---@field AnimPose UAnimSequenceBase
---@field AnimAdd UAnimSequenceBase
---@field WeaponAnimBP UAnimSequenceBase
FWeaponAnimAsset = {}


---@class FSocketMesh
---@field SocketName string
FSocketMesh = {}
