---@meta

---@class ERevivalPointState
---@field None number
---@field Start number
---@field Revivaling number
---@field RevivalFinish number
---@field RevivalCD number
---@field Destroy number @循环召唤, feishen, 20200117
ERevivalPointState = {}


---@class ARevivalPointActor: AActor
---@field SmokeStartScaleDistance number
---@field SmokeEndScaleDistance number
---@field SmokeStartScaleValue number
---@field SmokeEndScaleValue number
---@field UseRevivalCD boolean @循环召唤, feishen, 20200117
---@field RevivalCDTime number
---@field UseRevivalCount boolean
---@field RevivalCount number
---@field Id number
---@field CurState ERevivalPointState
---@field PreState ERevivalPointState
---@field RevivalTime number
---@field CurRevivalTime number
---@field CanBeShowSmoking boolean
---@field OperationalDistance number
---@field RevivalPointPS ULuaMapHelper<ERevivalPointState, UParticleSystem>
---@field PTowEleTransform FTransform
---@field PTowEleMap ULuaMapHelper<ERevivalPointState, UParticleSystem>
---@field ExParticleComponentTag string
---@field RevivalPointSounds ULuaMapHelper<ERevivalPointState, UAkAudioEvent>
---@field SmokingdisappearTime number
---@field UseShowMiniMapIcon boolean
---@field IconID number
---@field CurrentRevivingPlayers ULuaArrayHelper<number>
---@field CurRevivalPC ASTExtraPlayerController
---@field RevivalCDTimeCur number
---@field DestoryStatePSCom UParticleSystemComponent
local ARevivalPointActor = {}

---@param InPC ASTExtraPlayerController
---@return boolean
function ARevivalPointActor:RevivalPlayers(InPC) end

---@param InPC ASTExtraPlayerController
---@return boolean
function ARevivalPointActor:GiveUpRevivalPlayers(InPC) end

function ARevivalPointActor:StartRevival() end

---@param PlayerKey number
---@return boolean
function ARevivalPointActor:IsPlayerRevivedCurrently(PlayerKey) end

---@return boolean
function ARevivalPointActor:RecheckCurrentRevivingPlayers() end

function ARevivalPointActor:OnRep_CurrentRevivingPlayers() end

---@param scale number
function ARevivalPointActor:DistanceChangedEvent(scale) end

---@param LastPreState ERevivalPointState
function ARevivalPointActor:OnRep_RevivalPointState(LastPreState) end

function ARevivalPointActor:OnRep_RevivalCDTimeCur() end

---循环召唤, feishen, 20200117
---@return number
function ARevivalPointActor:GetRevivalCDTimeCur() end

---@return number
function ARevivalPointActor:GetRevivalCDTimeCurPercent() end

---@return number
function ARevivalPointActor:GetRevivalCDTime() end

---@return number
function ARevivalPointActor:GetId() end

function ARevivalPointActor:OnRep_ShowSmoking() end
