---@meta

---人物用反外挂组件 包含历史位置回溯和命中骨骼校验
---@class ULagCompensationComponent: ULagCompensationComponentBase
local ULagCompensationComponent = {}

---角色血量归零
---@param Instigator AController
---@param Victim ASTExtraBaseCharacter
function ULagCompensationComponent:OnCharacterHpGoZero(Instigator, Victim) end

function ULagCompensationComponent:OnReconnectedOnServer() end

function ULagCompensationComponent:OnRecoveredOnServer() end
