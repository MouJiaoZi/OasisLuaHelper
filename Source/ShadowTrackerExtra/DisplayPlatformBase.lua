---@meta

---@class FDisplayPlatformPlayerInteractionInfo
---@field bIsEquipped boolean
---@field bWhetherHaveSixVehicle boolean
---@field VehicleAvatarID number
---@field VehicleSixAbilityID number
FDisplayPlatformPlayerInteractionInfo = {}


---@class FDisplayPlatformRepInfo
---@field PlayerName string
---@field PlayerGender number
---@field CharmValue number
---@field CharmLevel number
---@field VehicleAvatarAbilityID number
---@field bAlreadyCloseVehicleCapsuleCollision boolean
---@field TipID number
---@field VehicleName string
---@field PlayerUID string
---@field AvatarWearList ULuaArrayHelper<number>
---@field CharacterComponentGender number
---@field bIsCanDrive boolean
FDisplayPlatformRepInfo = {}


---@class ADisplayPlatformBase: AActor
---@field IgnoreEmoteIDs ULuaArrayHelper<number>
---@field DisplayPlatformPlayerInteractionInfoMap ULuaMapHelper<number, FDisplayPlatformPlayerInteractionInfo>
---@field TableName string
---@field ShowType number
local ADisplayPlatformBase = {}

---@param InPlayerController APlayerController
---@return FDisplayPlatformPlayerInteractionInfo
function ADisplayPlatformBase:GetPlayerInteractionParams(InPlayerController) end

---@param InPlayer APlayerController
function ADisplayPlatformBase:RegisterPlayerInfo(InPlayer) end

---@param InResearchAbilityList ULuaArrayHelper<FGameModePlayerItem>
---@return boolean
function ADisplayPlatformBase:CheckWhetherHaveSixVehicle(InResearchAbilityList) end

---@param InResearchAbilityList ULuaArrayHelper<FGameModePlayerItem>
---@param InBornlandShowCarID number
---@return number
function ADisplayPlatformBase:GetVehicleSixAbilityID(InResearchAbilityList, InBornlandShowCarID) end

---@param InPlayerController APlayerController
---@param TypeSpecificID number
function ADisplayPlatformBase:GetHandlesByTypeSpecificID(InPlayerController, TypeSpecificID) end

---@param InCharacterAvatarComponent UCharacterAvatarComponent
---@param IncludeHiddenAvatar boolean
function ADisplayPlatformBase:GetCurWearIDList(InCharacterAvatarComponent, IncludeHiddenAvatar) end

---@param InPlayerController ASTExtraPlayerController
function ADisplayPlatformBase:ModifyHasVehicleDazzlingAppearanceAbility(InPlayerController) end

---@return number
function ADisplayPlatformBase:GetWorldRealTimeSeconds() end

---@param EmoteID number
---@param IsCanCostSpecMotion boolean
function ADisplayPlatformBase:RecordFakeEmoteState(EmoteID, IsCanCostSpecMotion) end

function ADisplayPlatformBase:DelEmotePlayer() end
