---@meta

---@class ENewbieGuideType
---@field Op number
---@field Rule number
ENewbieGuideType = {}


---@class ENewbieGuidePlayerCategory
---@field Low number
---@field Middle number
---@field High number
ENewbieGuidePlayerCategory = {}


---@class ENewbieGuideUIType
---@field Custom number @默认
---@field PopUp number @拍脸图
ENewbieGuideUIType = {}


---@class FZombieModeGuideInfo
---@field isLanded boolean
---@field isMonsterWarning boolean
---@field isBossComing boolean
---@field isFortressCloseWarning boolean
---@field isFortressOpenWarning boolean
FZombieModeGuideInfo = {}


---@class FLoadGuideUIFinishRet
FLoadGuideUIFinishRet = {}


---@class FPCNewbieGuideUIInfo
---@field PCWidgetClassPath string
---@field PCMountName string
---@field PCMountOuterName string
---@field bPCisMountUIDynamic boolean
---@field PCLayoutData FAnchorData
---@field bPCAutoSize boolean @When AutoSize is true we use the widget's desired size
---@field PCZOrder number @The order priority this widget is rendered in.  Higher values are rendered last (and so they will appear to be on top).
FPCNewbieGuideUIInfo = {}


---@class FNewbieGuideUIInfo
---@field NewbieGuideUIType ENewbieGuideUIType
---@field Conditions ULuaArrayHelper<USTNewbieGuideConditionBase>
---@field WidgetClassPath UUAEUserWidget
---@field isMountUIDynamic boolean
---@field MountName string
---@field MountOuterName string
---@field LayoutData FAnchorData
---@field LogicManagerNames string
---@field WidgetClass2 UUAEUserWidget
---@field bAutoSize boolean @When AutoSize is true we use the widget's desired size
---@field ZOrder number @The order priority this widget is rendered in.  Higher values are rendered last (and so they will appear to be on top).
---@field PCUIInfo FPCNewbieGuideUIInfo
FNewbieGuideUIInfo = {}


---@class FNewbieGuideModeSettings
---@field IsNotFollow boolean
---@field SubModeIDArray ULuaArrayHelper<string>
---@field ModeTypeArray ULuaArrayHelper<EGameModeType>
---@field ModeUIArray ULuaArrayHelper<string>
FNewbieGuideModeSettings = {}


---@class FNewbieGuideItem
---@field ID number
---@field Name string
---@field Type ENewbieGuideType
---@field MaxGuideCounts number
---@field SubjectPlayerTypes ULuaArrayHelper<ENewbieGuidePlayerCategory>
---@field Priority number
---@field MuteFlag number
---@field PreconditionID number
---@field PreconditionTipTimeGap number
---@field Conditions ULuaArrayHelper<USTNewbieGuideConditionBase>
---@field QuickFinishedListener ULuaArrayHelper<USTNewbieGuideSuccessListenerBase>
---@field PreID number
---@field FollowID number
---@field Duration number
---@field bIsLimited boolean
---@field bEarlyCheck boolean
---@field UIInfos ULuaArrayHelper<FNewbieGuideUIInfo>
---@field ModeSettings FNewbieGuideModeSettings
---@field IsEnabled boolean
---@field bIsTimeEfficient boolean
---@field bIsPCActive boolean
FNewbieGuideItem = {}


---@class USTNewbieGuideConditionBase: UObject
---@field OwnerController AController
local USTNewbieGuideConditionBase = {}

---@return boolean
function USTNewbieGuideConditionBase:IsOK() end

---@return boolean
function USTNewbieGuideConditionBase:ReconnectRecover() end


---@class USTNewbieGuideSuccessListenerBase: UGSListenerBase
local USTNewbieGuideSuccessListenerBase = {}

---@return boolean
function USTNewbieGuideSuccessListenerBase:GuideFinishedByPlayer() end


---@class UNewbieGuideItemObject: UObject
---@field NewbieGuideItem FNewbieGuideItem
local UNewbieGuideItemObject = {}


