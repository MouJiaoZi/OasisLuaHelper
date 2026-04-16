---@meta

---@class ACampActor_Captain: ACampActor
---@field AllCaptainLogout boolean
---@field KillMemLock boolean
---@field OtherCampCaptainLocList ULuaArrayHelper<FCampPlayerLoc>
---@field SameCampCaptainPlayerDataList ULuaArrayHelper<FCampCaptainData>
---@field SameCampCaptainIndexPCMap ULuaMapHelper<number, ASTExtraPlayerController>
---@field AllCampCaptainPlayerUIDList ULuaArrayHelper<string>
---@field SameCampCaptainPlayerKeySet ULuaSetHelper<number>
---@field OtherCampCaptainPCIndexList ULuaArrayHelper<FCampPCIndex>
---@field UpdateMinimapOtherCaptainNumPerFrame number
---@field UpdateCaptainBreathDelta number
---@field bIsExposeOtherCaptains boolean
---@field UpdateMinimapOtherCaptainIdx number
local ACampActor_Captain = {}

function ACampActor_Captain:KillAllSameCampMems() end

---@param PC ASTExtraPlayerController
function ACampActor_Captain:KillCampMem(PC) end

---@return boolean
function ACampActor_Captain:CheckSelfCaptainsAllDead() end

---@param PC ASTExtraPlayerController
function ACampActor_Captain:OnSameCampMemLanded(PC) end

---@param Character ASTExtraBaseCharacter
function ACampActor_Captain:OnSameCampMemDead(Character) end

function ACampActor_Captain:OnRep_OtherCampCaptainLocList() end

function ACampActor_Captain:OnRep_ExposeOtherCaptains() end

function ACampActor_Captain:OnRep_SameCampCaptainPlayerDataList() end

function ACampActor_Captain:OnRep_AllCampCaptainPlayerUIDList() end

---@param PlayerKey number
---@return number
function ACampActor_Captain:GetRevivalTimesWithPlayerKey(PlayerKey) end

---@param needExpose boolean
function ACampActor_Captain:ExposeOtherCapatains(needExpose) end

---@param CampId number
---@param KilledPlayerKey number
function ACampActor_Captain:OnPostUpdatePlayerDeadInfo(CampId, KilledPlayerKey) end

function ACampActor_Captain:OnRep_CampActorInfo() end

---@param PC ASTExtraPlayerController
function ACampActor_Captain:LuaCaptainLogin(PC) end

---@param PC ASTExtraPlayerController
---@return boolean
function ACampActor_Captain:OnCaptainModeLogin(PC) end

---@param PC ASTExtraPlayerController
function ACampActor_Captain:OnCaptainModeLogout(PC) end

---@param DeltaTime number
function ACampActor_Captain:TickCampCaptainData(DeltaTime) end

---@param Index number
---@return boolean
function ACampActor_Captain:IndexValid(Index) end
