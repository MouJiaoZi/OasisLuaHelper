---@meta

---@class FAudioConfigRow
---@field SoundID number
---@field EventID number
---@field HeroID number
---@field SoundResource UAkAudioEvent
---@field DelayTime number
---@field bIs3D number
---@field bOwner number
---@field bTeam number
---@field bEnemy number
FAudioConfigRow = {}


---@class FAudioEventParams
---@field EventID number
---@field OwnerUID number
FAudioEventParams = {}


---@class FBakedAudioConfig
---@field AudioEvents ULuaArrayHelper<FAudioConfigRow>
FBakedAudioConfig = {}


---@class FAudioEvent
FAudioEvent = {}


---@class FAudioConfigs
---@field Configs ULuaArrayHelper<FAudioConfigRow>
FAudioConfigs = {}


---@class UAudioManager: UActorComponent
---@field BakedAudios ULuaMapHelper<number, FAudioConfigs>
---@field BakedSounds ULuaMapHelper<number, FAudioConfigRow>
---@field TeammateAudioManagers ULuaArrayHelper<UAudioManager>
local UAudioManager = {}

---@param PlayerContext UObject
---@param Params FAudioEventParams
function UAudioManager:NotifyAudioEvent(PlayerContext, Params) end

---@return number
function UAudioManager:GetHeroID() end

---@param InHeroID number
function UAudioManager:SetHeroID(InHeroID) end

---@return number
function UAudioManager:GetPlayerUID() end

---@return number
function UAudioManager:GetTeamID() end

function UAudioManager:StopAll() end

---@param NewEvent FAudioEvent
function UAudioManager:ClientPlayAudioEvent(NewEvent) end

---@param NewEvent FAudioEvent
function UAudioManager:ClientPlayAudioEventUnreliable(NewEvent) end
