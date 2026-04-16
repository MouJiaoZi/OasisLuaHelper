---@meta

---GamePart PlayerComponent接口
---@class IUGCGamePartPlayerComponentInterface
IUGCGamePartPlayerComponentInterface = {}

function IUGCGamePartPlayerComponentInterface:ReceivePlayerEnter() end

function IUGCGamePartPlayerComponentInterface:ReceivePlayerExit() end

function IUGCGamePartPlayerComponentInterface:ReceiveInitializeOnClient() end
