---@meta

---@class FUGCPlayerAvatarInfo
---@field UID number
---@field PlayerKey number
---@field PlayerName string
---@field Gender number
---@field RealGender number
---@field AvatarItemList ULuaArrayHelper<number>
FUGCPlayerAvatarInfo = {}


---@class FUGCTeamPlayerAvatarInfo
---@field PlayerAvatarList ULuaArrayHelper<FUGCPlayerAvatarInfo>
FUGCTeamPlayerAvatarInfo = {}


---@class AUGCTeamAssembleAvatarDisplay: AActor
---@field AvatarItemSubTypeFilter ULuaSetHelper<number>
---@field TeamPlayerAvatarInfos ULuaMapHelper<number, FUGCTeamPlayerAvatarInfo>
local AUGCTeamAssembleAvatarDisplay = {}

---@param PlayerController ASTExtraPlayerController
---@return FUGCPlayerAvatarInfo
function AUGCTeamAssembleAvatarDisplay:CollectPlayerAvatarInfo(PlayerController) end

---@param PlayerController APlayerController
function AUGCTeamAssembleAvatarDisplay:OnPlayerPostLogin(PlayerController) end

function AUGCTeamAssembleAvatarDisplay:UpdateTeamPlayerAvatarInfos() end
