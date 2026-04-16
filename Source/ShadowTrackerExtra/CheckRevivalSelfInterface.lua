---@meta

---@class ICheckRevivalSelfInterface
ICheckRevivalSelfInterface = {}

---@return boolean
function ICheckRevivalSelfInterface:CustomCheckPlayerCanReviveSelf() end

---@return boolean
function ICheckRevivalSelfInterface:CustomCheckCanAutoRevivalSelf() end

function ICheckRevivalSelfInterface:TrigBattleResultIfConditionMatch() end

function ICheckRevivalSelfInterface:TrigAllBattleResultIfConditionMatch() end
