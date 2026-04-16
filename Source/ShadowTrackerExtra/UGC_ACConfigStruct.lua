---@meta

---@class FUGC_ACCharacterEnum
---@field UGC_None number @请选择角色的动画类型
---@field UGC_HumanPlayer number @人类玩家
---@field UGC_HumanMonster number @人类怪物
FUGC_ACCharacterEnum = {}


---@class FUGC_ACConfigStruct
---@field ACCharacterType FUGC_ACCharacterEnum
---@field AnimInstance UAnimInstance
---@field CharacterAnimTypes ULuaArrayHelper<ECharacterAnimType>
---@field MonsterAnimTypes ULuaArrayHelper<EMonsterPoseType>
FUGC_ACConfigStruct = {}
