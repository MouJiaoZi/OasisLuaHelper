---@meta

---属性系统接口库
---@class UGCAttributeSystem
UGCAttributeSystem = {}

---获取指定属性数值
---生效范围：服务器&客户端
---@param AttributeOwner AActor @操作属性的对象  （如玩家，枪械等，暂不支持带属性组件的普通Actor）
---@param AttributeType UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举
---@return number @目标数值
function UGCAttributeSystem.GetGameAttributeValue(AttributeOwner, AttributeType) end

---设置指定属性数值（自动同步到客户端）
---生效范围：服务器
---@param AttributeOwner AActor @操作属性的对象  （如玩家，枪械等，暂不支持带属性组件的普通Actor）
---@param AttributeType UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举
---@param Value number @操作数值
function UGCAttributeSystem.SetGameAttributeValue(AttributeOwner, AttributeType, Value) end

---获取指定属性数值的最大值
---生效范围：服务器&客户端
---@param AttributeOwner AActor @操作属性的对象  （如玩家，枪械等，暂不支持带属性组件的普通Actor）
---@param AttributeType UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举
---@return number @目标数值
function UGCAttributeSystem.GetGameAttributeValueMax(AttributeOwner, AttributeType) end

---获取指定属性数值的最小值
---生效范围：服务器&客户端
---@param AttributeOwner AActor @操作属性的对象  （如玩家，枪械等，暂不支持带属性组件的普通Actor）
---@param AttributeType UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举
---@return number @目标数值
function UGCAttributeSystem.GetGameAttributeValueMin(AttributeOwner, AttributeType) end

---服务端添加指定属性数值（自动同步到客户端）
---生效范围：服务器
---@param AttributeOwner AActor @操作属性的对象  （如玩家，枪械等，暂不支持带属性组件的普通Actor）
---@param AttributeType UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举
---@param Value number @操作数值
function UGCAttributeSystem.AddGameAttributeValue(AttributeOwner, AttributeType, Value) end

---对指定属性添加数值修改操作
---生效范围：服务器
---@param AttributeOwner AActor @操作属性的对象  （如玩家，枪械等，暂不支持带属性组件的普通Actor）
---@param AttributeType UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举
---@param OperateType EAttrOperator @操作类型
---@param Value number @操作数值
---@return string @操作完成的唯一ID
function UGCAttributeSystem.AddGameAttributeOperation(AttributeOwner, AttributeType, OperateType, Value) end

---对指定属性移除特定的数值修改操作
---生效范围：服务器
---@param AttributeOwner AActor @操作属性的对象  （如玩家，枪械等，暂不支持带属性组件的普通Actor）
---@param OperateUniqueID string @操作属性时返回的唯一ID
function UGCAttributeSystem.RemoveGameAttributeOperation(AttributeOwner, OperateUniqueID) end

---注册指定属性变化时的回调函数
---生效范围：服务器&客户端
---@param AttributeOwner AActor @操作属性的对象  （如玩家，枪械等，暂不支持带属性组件的普通Actor）
---@param AttributeType UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举
---@param CallbackFunction function @此属性变化时的回调函数  函数形式: function(AttributeOwner, AttrName, CurValue) end
---@return Delegate @属性变化的代理
function UGCAttributeSystem.AddGameAttributeChangedDelegate(AttributeOwner, AttributeType, CallbackFunction) end

---清除指定属性变化时的回调函数
---生效范围：服务器&客户端
---@param AttributeOwner AActor @操作属性的对象  （如玩家，枪械等，暂不支持带属性组件的普通Actor）
---@param AttributeType UGCNativeGameAttributeType | UGCCustomGameAttributeType @操作属性的枚举
---@param ChangedDelegate Delegate @注册回调函数时返回的代理
function UGCAttributeSystem.RemoveGameAttributeChangedDelegate(AttributeOwner, AttributeType, ChangedDelegate) end

---获取伤害事件上下文中的原对象
---生效范围：服务器
---@param Context FGameMagnitudeContext @伤害事件上下文
---@return UObject @原对象
function UGCAttributeSystem.GetSourceObjectFromContext(Context) end

---获取伤害事件上下文中的受害者
---生效范围：服务器
---@param Context FGameMagnitudeContext @伤害事件上下文
---@return AActor @受害者
function UGCAttributeSystem.GetVictimFromContext(Context) end

---获取伤害事件上下文中的攻击者
---生效范围：服务器
---@param Context FGameMagnitudeContext @伤害事件上下文
---@return AActor @攻击者(如玩家，怪物, 枪械等)
function UGCAttributeSystem.GetCauserFromContext(Context) end

---获取伤害事件上下文中的攻击者Controller
---生效范围：服务器
---@param Context FGameMagnitudeContext @伤害事件上下文
---@return AController @攻击者Controller(如玩家PlayerController，怪物AIController, 枪械所属角色的Controller等)
function UGCAttributeSystem.GetInstigatorFromContext(Context) end

---获取伤害事件上下文中的原伤害数值
---生效范围：服务器
---@param Context FGameMagnitudeContext @伤害事件上下文
---@return number @伤害数值
function UGCAttributeSystem.GetSourceMagnitudeFromContext(Context) end

---获取伤害事件上下文中的伤害类型
---生效范围：服务器
---@param Context FGameMagnitudeContext @伤害事件上下文
---@return ERestrictedDamageType @伤害类型
function UGCAttributeSystem.GetDamageTypeFromContext(Context) end

---获取伤害事件上下文中的伤害Tags
---生效范围：服务器
---@param Context FGameMagnitudeContext @伤害事件上下文
---@return FName[] @伤害Tags
function UGCAttributeSystem.GetDamageTagsFromContext(Context) end

---获取治疗事件上下文中的治疗Tags
---生效范围：服务器
---@param Context FGameMagnitudeContext @治疗事件上下文
---@return FName[] @伤害Tags
function UGCAttributeSystem.GetRecoverTagsFromContext(Context) end

---获取治疗上下文中的被治疗者
---生效范围：服务器
---@param Context FGameMagnitudeContext @治疗事件上下文
---@return AActor @被治疗者
function UGCAttributeSystem.GetRecoveredActorFromContext(Context) end

---获取伤害事件上下文中的伤害部位类型
---生效范围：服务器
---@param Context FGameMagnitudeContext @伤害事件上下文
---@return EAvatarDamagePosition @伤害部位类型
function UGCAttributeSystem.GetDamagePositionTypeFromContext(Context) end