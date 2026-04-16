---@meta

---【废弃】技能管理系统接口库
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@class UGCSkillManagerSystem
UGCSkillManagerSystem = {}

---【废弃】请使用 UGCPersistEffectSystem
---获取技能组件
---生效范围：服务器&客户端
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@return SkillManagerComponent @技能组件
function UGCSkillManagerSystem.GetSkillManagerComponent(Actor) end

---【废弃】请使用 UGCPersistEffectSystem
---使用技能（技能列表中，技能需配置 SET_KEY_DOWN 事件触发）
---生效范围：服务器&客户端
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillName string @技能短名
function UGCSkillManagerSystem.UseSkill(Actor, SkillName) end

---【废弃】请使用 UGCPersistEffectSystem
---停止技能
---生效范围：服务器&客户端
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillName string @技能短名
function UGCSkillManagerSystem.StopSkill(Actor, SkillName) end

---【废弃】请使用 UGCPersistEffectSystem
---使用技能（自定义触发事件类型）
---生效范围：服务器&客户端
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillName string @技能短名
---@param EventType UTSkillEventType @事件类型
function UGCSkillManagerSystem.TriggerSkillEvent(Actor, SkillName, EventType) end

---【废弃】请使用 UGCPersistEffectSystem
---根据技能路径使用技能（技能列表中，技能需配置 SET_KEY_DOWN 事件触发）
---生效范围：服务器&客户端
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillPath string @技能完整路径
function UGCSkillManagerSystem.UseSkillByPath(Actor, SkillPath) end

---【废弃】请使用 UGCPersistEffectSystem
---根据技能路径停止技能
---生效范围：服务器&客户端
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillPath string @技能完整路径
function UGCSkillManagerSystem.StopSkillByPath(Actor, SkillPath) end

---【废弃】请使用 UGCPersistEffectSystem
---生效范围：服务器&客户端
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillPath string @技能完整路径
---@param EventType UTSkillEventType @事件类型
function UGCSkillManagerSystem.TriggerSkillEventByPath(Actor, SkillPath, EventType) end

---【废弃】请使用 UGCPersistEffectSystem
---停止所有技能
---生效范围：服务器
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
function UGCSkillManagerSystem.StopAllSkill(Actor) end

---【废弃】请使用 UGCPersistEffectSystem
---添加技能
---生效范围：服务器
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillClassPath string @技能完整路径
function UGCSkillManagerSystem.AddSkill(Actor, SkillClassPath) end

---【废弃】请使用 UGCPersistEffectSystem
---移除技能
---生效范围：服务器
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillClassPath string @技能完整路径
function UGCSkillManagerSystem.RemoveSkill(Actor, SkillClassPath) end

---【废弃】请使用 UGCPersistEffectSystem
---当前是否有技能在执行
---生效范围：服务器&客户端
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@return boolean @是否有技能在执行
function UGCSkillManagerSystem.IsSkillRunning(Actor) end

---【废弃】请使用 UGCPersistEffectSystem
---获取技能冷却
---生效范围：服务器
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillPath string @技能完整路径
---@return number @技能冷却时间
function UGCSkillManagerSystem.GetSkillCD(Actor, SkillPath) end

---【废弃】请使用 UGCPersistEffectSystem
---激活技能
---生效范围：服务器
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillPath string @技能完整路径
---@param NewActive boolean @技能状态
function UGCSkillManagerSystem.SetSkillActive(Actor, SkillPath, NewActive) end

---【废弃】请使用 UGCPersistEffectSystem
---向技能抛出一个字符串类型的事件
---生效范围：服务器
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillPath string @技能完整路径
---@param EventString string @字符串事件
function UGCSkillManagerSystem.TriggerStringEvent(Actor, SkillPath, EventString) end

---【废弃】请使用 UGCPersistEffectSystem
---向技能抛出一个预定义的事件
---生效范围：服务器
---@deprecated @UGCSkillManagerSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param Actor Actor @Actor 对象
---@param SkillPath string @技能完整路径
---@param EventType UAESkillEvent @预定义事件
function UGCSkillManagerSystem.TriggerUAEEvent(Actor, SkillPath, EventType) end