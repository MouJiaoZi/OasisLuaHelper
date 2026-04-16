---@meta

---@class FCombineModelTranslucentDetailConfig
---@field bEnableTranslucentDepthWrite boolean
FCombineModelTranslucentDetailConfig = {}


---@class FLOD00Config
---@field bEnableLOD00 boolean
---@field MinLOD00DeviceLevel number
FLOD00Config = {}


---@class FCombineModelAnimConfig
---@field AvatarHandlePathStr string
---@field AnimAsset UAnimSequence
---@field LOD00Config FLOD00Config
FCombineModelAnimConfig = {}


---@class FCombineModelPosAvatarConfig
---@field bAsyncLoad boolean
---@field bIsMale boolean
---@field OffsetTransform FTransform
---@field AvatarHandleAnimConfigList ULuaArrayHelper<FCombineModelAnimConfig>
---@field AvatarSkeletalMesh USkeletalMesh
---@field SkeletalMeshTranslucentMap ULuaMapHelper<USkeletalMesh, FCombineModelTranslucentDetailConfig>
FCombineModelPosAvatarConfig = {}


---@class UBackpackCombineModelHandle: UBattleItemHandleBase
---@field bUseOldCombineConfigMode boolean
---@field maleSkMesh USkeletalMesh
---@field AnimBPClass UAnimInstance
---@field SkeletalMeshTranslucentMap ULuaMapHelper<USkeletalMesh, FCombineModelTranslucentDetailConfig>
---@field PosAvatarConfigs ULuaArrayHelper<FCombineModelPosAvatarConfig>
---@field AvatarCompBluePrintPathStr string
---@field AvatarHandleStrLOD00Map ULuaMapHelper<string, FLOD00Config>
local UBackpackCombineModelHandle = {}
