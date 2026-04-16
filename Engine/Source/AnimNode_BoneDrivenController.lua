---@meta

---@class EComponentType
---@field None number
---@field TranslationX number
---@field TranslationY number
---@field TranslationZ number
---@field RotationX number
---@field RotationY number
---@field RotationZ number
---@field Scale number @Scale (largest component)
---@field ScaleX number
---@field ScaleY number
---@field ScaleZ number
EComponentType = {}


---@class EDrivenBoneModificationMode
---@field AddToInput number
---@field ReplaceComponent number
---@field AddToRefPose number
EDrivenBoneModificationMode = {}


---@class EDrivenDestinationMode
---@field Bone number
---@field MorphTarget number
---@field MaterialParameter number
EDrivenDestinationMode = {}


---This is the runtime version of a bone driven controller, which maps part of the state from one bone to another (e.g., 2 * source.x -> target.z)
---@class FAnimNode_BoneDrivenController
---@field SourceBone FBoneReference
---@field SourceComponent EComponentType
---@field Multiplier number
---@field bUseRange boolean
---@field RangeMin number
---@field RangeMax number
---@field RemappedMin number
---@field RemappedMax number
---@field DestinationMode EDrivenDestinationMode
---@field ParameterName string @Name of Morph Target to drive using the source attribute
---@field TargetBone FBoneReference
---@field TargetComponent_DEPRECATED EComponentType
---@field bAffectTargetTranslationX number
---@field bAffectTargetTranslationY number
---@field bAffectTargetTranslationZ number
---@field bAffectTargetRotationX number
---@field bAffectTargetRotationY number
---@field bAffectTargetRotationZ number
---@field bAffectTargetScaleX number
---@field bAffectTargetScaleY number
---@field bAffectTargetScaleZ number
---@field ModificationMode EDrivenBoneModificationMode
FAnimNode_BoneDrivenController = {}
