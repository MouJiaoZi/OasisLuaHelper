---@meta

---@class EUTGiftType
---@field Type_Flower number @花
---@field Type_Lamb number @孔明灯
---@field Type_LoveFruit number @爱情果
---@field Type_BestWish number @祈愿
---@field Type_BestWishSingle number @单人祈愿
---@field Type_FromBP number @蓝图类型
---@field Type_Max number @非法类型
EUTGiftType = {}


---@class FGiftFanPickerData
---@field Radius number @Radius *
---@field HightDiff number @高度差 *
---@field Angle number @Angle : (0 - 180) *
---@field IsShowDebugFan boolean
---@field bEnableTrace boolean
---@field LowerTraceRatio number
---@field SweepSingleSize number
---@field MinAcceptRadius number
---@field NeedReceiverFaceGiver boolean
FGiftFanPickerData = {}


---@class FGiftTypeData
---@field GiftType EUTGiftType
---@field GiftSubType number
FGiftTypeData = {}


---@class FGiftTypeDataConfig
---@field IconTexture FSoftObjectPath
---@field SkillSoftClass_Giver AUTSkill
---@field SkillSoftClass_Receiver AUTSkill
FGiftTypeDataConfig = {}


---@class UGiftSetupDataExtended: UPrimaryDataAsset
local UGiftSetupDataExtended = {}


---@class USTCharacterGiftGiverComp: UActorComponent, IObjectPoolInterface
---@field WanderingRadius number
---@field ReturnToCheckConditionCDTimeSetting number
---@field FanDataOrigin FGiftFanPickerData
---@field FanData FGiftFanPickerData
---@field GiftType EUTGiftType
---@field RescueingStatusStartTimeSeconds number
---@field PawnOwner ASTExtraBaseCharacter
local USTCharacterGiftGiverComp = {}

---@param _TempPawn APawn
function USTCharacterGiftGiverComp:InitializeOwner(_TempPawn) end

---@param bFromPersistentPool boolean
function USTCharacterGiftGiverComp:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function USTCharacterGiftGiverComp:OnRecycled(bToPersistentPool) end

---@param pickedTargets ULuaArrayHelper<ASTExtraBaseCharacter>
---@return boolean
function USTCharacterGiftGiverComp:PickTargetsAsReceiver(pickedTargets) end

function USTCharacterGiftGiverComp:GivingFinished() end

function USTCharacterGiftGiverComp:ReceiverAccept() end

---@return boolean
function USTCharacterGiftGiverComp:IsGiftCanGiveStatus() end

---@return boolean
function USTCharacterGiftGiverComp:IsGiftGivingStatus() end

---@return number
function USTCharacterGiftGiverComp:GetGivingStatusDuration() end

---@param Owner APawn
---@param CurrentGiftType FGiftTypeData
---@param PrevType FGiftTypeData
function USTCharacterGiftGiverComp:OnSetMyGiftGiverCandidate(Owner, CurrentGiftType, PrevType) end

---@return number
function USTCharacterGiftGiverComp:GetGiftSubType() end

---@param DeltaTime number
function USTCharacterGiftGiverComp:TickGiveComp(DeltaTime) end

function USTCharacterGiftGiverComp:InGivingState_ActOnUnsatisfied() end

---@param DeltaTime number
function USTCharacterGiftGiverComp:InGivingState_ActOnSatisfied(DeltaTime) end

---@return boolean
function USTCharacterGiftGiverComp:InGivingState_IsConditionSatisfied() end

function USTCharacterGiftGiverComp:WaitingForAcceptState_ActOnUnsatisfied() end

---@param DeltaTime number
function USTCharacterGiftGiverComp:WaitingFroAcceptState_ActOnSatisfied(DeltaTime) end

---@return boolean
function USTCharacterGiftGiverComp:WaitingConfirmState_IsConditionSatisfied() end

---@return boolean
function USTCharacterGiftGiverComp:ReceiverConfirmReceiving() end

---@param val number
function USTCharacterGiftGiverComp:SetGiftGivingDuration(val) end

function USTCharacterGiftGiverComp:CanGiveStateInterrupted() end

function USTCharacterGiftGiverComp:GivingStateInterrupted() end

function USTCharacterGiftGiverComp:MyReceiverReceivingStateInterrupted() end
