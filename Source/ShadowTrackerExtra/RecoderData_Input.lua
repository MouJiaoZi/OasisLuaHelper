---@meta

---@class FInputKeyFrame
---@field MoveInput FVector
---@field MoveInputState FVector
---@field ControlRotation FRotator
---@field CurrentFrameIndex number
---@field CurrentDelta number
---@field bSprint boolean
FInputKeyFrame = {}


---@class FStartPlayItemData
---@field ID number
---@field Count number
FStartPlayItemData = {}


---@class FInputInitialState
---@field InitItem ULuaArrayHelper<FStartPlayItemData>
---@field PoseState ESTEPoseState
---@field ControlRotation FRotator
---@field KeyFrame FInputKeyFrame
---@field CharacterPos FVector
---@field bIsFpp boolean
FInputInitialState = {}


---@class URecoderData_Input: URecorderDataInputBase
---@field KeyFrame ULuaArrayHelper<FInputKeyFrame>
---@field ButtonEvent ULuaArrayHelper<FInputButtonEvent>
---@field InitialState FInputInitialState
---@field ButtonRecoder ULuaArrayHelper<UButtonRecorder>
local URecoderData_Input = {}
