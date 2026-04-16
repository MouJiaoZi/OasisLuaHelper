---@meta

---@class UAvatarBehaviorFeature_ParticleHidden: UAvatarBehaviorFeature_UtilFuncLayer
---@field bOverride_HandleCameraModeChange boolean
---@field bOverride_ReMatchParticleHiddenState boolean
---@field bOverride_IsParticleInBuffByFastShape boolean
---@field bOverride_SetParticleHidden boolean
---@field ParticleHiddenBehaviorParam FParticleHiddenBehaviorParam
---@field bBuffStateDirty boolean
---@field bConcernCameraModeChange boolean
---@field bConcernStateChange boolean
---@field bConcernBuffChange boolean
---@field bIsSwimState boolean
---@field TickCounter number
local UAvatarBehaviorFeature_ParticleHidden = {}

---@param EnteredState EPawnState
function UAvatarBehaviorFeature_ParticleHidden:HandleStateChanged(EnteredState) end

---@param stateID number
---@param interruptedBy number
function UAvatarBehaviorFeature_ParticleHidden:OnStateInterrupted(stateID, interruptedBy) end

---@param InCurrentStates number
---@param InPrevStates number
function UAvatarBehaviorFeature_ParticleHidden:OnSimulateCharStateChanged(InCurrentStates, InPrevStates) end

---@param InCallTag string
function UAvatarBehaviorFeature_ParticleHidden:ReMatchParticleHiddenState(InCallTag) end

---@param InParticleSystem UParticleSystem
---@param InRuntimePSC UParticleSystemComponent
---@param InSocketName string
---@param InIsHidden boolean
---@return boolean
function UAvatarBehaviorFeature_ParticleHidden:SetParticleHidden(InParticleSystem, InRuntimePSC, InSocketName, InIsHidden) end

---@param InCallTag string
function UAvatarBehaviorFeature_ParticleHidden:BP_ReMatchParticleHiddenState(InCallTag) end

---@param InParticleSystem UParticleSystem
---@param InRuntimePSC UParticleSystemComponent
---@param InSocketName string
---@param InIsHidden boolean
---@return boolean
function UAvatarBehaviorFeature_ParticleHidden:BP_SetParticleHidden(InParticleSystem, InRuntimePSC, InSocketName, InIsHidden) end

---@param BuffName string
function UAvatarBehaviorFeature_ParticleHidden:OnCharBuffAdd(BuffName) end

---@param BuffName string
function UAvatarBehaviorFeature_ParticleHidden:OnCharBuffRemove(BuffName) end

---@param bIsEnter boolean
function UAvatarBehaviorFeature_ParticleHidden:OnPlayerEnterWater(bIsEnter) end

---@param InNewCameraMode EPlayerCameraMode
function UAvatarBehaviorFeature_ParticleHidden:BP_HandleCameraModeChange(InNewCameraMode) end

---@param InParticleSystem UParticleSystem
---@param InRuntimePSC UParticleSystemComponent
---@param InBuffName string
---@param InCurParticleSelector FParticleHiddenPlayerStateSelector
---@return boolean
function UAvatarBehaviorFeature_ParticleHidden:IsParticleInBuffByFastShape(InParticleSystem, InRuntimePSC, InBuffName, InCurParticleSelector) end

---@param InParticleSystem UParticleSystem
---@param InRuntimePSC UParticleSystemComponent
---@param InBuffName string
---@param InCurParticleSelector FParticleHiddenPlayerStateSelector
---@return boolean
function UAvatarBehaviorFeature_ParticleHidden:BP_IsParticleInBuffByFastShape(InParticleSystem, InRuntimePSC, InBuffName, InCurParticleSelector) end

function UAvatarBehaviorFeature_ParticleHidden:CacheParticleComp() end
