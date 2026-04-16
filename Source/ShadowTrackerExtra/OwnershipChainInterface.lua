---@meta

---所有权链追踪接口 用于解决技能系统中多层代理对象的Owner查找问题 当技能通过法术场、载具、代理对象等中间层触发时， 需要能够追踪到真正的Owner（通常是玩家）和控制器
---@class IOwnershipChainInterface: IInterface
IOwnershipChainInterface = {}

---获取最终的Owner（递归查找直到找到真正的角色）
---@return AActor
function IOwnershipChainInterface:GetUltimateOwner() end

---获取最终的控制器
---@return AController
function IOwnershipChainInterface:GetUltimateController() end

---检查是否有有效的最终Owner
---@return boolean
function IOwnershipChainInterface:HasValidUltimateOwner() end

---检查是否有有效的最终PC
---@return boolean
function IOwnershipChainInterface:HasValidUltimateController() end
