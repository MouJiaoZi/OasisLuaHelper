---@meta

---@class FCarryDeadBox_FanPickerData
---@field Radius number
---@field Angle number
---@field Offset number
---@field IsShowDebugFan boolean
---@field bEnableTrace boolean
---@field LowerTraceRatio number
FCarryDeadBox_FanPickerData = {}


---@class USTCharacterCarryDeadBoxComp: UActorComponent, IObjectPoolInterface, IInteractorInterface
---@field FanData FCarryDeadBox_FanPickerData
---@field ServerCheckDistanceFactor number
---@field RegistPossessValue FRegistPossessValue
---@field CarryDeadBoxTag FGameplayTag
---@field CarryDeadBoxEffectTemplate UPersistEffectWithState
---@field PutDownStateName string
---@field PutDownBoxHalfExtent FVector
---@field PutDownDistance FVector2D
---@field PutDownIgnoreClasses ULuaArrayHelper<UClass>
---@field PutDownVerticalCheckingExtraDist number
---@field PutUpSwitcherIndex number
---@field PutDownSwitcherIndex number
---@field TipID_NoEnoughPlace number
---@field TipID_InvalidState number
---@field TipID_HasCD number
---@field TipID_CantBePickedUp number
---@field LogPeroidCount number
---@field PutDownPCVerName string
---@field OnCarryDeadBoxStateChanged FCarryDeadBoxStateChangedDelegate
---@field PrevCarryDeadBoxRepData FCarryDeadBoxRepData
---@field SwitcherIndex number
---@field PrevSwitcherIndex number
---@field PawnOwner_Private ASTExtraBaseCharacter
local USTCharacterCarryDeadBoxComp = {}

---@param _OwnerPawn APawn
function USTCharacterCarryDeadBoxComp:InitializeOwner(_OwnerPawn) end

---@return boolean
function USTCharacterCarryDeadBoxComp:PlayerConfirmToCarryClientSide() end

---@return boolean
function USTCharacterCarryDeadBoxComp:PlayerConfirmToPutDownClientSide() end

function USTCharacterCarryDeadBoxComp:PutDownSuccessfully() end

function USTCharacterCarryDeadBoxComp:UnilateralInterruption() end

---@param SelectedCarriedDeadBox APlayerTombBox
---@param NeedShowSwitcherIndex number
function USTCharacterCarryDeadBoxComp:SelectedPickedTargetChangeNotifyHUD(SelectedCarriedDeadBox, NeedShowSwitcherIndex) end

function USTCharacterCarryDeadBoxComp:ManuallyNotifyHUD() end

---@param TargetDeadBox APlayerTombBox
function USTCharacterCarryDeadBoxComp:ServerPlayerConfirm(TargetDeadBox) end

---@param bResetRescue boolean
---@param bResetCarryPawn boolean
---@param bResetCarryDeadBox boolean
function USTCharacterCarryDeadBoxComp:ClientPlayerRefused(bResetRescue, bResetCarryPawn, bResetCarryDeadBox) end

function USTCharacterCarryDeadBoxComp:ServerPlayerPutDown() end

function USTCharacterCarryDeadBoxComp:ClientPlayerRefusedPuttingDown() end

---@param _CarringState ECarringState
---@param _PutDownLocOffset FVector
function USTCharacterCarryDeadBoxComp:SetCarryDeadBoxRepData(_CarringState, _PutDownLocOffset) end

---@param PlayerTombBox APlayerTombBox
function USTCharacterCarryDeadBoxComp:SetCarriedDeadBox(PlayerTombBox) end

---@param bInterrupted boolean
---@return boolean
function USTCharacterCarryDeadBoxComp:SetPutDownLocOnServer(bInterrupted) end

function USTCharacterCarryDeadBoxComp:OnRep_CarriedBox() end

function USTCharacterCarryDeadBoxComp:WaitingConfirmState_ActOnUnsatisfied() end

---@param DeltaTime number
function USTCharacterCarryDeadBoxComp:TickFindTargetRunOnClient(DeltaTime) end

---@param DeltaTime number
function USTCharacterCarryDeadBoxComp:TickWaitforConfirmRunOnClient(DeltaTime) end

---@param CanCarryTargets ULuaArrayHelper<APlayerTombBox>
---@return boolean
function USTCharacterCarryDeadBoxComp:PickTargetsAsHelper(CanCarryTargets) end

---@param TargetDeadBox APlayerTombBox
---@param OwnerPawn ASTExtraBaseCharacter
---@return boolean
function USTCharacterCarryDeadBoxComp:IsCanCarry(TargetDeadBox, OwnerPawn) end

---@return boolean
function USTCharacterCarryDeadBoxComp:WaitingConfirmState_IsConditionSatisfied() end

---@return boolean
function USTCharacterCarryDeadBoxComp:WhetherCanPutDown() end

---@param _OwnerPawn ACharacter
---@param _CarriedPawn ACharacter
---@param IsTurnInto boolean
---@param _SwitcherIndex number
function USTCharacterCarryDeadBoxComp:CanCarryOtherPawnChange(_OwnerPawn, _CarriedPawn, IsTurnInto, _SwitcherIndex) end
