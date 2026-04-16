---@meta

---@class EPlayerLadderState
---@field None number
---@field PreClimbing number
---@field OnLadder number
---@field PlatformVaulting number
---@field OnLadderPause number
EPlayerLadderState = {}


---@class FPlayerClimbIKInfo
---@field HandIKEffectorLocation FVector
---@field HandIKJointTargetLocation FVector
---@field HandIKJointOffset FVector
---@field HandIKEnableTime FVector2D
FPlayerClimbIKInfo = {}


---@class UPlayerClimbLadderComponent: UActorComponent, IObjectPoolInterface
---@field LadderMoveAnimTime number
---@field CurveErrorRange number
---@field RemainDistanceSquareValue number
---@field RightHandIKInfo_Up ULuaArrayHelper<FPlayerClimbIKInfo>
---@field LeftHandIKInfo_Up ULuaArrayHelper<FPlayerClimbIKInfo>
---@field RightHandIKInfo_Down ULuaArrayHelper<FPlayerClimbIKInfo>
---@field LeftHandIKInfo_Down ULuaArrayHelper<FPlayerClimbIKInfo>
---@field RightHandEffectorLocation FVector
---@field RightHandJointTargetLocation FVector
---@field LeftHandEffectorLocation FVector
---@field LeftHandJointTargetLocation FVector
---@field BodyMoveOffset FVector
---@field bEnableRightHandIK boolean
---@field bEnableLeftHandIK boolean
---@field CurPlayerLadderState EPlayerLadderState
---@field CurClimbState ELadderClimbState
---@field ClimbLadderAnimProgress number
---@field LadderMoveAnimTimeScale number
---@field PredictLadderStepIndex number
---@field CurLadderStepIndex number
---@field ChangeDirTimesPerClimb number
---@field TransitingTransformTime number
---@field TransitingTransformTotalTime number
---@field TransitingSrcTransform FTransform
---@field TransitingDestTransform FTransform
---@field bEnablePreClimbRequest boolean
---@field CorrectLocationDeviation number
---@field PreAddClimbRequestDistance number
---@field PreAddClimbRequestValidTime number
---@field LastClimbRequestTime number
local UPlayerClimbLadderComponent = {}

function UPlayerClimbLadderComponent:OnRep_CurLadder() end

---@param InCurLadder ALadderActor
function UPlayerClimbLadderComponent:SetCurrentLadder(InCurLadder) end

function UPlayerClimbLadderComponent:ResetClimbState() end

---@param bClimbUp boolean
function UPlayerClimbLadderComponent:AddClimbRequestServer(bClimbUp) end

---@return boolean
function UPlayerClimbLadderComponent:IsClimbingUpOrDown() end

---@param NewScale number
function UPlayerClimbLadderComponent:SafeSetAnimTimeScale(NewScale) end

---@param StepIndex number
function UPlayerClimbLadderComponent:SetPredictStepIndex(StepIndex) end

---@param StepIndex number
function UPlayerClimbLadderComponent:SetCurStepIndex(StepIndex) end

function UPlayerClimbLadderComponent:ResetPredictStepIndex() end

function UPlayerClimbLadderComponent:ResetCurStepIndex() end

---@param ClimbRequest ELadderClimbState
---@return boolean
function UPlayerClimbLadderComponent:BP_HandleClimbVaultOrJumpServer(ClimbRequest) end

---@param DestLoc FVector
---@param DestRot FRotator
---@param LerpTime number
---@param TransitionState EPlayerLadderState
---@param PredictStepIndex number
---@param TransitionCurve UCurveFloat
---@param TransitionPlaneCurve UCurveFloat
function UPlayerClimbLadderComponent:StartNotClimbUpDownTransitionAllParams(DestLoc, DestRot, LerpTime, TransitionState, PredictStepIndex, TransitionCurve, TransitionPlaneCurve) end

---@param DestLoc FVector
---@param LerpTime number
---@param TransitionState EPlayerLadderState
---@param PredictStepIndex number
function UPlayerClimbLadderComponent:StartNotClimbUpDownTransition(DestLoc, LerpTime, TransitionState, PredictStepIndex) end

---@param TransitionState EPlayerLadderState
---@param PredictStepIndex number
function UPlayerClimbLadderComponent:BP_OnNotClimbUpDownTransitionFinish(TransitionState, PredictStepIndex) end

---@param DestStepIndex number
---@param DestAnimScale number
---@return boolean
function UPlayerClimbLadderComponent:BP_IsClimbRequestDataValid(DestStepIndex, DestAnimScale) end

---@param NewClimbRequest ELadderClimbState
---@return number
function UPlayerClimbLadderComponent:BP_CalculateAnimProgress(NewClimbRequest) end

---@param bClimbUp boolean
function UPlayerClimbLadderComponent:ReqClimbUpOrDownLadder(bClimbUp) end

function UPlayerClimbLadderComponent:UpdateHandIKEnable() end

---@param NewClimbRequest ELadderClimbState
---@return number
function UPlayerClimbLadderComponent:CalculateDestStepIndexByRequest(NewClimbRequest) end

function UPlayerClimbLadderComponent:PreSaveCacheData() end

---@param DestStepIndex number
---@param NewClimbRequest ELadderClimbState
function UPlayerClimbLadderComponent:MulticastClimbRequestInfo(DestStepIndex, NewClimbRequest) end

function UPlayerClimbLadderComponent:BP_OnRespawned() end

---@param bClimbUp boolean
---@return boolean
function UPlayerClimbLadderComponent:BP_CheckPlayerBlock(bClimbUp) end

---@param NewClimbRequest ELadderClimbState
function UPlayerClimbLadderComponent:ResetClimbLadderAnimProgress(NewClimbRequest) end

---@param DeltaTime number
function UPlayerClimbLadderComponent:UpdateClimbLadderAnimProgress(DeltaTime) end

function UPlayerClimbLadderComponent:CheckPreAddClimbRequest() end

---@param Player AActor
---@param RemainDistanceSquare number
function UPlayerClimbLadderComponent:ResetPlayerLocation(Player, RemainDistanceSquare) end
