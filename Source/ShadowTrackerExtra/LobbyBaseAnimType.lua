---@meta

---@class EAvatarStyle
---@field EAvatarStyle_Default number @默认姿势
---@field EAvatarStyle_Cool number @酷帅系
---@field EAvatarStyle_Cute number @萌系
---@field EAvatarStyle_Fairy number @仙女系
---@field EAvatarStyle_Hot number @性感系
---@field EAvatarStyle_Man number @霸气系
---@field EAvatarStyle_Relax number @休闲系
---@field EAvatarStyle_MAX number
EAvatarStyle = {}


---@class FLobbyAvatarAnim
---@field Style EAvatarStyle
---@field AnimAsset UAnimationAsset
FLobbyAvatarAnim = {}


---@class FLobbyGenderAvatarAnim
---@field GenderType ELobbyCharacterAnimType
---@field PoseAnimAsset ULuaArrayHelper<FLobbyAvatarAnim>
FLobbyGenderAvatarAnim = {}


---@class FLobbyPoseAnim
---@field Pose string
---@field AnimAsset UAnimationAsset
FLobbyPoseAnim = {}


---@class FLobbyGenderAnim
---@field GenderType ELobbyCharacterAnimType
---@field PoseAnimAsset ULuaArrayHelper<FLobbyPoseAnim>
---@field bSpecialAnim boolean
FLobbyGenderAnim = {}


---@class FLobbyPosGenderAnim
---@field PoseIndexType ELobbyCharacterPosIndex
---@field GenderPoseAnimAsset ULuaArrayHelper<FLobbyGenderAnim>
FLobbyPosGenderAnim = {}


---@class FLobbyAnimConfigData
---@field SceneType ECharacterShowSceneType
---@field LobbyAnimData ULuaArrayHelper<FLobbyPosGenderAnim>
FLobbyAnimConfigData = {}


---@class FLobbyAnimConfigDataList
---@field LobbyAnimConfigArray ULuaArrayHelper<FLobbyAnimConfigData>
FLobbyAnimConfigDataList = {}


---@class FLobbyAnimPoseTagSwitcher
---@field TagName string
---@field IsOpen boolean
FLobbyAnimPoseTagSwitcher = {}
