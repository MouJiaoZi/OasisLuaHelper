---@meta

---@class EEscapeType
---@field EET_None number
---@field EET_Helicopter number
---@field EET_Bunker number
---@field EET_Taxi number
EEscapeType = {}


---@class EGunMasterEventID
---@field EGME_None number
---@field EGME_OpenBunker number
---@field EGME_PayTaxi number
---@field EGME_HeliComing number
---@field EGME_StartKarakinMiner number
---@field EGME_StartTramcar number
---@field EGME_BreakDestructibleWall number
---@field EGME_Purchase number
---@field EGME_GainBounty number
EGunMasterEventID = {}


---@class UGunMasterComponent: UGameModeBaseComponent
---@field EscapeCircleIndex number
---@field EscapeRangeRadius number
---@field MaxEscapePointNum number
---@field TestHelicopterBox FVector
---@field GunMaterialIDs ULuaArrayHelper<FItemDefineID>
---@field FlyHeight number
---@field HoverHeight number
---@field ValidLocationActorTag string
---@field MaxTryNum number
---@field HelicopterEnterNotifyDelay number
---@field HelicopterEnterNotifyDelayTimerHandle FTimerHandle
local UGunMasterComponent = {}

---@param InItemID number
---@return boolean
function UGunMasterComponent:IsItemTriggerRecordEvent(InItemID) end

---@param InBoardingChar ASTExtraBaseCharacter
---@param InTargetHelicopter AActor
function UGunMasterComponent:BoardingGunMasterHelicopter(InBoardingChar, InTargetHelicopter) end

function UGunMasterComponent:EvacuateGunMasterHelicopters() end

---@param CircleIndex number
---@param MaxCircleIndex number
---@param CircleStatus number
function UGunMasterComponent:OnCircleStateChanged(CircleIndex, MaxCircleIndex, CircleStatus) end

---@param PlayerKey number
---@param KillerKey number
---@param bIsAI boolean
function UGunMasterComponent:OnPlayerKilled(PlayerKey, KillerKey, bIsAI) end

---@param InEvacuationPointList ULuaArrayHelper<FVector>
function UGunMasterComponent:CallGunMasterHelicopters(InEvacuationPointList) end

---@return boolean
function UGunMasterComponent:IsInEscapeCircle() end

---@param PlayerKey number
function UGunMasterComponent:HandlePlayerEnterHelicopter(PlayerKey) end

---@param PlayerKey number
function UGunMasterComponent:HandlePlayerEnterBunker(PlayerKey) end

---@param PlayerKey number
function UGunMasterComponent:HandlePlayerEnterTaxi(PlayerKey) end

---@param PlayerKey number
---@param EscapeType EEscapeType
function UGunMasterComponent:HandlePlayerEscape(PlayerKey, EscapeType) end

---@param EscapePlayerController ASTExtraPlayerController
function UGunMasterComponent:NotifyClientsShowPlayerEscape(EscapePlayerController) end

---@param TeamId number
---@return boolean
function UGunMasterComponent:HasTeamEscaped(TeamId) end

---@param PlayerKey number
---@return boolean
function UGunMasterComponent:HasPlayerEscaped(PlayerKey) end

function UGunMasterComponent:StartEscapeCircle() end

function UGunMasterComponent:FinishEscapeCircle() end

function UGunMasterComponent:ChangeEscapeCircleImmediately() end

---@param PlayerKey number
---@return number
function UGunMasterComponent:GetPlayerEscapeType(PlayerKey) end

---@param InTargetController ASTExtraPlayerController
---@param InItemID number
---@param ItemCount number
function UGunMasterComponent:TriggerPlayerPickUpItem(InTargetController, InItemID, ItemCount) end

function UGunMasterComponent:NotifyHelicopterEnter() end

---@param PlayerKey number
---@param EventID EGunMasterEventID
---@param Num number
---@param AdditionalInfo string
function UGunMasterComponent:ReportGunMasterFlow(PlayerKey, EventID, Num, AdditionalInfo) end
