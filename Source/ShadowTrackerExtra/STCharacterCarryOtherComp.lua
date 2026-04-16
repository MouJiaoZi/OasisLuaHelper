---@meta

---@class FCarryReplaceCharAnimData
---@field CharacterAnimType ECharacterAnimType
---@field PoseAnimList ULuaArrayHelper<UAnimationAsset>
---@field FPPPoseAnimList ULuaArrayHelper<UAnimationAsset>
FCarryReplaceCharAnimData = {}


---Used for build UUTSkillPicker_Fan *
---@class FCarryOther_FanPickerData
---@field Radius number
---@field Angle number
---@field Offset number
---@field IsShowDebugFan boolean
---@field bEnableTrace boolean
---@field LowerTraceRatio number
FCarryOther_FanPickerData = {}


---@class USTCharacterCarryOtherComp: UActorComponent, IObjectPoolInterface, IInteractorInterface
---@field FanData FCarryOther_FanPickerData
---@field AttachedSocketName string
---@field CarryDetachedTeammateInterval number
---@field CarrySomeoneSkillTemplate AUTSkill
---@field BeCarriedSkillTemplate AUTSkill
---@field PutDownPhaseID number
---@field PutDownCapsule FVector2D
---@field PutDownDistance FVector2D
---@field PutDownForwardCheckingExtraDist number
---@field PutDownVerticalCheckingExtraDist number
---@field PutDownToVehicleDelayTime number
---@field TipID_NoEnoughPlace number
---@field TipID_CarryDetachedTeammate number
---@field LogPeroidCount number
---@field OnCarryStateChanged FCarryStateChangedDelegate
---@field ReplaceAnimDataList_BeCarriedPawn_Armed ULuaArrayHelper<FCarryReplaceCharAnimData>
---@field ReplaceAnimDataList_BeCarriedPawn_Unarmed ULuaArrayHelper<FCarryReplaceCharAnimData>
---@field PrevCarryRepData FCarryRepData
---@field SwitcherIndex number
---@field PrevSwitcherIndex number
---@field CachedPutDownToVehicleDelayTime number
---@field PawnOwner_Private ASTExtraBaseCharacter
---@field TeammateBreakAwayMap ULuaMapHelper<ASTExtraBaseCharacter, number>
local USTCharacterCarryOtherComp = {}

---@param _OwnerPawn APawn
function USTCharacterCarryOtherComp:InitializeOwner(_OwnerPawn) end

---@return boolean
function USTCharacterCarryOtherComp:PlayerConfirmToCarryClientSide() end

---@param Vehicle ASTExtraVehicleBase
---@return boolean
function USTCharacterCarryOtherComp:PlayerConfirmToPutDownClientSide(Vehicle) end

function USTCharacterCarryOtherComp:PutDownSuccessfully() end

---@param bIsCarrier boolean
function USTCharacterCarryOtherComp:UnilateralInterruption(bIsCarrier) end

---@param _PrevCarriedPawn APawn
---@param _PrevSwitcherIndex number
function USTCharacterCarryOtherComp:SelectedPickedTargetChangeNotifyHUD(_PrevCarriedPawn, _PrevSwitcherIndex) end

---@param CarriedPawn ASTExtraBaseCharacter
function USTCharacterCarryOtherComp:ServerPlayerConfirm(CarriedPawn) end

---@param bResetRescue boolean
---@param bResetCarry boolean
function USTCharacterCarryOtherComp:ClientPlayerRefused(bResetRescue, bResetCarry) end

---@param Vehicle ASTExtraVehicleBase
function USTCharacterCarryOtherComp:ServerPlayerPutDown(Vehicle) end

function USTCharacterCarryOtherComp:ClientPlayerRefusedPuttingDown() end

function USTCharacterCarryOtherComp:SuicideWhenBeCarriedByEnemy() end

function USTCharacterCarryOtherComp:BreakAwayWhenBeCarriedByTeammate() end

---@param _CarringState ECarringState
---@param _bIsCarrier boolean
---@param _PutDownLocOffset FVector
function USTCharacterCarryOtherComp:SetCarryRepData(_CarringState, _bIsCarrier, _PutDownLocOffset) end

function USTCharacterCarryOtherComp:SetPutDownLocOnServer() end

---@return boolean
function USTCharacterCarryOtherComp:IsCarriedByAI() end

function USTCharacterCarryOtherComp:ManuallyNotifyHUD() end

---@param OldMode EPlayerCameraMode
---@param NewMode EPlayerCameraMode
function USTCharacterCarryOtherComp:OnCameraModeChange(OldMode, NewMode) end

---@param AttachParent AActor
---@param AttachParent_Direct AActor
---@param AttachComponent USceneComponent
---@param AttachSocket string
function USTCharacterCarryOtherComp:PostAttachmentReplication(AttachParent, AttachParent_Direct, AttachComponent, AttachSocket) end

---@param bIsPause boolean
function USTCharacterCarryOtherComp:OnGamePauseEvent(bIsPause) end
