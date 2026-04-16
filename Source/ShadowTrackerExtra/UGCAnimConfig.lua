---@meta

---@class EAnimAssetConfigType
---@field EAACT_None number
---@field Character number
---@field Monster number
EAnimAssetConfigType = {}


---@class FUGC_AnimAssetConfig
---@field CharacterType EAnimAssetConfigType
---@field CharacterMovementAnimEditList ULuaArrayHelper<FCharacterMovementAnimData>
---@field CharacterFPPAnimEditList ULuaArrayHelper<FCharacterMovementAnimData>
---@field MosterAnimDatas ULuaArrayHelper<FMonsterAnimPhaseData>
FUGC_AnimAssetConfig = {}


---@class UUGCAnimConfig: UObject
---@field ACTableSoftPtr UDataTable
---@field Table_AnimConfigRow FUGC_ACConfigStruct
---@field CurrentCharacterType FUGC_ACCharacterEnum
---@field CurentAnimAssetConfig FUGC_AnimAssetConfig
local UUGCAnimConfig = {}

function UUGCAnimConfig:CallbackLoadTable() end