---@class UPCNewbieGuideConfig: UObject
---@field items ULuaArrayHelper<FNewbieGuideItem>
local UPCNewbieGuideConfig = {}


---@class UNewbieGuideComponent: UActorComponent
---@field CurTipsID number
---@field IsStartShowingGuide boolean
---@field OpenNewbieGuideSwitch boolean
---@field GuideInterval number
---@field MaxGuideLevel number
---@field items ULuaArrayHelper<FNewbieGuideItem>
---@field RegisterItems ULuaArrayHelper<UNewbieGuideItemObject>
---@field FinishedTips ULuaArrayHelper<number>
---@field FinishedCounts ULuaArrayHelper<number>
---@field CurrentPlayerCategory ENewbieGuidePlayerCategory
---@field bInitializationCompletesImmediatelyTick boolean
---@field bDataCompleteInitializationComplete boolean
---@field ZombieModeGuideInfo FZombieModeGuideInfo
---@field OnConditionSucess FNewbieGuideOnConditionSucess
---@field OnCreateWidget FNewbieGuideOnCreateWidget
---@field OnUIInfoIsValid FNewbieGuideOnUIInfoIsValid
---@field OnSendNewbieMsg FNewbieGuideOnSendNewbieMsg
---@field DebugModeID string
local UNewbieGuideComponent = {}

function UNewbieGuideComponent:CheckConditonGuide() end

---@param tipsID number
---@param isStart boolean
---@param tipsIndex number
function UNewbieGuideComponent:SendNewbieMsg(tipsID, isStart, tipsIndex) end

---@param _OwnerController ASTExtraPlayerController
---@param _FinishedTips ULuaArrayHelper<number>
---@param _FinishedCounts ULuaArrayHelper<number>
---@param curPlayerCategory ENewbieGuidePlayerCategory
function UNewbieGuideComponent:InitComponent(_OwnerController, _FinishedTips, _FinishedCounts, curPlayerCategory) end

---@return boolean
function UNewbieGuideComponent:GetIsAllowNewGuide() end

---@param NewbieGuideItemDataAsset UNewbieGuideItemObject
---@return boolean
function UNewbieGuideComponent:RegisterNewGuide(NewbieGuideItemDataAsset) end

---@param InItem FNewbieGuideItem
---@return boolean
function UNewbieGuideComponent:RegisterNewGuideItem(InItem) end

---@param NewbieGuideItem UNewbieGuideItemObject
---@return boolean
function UNewbieGuideComponent:UnRegisterNewGuide(NewbieGuideItem) end

function UNewbieGuideComponent:GetAllNewbieGuideItemDataAssetPathAndObject() end

---@param InItem FNewbieGuideItem
---@return boolean
function UNewbieGuideComponent:IsValid(InItem) end

---@param inFinishRet FLoadGuideUIFinishRet
function UNewbieGuideComponent:OnUIAssetLoadFinsh(inFinishRet) end

---@param Trigger UGSListenerBase
function UNewbieGuideComponent:OnGuideFinishEventTrigger(Trigger) end

function UNewbieGuideComponent:FinishCurrentGuide() end

---@param Category ENewbieGuidePlayerCategory
---@param ModeID number
function UNewbieGuideComponent:ResetGuid(Category, ModeID) end

function UNewbieGuideComponent:GetNewbieGuidInfo() end

---@param Index number
---@param Priority number
function UNewbieGuideComponent:AddGuidPriority(Index, Priority) end

---@param ID number
---@return number
function UNewbieGuideComponent:GetFinishedCount(ID) end

---@param ID number
function UNewbieGuideComponent:AddFinishedCount(ID) end

---@param Index number
function UNewbieGuideComponent:TestNewbieGuideUI(Index) end

---@param Index number
---@param IsEnable boolean
function UNewbieGuideComponent:EnableNewbieGuideUI(Index, IsEnable) end
