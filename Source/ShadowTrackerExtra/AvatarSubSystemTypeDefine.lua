---@meta

---@class FCharacterOutlineAndColoringParamItem
---@field MatParamName string
---@field bIsFloatValue boolean
---@field TargetScalarMaterialValue number
---@field OriginalScalarMaterialValue number
---@field TargetVectorMaterialColor FLinearColor
---@field OriginalVectorMaterialColor FLinearColor
FCharacterOutlineAndColoringParamItem = {}


---@class FCharacterOutlineAndColoringParam
---@field OcclusionHighLightColor FLinearColor
---@field CharacterOutlineAndColoringParamItems ULuaArrayHelper<FCharacterOutlineAndColoringParamItem>
FCharacterOutlineAndColoringParam = {}


---@class FPistolCrystalParamItem
---@field ColorKeyID number
---@field AssetPath FSoftObjectPath
---@field ParticlePath FSoftObjectPath
---@field SocketName string
---@field ColorID number
FPistolCrystalParamItem = {}
