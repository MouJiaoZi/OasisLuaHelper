---@meta

---@class IBWInteractorHandleInterface
IBWInteractorHandleInterface = {}

---@param Handle UBWInteractorHandle
function IBWInteractorHandleInterface:SetItemHandle(Handle) end

---@param InputString string
function IBWInteractorHandleInterface:OnEnable(InputString) end

function IBWInteractorHandleInterface:OnDisable() end


---@class UBWSpawnInteractorHandle: UBWInteractorHandle
local UBWSpawnInteractorHandle = {}

---@return boolean
function UBWSpawnInteractorHandle:Enable() end

---@return boolean
function UBWSpawnInteractorHandle:Disable() end
