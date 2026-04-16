---@meta

---@class EBoneMirrorType
---@field EBoneMirrorType_GivenName number
---@field EBoneMirrorType_AutoLR number
---@field EBoneMirrorType_None number
EBoneMirrorType = {}


---@class FBoneMirrorMapData
---@field BonePairFirst string
---@field BonePairSecond string
FBoneMirrorMapData = {}


---@class FBoneMirrorConfig
---@field MirrorBoneSource string
---@field MirrorType EBoneMirrorType
---@field Depth number
---@field MirrorBoneTarget string
FBoneMirrorConfig = {}


---@class FBoneMirrorConfig_AutoLR
---@field MirrorBoneStart string
---@field Depth number
FBoneMirrorConfig_AutoLR = {}


---@class FBoneMirrorConfig_GivenName
---@field MirrorBoneSource string
---@field MirrorBoneTarget string
FBoneMirrorConfig_GivenName = {}


---@class FAnimNode_BoneMirror
---@field Source FPoseLink @The source pose
---@field AutoLRConfigs ULuaArrayHelper<FBoneMirrorConfig_AutoLR>
---@field GivenNameConfigs ULuaArrayHelper<FBoneMirrorConfig_GivenName>
---@field Configs ULuaArrayHelper<FBoneMirrorConfig>
---@field PreviewBoneMirrorMapData ULuaArrayHelper<FBoneMirrorMapData>
---@field bMirror boolean
---@field bResetChild boolean
FAnimNode_BoneMirror = {}
