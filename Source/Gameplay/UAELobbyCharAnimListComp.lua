---@meta

---@class ELobbyCharacterAnimType
---@field ELobbyCharAnim_Boy number @男
---@field ELobbyCharAnim_Girl number @女
---@field ELobbyCharAnim_Max number
ELobbyCharacterAnimType = {}


---@class ELobbyCharacterPosIndex
---@field Self number
---@field Second number
---@field Third number
---@field Fourth number
---@field ELobbyCharacterPosIndex_Max number
ELobbyCharacterPosIndex = {}


---@class ECharacterShowSceneType
---@field ECharacterShowSceneType_Lobby number @大厅空手
---@field ECharacterShowSceneType_GameEndAvatarScene number @结算
---@field ECharacterShowSceneType_LobbyWithCar number @大厅载具
---@field ECharacterShowSceneType_LobbySystem number @大厅系统模块
---@field ECharacterShowSceneType_LobbyDefaultPose number @大厅默认姿势
---@field ECharacterShowSceneType_LobbyPeakPose number @大厅巅峰赛姿势
---@field ECharacterShowSceneType_RoleAndRank number @大厅排行榜及个人信息姿势
---@field ECharacterShowSceneType_EliteRoom number @精英作战室
---@field ECharacterShowSceneType_LostTombRoleSelection number @盗墓角色选择
---@field ECharacterShowSceneType_LostTombDepot number @盗墓仓库姿势
---@field ECharacterShowSceneType_LostTombSkillEdit number @盗墓技能编辑
---@field ECharacterShowSceneType_Backup1 number @备用1
---@field ECharacterShowSceneType_Backup2 number @备用2
---@field ECharacterShowSceneType_Max number
ECharacterShowSceneType = {}


---@class FLobbyCharacterGenderWeaponAnimData
---@field GenderType ELobbyCharacterAnimType
---@field GenderTypeName string
---@field WeaponAnimSoftPtr UAnimationAsset
---@field WeaponAddAnimSoftPtr UAnimationAsset
---@field WeaponAddAnimSoftPtr_Adapt UAnimationAsset
FLobbyCharacterGenderWeaponAnimData = {}


---@class FLobbyCharacterWeaponAnimData
---@field PosIndex ELobbyCharacterPosIndex
---@field CharPosName string
---@field GenderWeaponAnimList ULuaArrayHelper<FLobbyCharacterGenderWeaponAnimData>
FLobbyCharacterWeaponAnimData = {}


---@class FLobbyAsyncLoadCharAnimParams
FLobbyAsyncLoadCharAnimParams = {}


---@class UAELobbyCharAnimListComp: UUAECharAnimListCompBase
---@field CharacterWeaponAnimEditList ULuaArrayHelper<FLobbyCharacterWeaponAnimData>
---@field AvatarSceneCharacterWeaponAnimEditList ULuaArrayHelper<FLobbyCharacterWeaponAnimData>
---@field LobbyWithCarCharacterWeaponAnimEditList ULuaArrayHelper<FLobbyCharacterWeaponAnimData>
---@field LobbySystemCharacterWeaponAnimEditList ULuaArrayHelper<FLobbyCharacterWeaponAnimData>
---@field bEnableWeaponAnimSync boolean
local UAELobbyCharAnimListComp = {}

---@param animEditList ULuaArrayHelper<FLobbyCharacterWeaponAnimData>
---@param PendingList ULuaArrayHelper<FSoftObjectPath>
function UAELobbyCharAnimListComp:InitPendingList(animEditList, PendingList) end

---@param LoadingParam FLobbyAsyncLoadCharAnimParams
function UAELobbyCharAnimListComp:OnAsyncLoadingFinished(LoadingParam) end

---@param animList ULuaArrayHelper<FLobbyCharacterWeaponAnimData>
---@param sceneType ECharacterShowSceneType
function UAELobbyCharAnimListComp:BuildAnimMap(animList, sceneType) end
