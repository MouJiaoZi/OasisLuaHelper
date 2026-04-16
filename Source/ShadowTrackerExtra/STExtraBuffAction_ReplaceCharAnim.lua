---@meta

---@class FBuffReplaceCharAnimData
---@field CharacterAnimType ECharacterAnimType
---@field PoseAnimList ULuaArrayHelper<UAnimationAsset>
---@field FPPPoseAnimList ULuaArrayHelper<UAnimationAsset>
FBuffReplaceCharAnimData = {}


---@class FReplaceCharAnimStruct
FReplaceCharAnimStruct = {}


---@class FBuffReplaceCharAnimByCurrentWeaponData
---@field WeaponIDs ULuaArrayHelper<FItemDefineID>
---@field AnimDataList ULuaArrayHelper<FBuffReplaceCharAnimData>
FBuffReplaceCharAnimByCurrentWeaponData = {}


---@class FSTExtraBuffAction_ReplaceCharAnimByCurrentWeaponData
FSTExtraBuffAction_ReplaceCharAnimByCurrentWeaponData = {}


---@class USTExtraBuffAction_ReplaceCharAnim: USTExtraBuffAction
---@field AnimDataList ULuaArrayHelper<FBuffReplaceCharAnimData>
---@field AnimLayer EAnimLayerType
---@field AnimListCompTag string
---@field bReplaceOrRestore boolean
---@field bRestoreOnReset boolean
---@field bRestoreOnUndo boolean
local USTExtraBuffAction_ReplaceCharAnim = {}


---@class USTExtraBuffAction_ReplaceCharAnimByCurrentWeapon: USTExtraBuffAction_ReplaceCharAnim
---@field ReplaceCharAnimByCurrentWeaponDatas ULuaArrayHelper<FBuffReplaceCharAnimByCurrentWeaponData>
local USTExtraBuffAction_ReplaceCharAnimByCurrentWeapon = {}
