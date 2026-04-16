---@meta

--- 获取指定属性数值
---@param AttributeOwner 操作属性的对象 @如玩家，枪械等）
---@param AttributeType 操作属性的枚举 @ativeGameAttributeType | CustomGameAttributeType
---@return 目标数值
function GameAttributeSystem.GetGameAttributeValue(AttributeOwner, AttributeType) end

--- 服务端设置指定属性数值（自动同步到客户端，双端生效）
---@param AttributeOwner 操作属性的对象 @如玩家，枪械等）
---@param AttributeType 操作属性的枚举 @ativeGameAttributeType | CustomGameAttributeType
---@param Value 操作数值
function GameAttributeSystem.SetGameAttributeValue(AttributeOwner, AttributeType, Value) end

--- 服务端添加指定属性数值（自动同步到客户端，双端生效）
---@param AttributeOwner 操作属性的对象 @如玩家，枪械等）
---@param AttributeType 操作属性的枚举 @ativeGameAttributeType | CustomGameAttributeType
---@param Value 操作数值
function GameAttributeSystem.AddGameAttributeValue(AttributeOwner, AttributeType, Value) end

--- 对指定属性添加数值修改操作
---@param AttributeOwner 操作属性的对象 @如玩家，枪械等）
---@param AttributeType 操作属性的枚举 @ativeGameAttributeType | CustomGameAttributeType
---@param OperateType 操作类型 @AttrOperator
---@param Value 操作数值
---@return 操作完成的唯一ID
function GameAttributeSystem.AddGameAttributeOperation(AttributeOwner, AttributeType, OperateType, Value) end

--- 对指定属性移除特定的数值修改操作
---@param AttributeOwner 操作属性的对象 @如玩家，枪械等）
---@param OperateUniqueID 操作属性时返回的唯一ID
function GameAttributeSystem.RemoveGameAttributeOperation(AttributeOwner, OperateUniqueID) end

--- 注册指定属性变化时的回调函数
---@param AttributeOwner 操作属性的对象 @如玩家，枪械等）
---@param AttributeType 操作属性的枚举 @ativeGameAttributeType | CustomGameAttributeType
---@param CallbackFunction 此属性变化时的回调函数 @数形式: function(AttrName, CurValue) end
---@return 属性变化的代理
function GameAttributeSystem.AddGameAttributeChangedDelegate(AttributeOwner, AttributeType, CallbackFunction) end

--- 清除指定属性变化时的回调函数
---@param AttributeOwner 操作属性的对象 @如玩家，枪械等）
---@param AttributeType 操作属性的枚举 @ativeGameAttributeType | CustomGameAttributeType
---@param ChangedDelegate 注册回调函数时返回的代理
function GameAttributeSystem.RemoveGameAttributeChangedDelegate(AttributeOwner, AttributeType, ChangedDelegate) end