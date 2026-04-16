---@meta

---@class EAnim3DTransformType
---@field EAnim3DTransformType_Absolute number @//*UGC* Anim3DTransformType_Absolute
---@field EAnim3DTransformType_Delta number @//*UGC* Anim3DTransformType_Delta
EAnim3DTransformType = {}


---@class EAnim3DTransformSource
---@field EAnim3DTransformSource_Animation number @//*UGC* Anim3DTransformSource_Animation
---@field EAnim3DTransformSource_Manual number @//*UGC* Anim3DTransformSource_Manual
EAnim3DTransformSource = {}


---@class EAnim3DTransformWarpingTargetType
---@field EAnim3DTransformWarpingTargetType_SelectTarget number @Anim3DTransformWarpingTargetType_SelectTarget
---@field EAnim3DTransformWarpingTargetType_SelectTransform number @Anim3DTransformWarpingTargetType_SelectTransform
---@field EAnim3DTransformWarpingTargetType_Custom number @Anim3DTransformWarpingTargetType_Custom
EAnim3DTransformWarpingTargetType = {}


---@class FAnim3DTransformWarpingTargetConfig
---@field StartTime number
---@field EndTime number
---@field TargetType EAnim3DTransformWarpingTargetType
---@field TargetOffset FVector @以目标点为原点以当前角色位置为前方向的坐标系下的偏移
---@field TransformGetter FTransformGetter
---@field MaxTranslation FVector
---@field MaxRotationAngle number
FAnim3DTransformWarpingTargetConfig = {}


---A 3D Attach section
---@class UMovieSceneAnim3DTransformSection: UMovieScene3DTransformSection
---@field TransformSource EAnim3DTransformSource
---@field TransformType EAnim3DTransformType
---@field EnableSlide boolean
---@field KeepFloor boolean
---@field TranslationScale FVector
---@field WarpingTargetConfigs ULuaArrayHelper<FAnim3DTransformWarpingTargetConfig>
---@field MaxWarpingDistance number
---@field MaxWarpingAngles number
---@field InvComponentTransform FTransform
local UMovieSceneAnim3DTransformSection = {}
