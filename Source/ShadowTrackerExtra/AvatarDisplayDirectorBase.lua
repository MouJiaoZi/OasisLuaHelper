---@meta

---@class EAddiontionDisplayDataType
---@field WeaponData number
EAddiontionDisplayDataType = {}


---@class UAdditionDisplayDataBase: UObject
local UAdditionDisplayDataBase = {}


---@class UAvatarDisplayDataBase: UObject
---@field PostIndex number
---@field Gender number
---@field PlayerName string
---@field WearItem ULuaArrayHelper<number>
---@field AdditionData ULuaMapHelper<EAddiontionDisplayDataType, UAdditionDisplayDataBase>
local UAvatarDisplayDataBase = {}


---@class AAvatarDisplayDirectorBase: AActor
---@field DisplayDataCache ULuaMapHelper<string, UAvatarDisplayDataBase>
---@field AvatarDisplayPoseList ULuaArrayHelper<UAvatarDisplayPoseComponent>
---@field IsUseLodControl boolean
---@field DirectorTag string
local AAvatarDisplayDirectorBase = {}


---@class UAdditionWeaponDisplayData: UAdditionDisplayDataBase
---@field WeaponItem ULuaArrayHelper<number>
---@field WeaponAttachmentSkin ULuaArrayHelper<number>
local UAdditionWeaponDisplayData = {}


---@class UWeaponDisplayDirectorComponent: UActorComponent
local UWeaponDisplayDirectorComponent = {}

---@param AvatarDisplayPose UAvatarDisplayPoseComponent
---@param AdditionWeaponDisplayData UAdditionWeaponDisplayData
---@param IsSelf boolean
---@param IsTeammate boolean
function UWeaponDisplayDirectorComponent:RefreshWeaponInfo(AvatarDisplayPose, AdditionWeaponDisplayData, IsSelf, IsTeammate) end
