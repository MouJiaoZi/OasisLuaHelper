---@meta

---@class FInputActionBufferUIMsgData
---@field TriggerActionUIMsgString string
---@field UIMsgStringTriggerDelayTime number
FInputActionBufferUIMsgData = {}


---@class FInputActionBufferTriggerData
---@field InputActionNotIncludedTime_Forward number
---@field InputActionNotIncludedTime_Back number
---@field TriggerActionUIMsgStringData ULuaArrayHelper<FInputActionBufferUIMsgData>
---@field TriggerActionUIMsgModule string
FInputActionBufferTriggerData = {}


---@class FInputActionBufferConfigData
---@field ActivaingPawnState EPawnState
---@field ActivatingInputActionType EInputActionType
---@field BufferInputActionTypeToBufferTriggerData ULuaMapHelper<EInputActionType, FInputActionBufferTriggerData>
---@field EnableSubstitutePawnState ULuaArrayHelper<EPawnState>
FInputActionBufferConfigData = {}


---@class FInputActionBufferQueneData
---@field InputActionBufferType EInputActionType
---@field InputActionBufferTime number
FInputActionBufferQueneData = {}


---@class FInputActionBufferModeData
---@field bIsUseBoolMode boolean
---@field bIsOnlyActivateInPC boolean
---@field InputActionModeKey string
---@field MixModeHoldTimeThreshold number
---@field EnableExecClickInputAction ULuaArrayHelper<EInputActionType>
FInputActionBufferModeData = {}


---某些状态下缓存玩家期间的输入，在状态结束后执行最后一个缓存的可执行的操作
---@class UFC_InputActionBufferExecute: UFeatureCustomModule_Controller
---@field EnableBufferinputPawnState ULuaArrayHelper<EPawnState>
---@field DisablePawnStateWhenBufferDataTrigger ULuaArrayHelper<EPawnState>
---@field InputActionToValidBufferMode ULuaMapHelper<EInputActionType, FInputActionBufferModeData>
---@field ActivaingBufferActionInputConfig ULuaArrayHelper<FInputActionBufferConfigData>
---@field bEnableBufferHoldAndMixMode boolean
---@field bEnableHoldModeIgnoreTriggerTimeFilter boolean
---@field MaxBufferInputActionNums number
---@field MaxBufferInputActionNums_HoldPress number
local UFC_InputActionBufferExecute = {}

---@param newPawn APawn
function UFC_InputActionBufferExecute:OnRepPawn(newPawn) end

---@param InputActionType EInputActionType
---@param bIsRelease boolean
function UFC_InputActionBufferExecute:HandleInputActionTrigger(InputActionType, bIsRelease) end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UFC_InputActionBufferExecute:HandleCharacterMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end

---@param State EPawnState
function UFC_InputActionBufferExecute:HandlePawnEnterState(State) end

---@param State EPawnState
function UFC_InputActionBufferExecute:HandlePawnLeaveState(State) end

---@param InterruptedState EPawnState
---@param InterruptBy EPawnState
function UFC_InputActionBufferExecute:HandlePawnInterruptState(InterruptedState, InterruptBy) end

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function UFC_InputActionBufferExecute:HandlePlayerPoseChanged(LastPose, NewPose) end

function UFC_InputActionBufferExecute:HandlePlayerSwitchPoseCDFinsh() end
