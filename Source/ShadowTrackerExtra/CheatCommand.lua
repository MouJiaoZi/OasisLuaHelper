---@meta

---@class UCheatCommand: UObject
---@field ForbiddenPawnStateList ULuaArrayHelper<EPawnState>
local UCheatCommand = {}

---@return boolean
function UCheatCommand:HasCommandExecuteAuthority() end

---@param InResultType ECheatCommandResultType
---@return boolean
function UCheatCommand:IsCommandResultSuccess(InResultType) end

---@param InCommandInfo FCheatCommandInfo
---@param InCommandTriggerController ASTExtraPlayerController
---@return ECheatCommandResultType
function UCheatCommand:TryExecuteCommand(InCommandInfo, InCommandTriggerController) end

---@param InCommandInfo FCheatCommandInfo
---@param InCommandTriggerController ASTExtraPlayerController
---@return boolean
function UCheatCommand:IsPassCommandParamCheck(InCommandInfo, InCommandTriggerController) end

---@param InCommandTriggerController ASTExtraPlayerController
---@param InCommandInfo FCheatCommandInfo
---@return boolean
function UCheatCommand:IsInForbiddenState(InCommandTriggerController, InCommandInfo) end

---@param InCommandInfo FCheatCommandInfo
---@param InCommandTriggerController ASTExtraPlayerController
---@return ECheatCommandResultType
function UCheatCommand:DoExecuteCommand(InCommandInfo, InCommandTriggerController) end

---@param InDeltaTime number
function UCheatCommand:UpdateCommand(InDeltaTime) end

---@param InCommandTriggerController ASTExtraPlayerController
---@param InCommandType ECheatCommandType
---@param InResultType ECheatCommandResultType
function UCheatCommand:FinishCommand(InCommandTriggerController, InCommandType, InResultType) end

---@param InCommandTriggerController ASTExtraPlayerController
---@param InCommandResultInfo FCheatCommandResultInfo
function UCheatCommand:FinishCommandWithInfo(InCommandTriggerController, InCommandResultInfo) end
