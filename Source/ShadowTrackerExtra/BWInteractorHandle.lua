---@meta

---@class FBWInteractorDefineID
---@field IdipID number
---@field Params string
FBWInteractorDefineID = {}


---@class UBWInteractorHandle: UObject
---@field DefineID FBWInteractorDefineID
---@field Owner UGameModeBWInteractorComponent
local UBWInteractorHandle = {}

---@return boolean
function UBWInteractorHandle:Enable() end

---@return boolean
function UBWInteractorHandle:Disable() end

---@return number
function UBWInteractorHandle:GetRealTime() end

---@return number
function UBWInteractorHandle:GetIdipID() end
