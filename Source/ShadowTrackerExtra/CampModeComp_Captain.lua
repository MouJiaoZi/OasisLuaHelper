---@meta

---@class UCampModeComp_Captain: UCampModeComp
---@field CampCaptainType number
---@field CampCaptainNumInEditor number
---@field CampShowCaptain number
---@field CampCaptainRevivalTimes number
---@field ProphaseValidRevivalRange number
---@field ProphaseRevivalDelayTime number
local UCampModeComp_Captain = {}

function UCampModeComp_Captain:Init() end

function UCampModeComp_Captain:UnInit() end

function UCampModeComp_Captain:OnCampCaptainModeInit() end

function UCampModeComp_Captain:OnCampCaptainModeUnInit() end

---@param CampID number
function UCampModeComp_Captain:UpdateCampDead(CampID) end

---@param CampID number
function UCampModeComp_Captain:OnCampCaptainModeCampDead(CampID) end

function UCampModeComp_Captain:CreateCampActor() end

---@param PC ASTExtraPlayerController
function UCampModeComp_Captain:SetPCInfoOnLogin(PC) end

---@return boolean
function UCampModeComp_Captain:IsSingleCaptainType() end

---@return number
function UCampModeComp_Captain:GetConfigCaptainRevivalTimes() end

---@return number
function UCampModeComp_Captain:GetProphaseValidRevivalRange() end

---@return number
function UCampModeComp_Captain:GetProphaseRevivalDelayTime() end

---@param CampID number
---@param needExpose boolean
function UCampModeComp_Captain:GMExposeOtherCapatains(CampID, needExpose) end

---@param needExpose boolean
function UCampModeComp_Captain:ExposeOtherCapatains(needExpose) end

---@param Params FGameModeStateChangedParams
function UCampModeComp_Captain:OnHandleGameModeStateChanged(Params) end

---@param StateName string
function UCampModeComp_Captain:OnCampCaptainModeStateChanged(StateName) end
