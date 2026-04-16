---@meta

---@class ECharacterShovelAnimType
---@field ECharacterShovelAnimType_BS_Shovel number
---@field ECharacterShovelAnimType_BS_Shovel_Floor number
---@field ECharacterShovelAnimType_BS_Shovel_Pitch number
---@field ECharacterShovelAnimType_BS_Shovel_Unarm number
---@field ECharacterShovelAnimType_BS_Shovel_Unarm_Floor number
---@field ECharacterShovelAnimType_Shovel_Enter number
---@field ECharacterShovelAnimType_Shovel_Enter_FPP number
---@field ECharacterShovelAnimType_Shovel_Enter_Grenade number
---@field ECharacterShovelAnimType_Shovel_Enter_Melee number
---@field ECharacterShovelAnimType_Shovel_Enter_old number
---@field ECharacterShovelAnimType_Shovel_Enter_Unarm number
---@field ECharacterShovelAnimType_Shovel_F number
---@field ECharacterShovelAnimType_Shovel_F_old number
---@field ECharacterShovelAnimType_Shovel_F_FloorDown number
---@field ECharacterShovelAnimType_Shovel_F_FloorUp number
---@field ECharacterShovelAnimType_Shovel_F_FPP number
---@field ECharacterShovelAnimType_Shovel_F_Grenade number
---@field ECharacterShovelAnimType_Shovel_F_Grenade_FPP number
---@field ECharacterShovelAnimType_Shovel_F_Melee number
---@field ECharacterShovelAnimType_Shovel_F_Melee_FPP number
---@field ECharacterShovelAnimType_Shovel_F_rotator number
---@field ECharacterShovelAnimType_Shovel_F_Unarm number
---@field ECharacterShovelAnimType_Shovel_F_Unarm_Down number
---@field ECharacterShovelAnimType_Shovel_F_Unarm_FloorDown number
---@field ECharacterShovelAnimType_Shovel_F_Unarm_FloorUP number
---@field ECharacterShovelAnimType_Shovel_F_Unarm_rotator number
---@field ECharacterShovelAnimType_Shovel_F_Unarm_Up number
---@field ECharacterShovelAnimType_Shovel_Leave number
---@field ECharacterShovelAnimType_Shovel_Leave_Crouch number
---@field ECharacterShovelAnimType_Shovel_Leave_Crouch_FPP number
---@field ECharacterShovelAnimType_Shovel_Leave_Crouch_Melee number
---@field ECharacterShovelAnimType_Shovel_Leave_Crouch_old number
---@field ECharacterShovelAnimType_Shovel_Leave_Crouch_Sprint number
---@field ECharacterShovelAnimType_Shovel_Leave_Crouch_Sprint_old number
---@field ECharacterShovelAnimType_Shovel_Leave_Crouch_Unarm number
---@field ECharacterShovelAnimType_Shovel_Leave_FPP number
---@field ECharacterShovelAnimType_Shovel_Leave_Melee number
---@field ECharacterShovelAnimType_Shovel_Leave_old number
---@field ECharacterShovelAnimType_Shovel_Leave_Unarm number
---@field ECharacterShovelAnimType_Max number
ECharacterShovelAnimType = {}


---@class EAnimLayerType
---@field EAnimLayer_Char number
---@field EAnimLayer_Avatar number
---@field EAnimLayer_Weapon number
---@field EAnimLayer_WeaponAdditive number
---@field EAnimLayer_WeaponAdditive2 number
---@field EAnimLayer_WeaponFunc number
---@field EAnimLayer_BeCarried number
---@field EAnimLayer_Buff number
---@field EAnimLayer_Skill number
---@field EAnimLayer_Zombie number
---@field EAnimLayer_AvatarAbility number
---@field EAnimLayer_Version_Item number
---@field EAnimLayer_Max number
EAnimLayerType = {}


---@class FPlayerShovelAnimData
---@field shoveAnimType ECharacterShovelAnimType
---@field ShovelAnimSoftPtr UAnimationAsset
FPlayerShovelAnimData = {}


---@class FAnimListData
---@field LayerID number
FAnimListData = {}


---@class FAnimListMapValueData
---@field AnimListMapValue ULuaArrayHelper<FAnimListData>
FAnimListMapValueData = {}


---@class FAnimChildComponentData
FAnimChildComponentData = {}


---@class UUAEAnimListComponentBase: UActorComponent, IObjectPoolInterface
---@field ShovelAnimDataList ULuaArrayHelper<FPlayerShovelAnimData>
---@field ChildComps ULuaArrayHelper<FAnimChildComponentData>
---@field AnimListMap ULuaMapHelper<number, FAnimListMapValueData>
---@field AnimationCatcheList ULuaArrayHelper<UAnimationAsset>
---@field DynAddedAnimsForGC ULuaMapHelper<UAnimationAsset, number>
---@field bEnableGCOpt boolean
local UUAEAnimListComponentBase = {}

---@return number
function UUAEAnimListComponentBase:GetLastAssetUpdateTime() end

function UUAEAnimListComponentBase:MarkAssetUpdateTime() end

---@param ChildComp UUAEAnimListComponentBase
---@param AnimLayer EAnimLayerType
function UUAEAnimListComponentBase:RequestAddChildComponent(ChildComp, AnimLayer) end
