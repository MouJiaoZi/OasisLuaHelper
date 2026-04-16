---@meta

---@class EPlayerOBTransformState
---@field None number
---@field Transformed number
---@field WaitingRecover number
EPlayerOBTransformState = {}


---@class ERecoverOBType
---@field Default number
---@field Reconnect number
---@field TooFar number
---@field ObserverNext number
---@field FocusPlayerLostConnect number
---@field SelfPlayerLostConnect number
---@field TransformPawnInvalid number
ERecoverOBType = {}


---@class FOBTransformPlayerData
---@field FocusPlayerState ASTExtraPlayerState
FOBTransformPlayerData = {}


---@class FOBTransformRecoverOBRepInfo
---@field PlayerKey number
---@field PlayerID number
FOBTransformRecoverOBRepInfo = {}


---@class UOBTransformCtrlComponent: UActorComponent
---@field TargetPawn APawn
---@field LocationFinderWrapper FValidTeleportLocationFinderWrapper
---@field LocationQueryStartIndex number
---@field TransformPosCheckRate number
---@field PlayerStateCheckRate number
---@field TransformPosCheckDistance number
---@field TransformCheckZVelocity number
---@field bUpdateObserverSmoothState boolean
---@field bDestroyOnSendBattleResult boolean
---@field InvalidTransformTipID number
---@field CustomInvalidTransformTipID number
---@field InvalidRecoverTipID number
---@field RecoverToOBCheckTimeout number
---@field CurOBTransformState EPlayerOBTransformState
---@field bIgnorePosCheck boolean
---@field RecoverOBRepInfo FOBTransformRecoverOBRepInfo
---@field CacheOBTransformCharacter ACharacter
---@field CacheConnectionStatePCs ULuaArrayHelper<ASTExtraPlayerController>
---@field bIgnoreOutofWorld boolean
local UOBTransformCtrlComponent = {}

---@param DeadCharacter ASTExtraBaseCharacter
function UOBTransformCtrlComponent:OnCurFocusPlayerDie(DeadCharacter) end

---@param PlayerKey number
function UOBTransformCtrlComponent:OnPlayerGotoSpectating(PlayerKey) end

---@param GameState string
function UOBTransformCtrlComponent:OnGameModeStateChanged(GameState) end

function UOBTransformCtrlComponent:OnRep_RecoverOBRepInfo() end

function UOBTransformCtrlComponent:OnRep_CurOBTransformState() end

function UOBTransformCtrlComponent:BP_OnRep_CurOBTransformState() end

---@param PlayerKey number
---@param Reason string
function UOBTransformCtrlComponent:OnPlayerSendBattleResult(PlayerKey, Reason) end

function UOBTransformCtrlComponent:OnPlayerReconnected() end

---@param FocusPawn APawn
---@param DestLocation FVector
---@return boolean
function UOBTransformCtrlComponent:BPCheckIsStartLocationOk(FocusPawn, DestLocation) end

---@param TargetPlayerState ASTExtraPlayerState
function UOBTransformCtrlComponent:BPOnFocusPlayerChange(TargetPlayerState) end

---@param FocusPlayerCharacter ASTExtraBaseCharacter
---@param DistanceSquared number
function UOBTransformCtrlComponent:BPOnFarawayFromFocusPlayer(FocusPlayerCharacter, DistanceSquared) end

function UOBTransformCtrlComponent:BPOnTransformedFinish() end

---@param bDestroy boolean
---@param bByAccident boolean
function UOBTransformCtrlComponent:BPOnRecoverFinish(bDestroy, bByAccident) end

---@param TargetPlayerState ASTExtraPlayerState
---@return boolean
function UOBTransformCtrlComponent:BPCanObserverNextPlayer(TargetPlayerState) end

---@param PC ASTExtraPlayerController
---@param TargetPlayerState ASTExtraPlayerState
---@return boolean
function UOBTransformCtrlComponent:BPCanExecuteTransformServer(PC, TargetPlayerState) end

---@param TargetChars ULuaArrayHelper<ACharacter>
---@param AutoResetTime number
function UOBTransformCtrlComponent:SetOBTransformConnectionState(TargetChars, AutoResetTime) end

function UOBTransformCtrlComponent:ResetOBTransformConnectionState() end

---@param OutTransform FTransform
---@param FocusPawn APawn
---@return boolean
function UOBTransformCtrlComponent:GenerateTransformStartTrans(OutTransform, FocusPawn) end

function UOBTransformCtrlComponent:ReqExecuteTransform() end

function UOBTransformCtrlComponent:ReqExecuteRecover() end

---@param InPlayerKey number
---@param InPlayerId number
function UOBTransformCtrlComponent:RPC_Client_SetRecoverOBRepInfo(InPlayerKey, InPlayerId) end

function UOBTransformCtrlComponent:ExecuteTransformServer() end

---@param bUseRPC boolean
function UOBTransformCtrlComponent:ExecuteRecoverToOBServer(bUseRPC) end

function UOBTransformCtrlComponent:DestroyOBTransformCharacter() end

---@param InValue boolean
function UOBTransformCtrlComponent:SetIsOutofWorld(InValue) end

function UOBTransformCtrlComponent:BPObserverNextPlayerFailed() end
