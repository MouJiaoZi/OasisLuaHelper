---@meta

---@class FModeAvatarFeatureItem
---@field FeatureType EModeAvatarFeatureType
---@field FeatureClass UModeAvatarFeature
FModeAvatarFeatureItem = {}


---@class UModeAvatarFeatureComponent: UGameModeBaseComponent
---@field ModeAvatarFeatureMap ULuaMapHelper<number, FModeAvatarFeatureItem>
local UModeAvatarFeatureComponent = {}

function UModeAvatarFeatureComponent:OnGameEnterFight() end

function UModeAvatarFeatureComponent:OnGameEnterFinish() end

---@param InTargetController ASTExtraPlayerController
---@param InFeatureNetMetaData FModeAvatarFeatureNetMetaData
function UModeAvatarFeatureComponent:TryActivateFeature_AuthorityType(InTargetController, InFeatureNetMetaData) end

---@param InTargetController ASTExtraPlayerController
---@param InFeatureNetMetaData FModeAvatarFeatureNetMetaData
function UModeAvatarFeatureComponent:TryRevertFeature_AuthorityType(InTargetController, InFeatureNetMetaData) end

---@param InTaragetCAC UCharacterAvatarComponent
---@param InTargetAvatarHandle UBackpackAvatarHandle
---@return boolean
function UModeAvatarFeatureComponent:TryActivateFeature_AutonomousType(InTaragetCAC, InTargetAvatarHandle) end

---@param InTaragetCAC UCharacterAvatarComponent
---@param InTargetAvatarHandle UBackpackAvatarHandle
---@return boolean
function UModeAvatarFeatureComponent:TryRevertFeature_AutonomousType(InTaragetCAC, InTargetAvatarHandle) end

---@param InTaragetCAC UCharacterAvatarComponent
---@param InTargetAvatarHandle UBackpackAvatarHandle
---@return boolean
function UModeAvatarFeatureComponent:TryActivateFeature(InTaragetCAC, InTargetAvatarHandle) end

---@param InTaragetCAC UCharacterAvatarComponent
---@param InTargetAvatarHandle UBackpackAvatarHandle
---@return boolean
function UModeAvatarFeatureComponent:TryRevertFeature(InTaragetCAC, InTargetAvatarHandle) end
