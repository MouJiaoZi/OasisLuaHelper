---@meta

---@class UGameModeBWInteractorComponent: UGameModeBaseComponent
---@field BWInteractorHandleArray ULuaMapHelper<number, UBWInteractorHandle>
local UGameModeBWInteractorComponent = {}

---@param IdipID number
---@param Params string
function UGameModeBWInteractorComponent:CreateHandle(IdipID, Params) end

---@param IdipID number
---@param ClassPath string
---@param Params string
function UGameModeBWInteractorComponent:CreateHandleWithClass(IdipID, ClassPath, Params) end

---@param IdipID number
function UGameModeBWInteractorComponent:RemoveHandle(IdipID) end

---@return number
function UGameModeBWInteractorComponent:GetLobbyTime() end
