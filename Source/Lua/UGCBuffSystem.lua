---@meta

---【废弃】Buff 系统接口库
---@deprecated @UGCBuffSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@class UGCBuffSystem
UGCBuffSystem = {}

---【废弃】请使用 UGCPersistEffectSystem
---获取 Buff 组件
---生效范围：服务器&客户端
---@deprecated @UGCBuffSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param PlayerPawn PlayerPawn @玩家角色。所有的接口里的 PlayerPawn 都可以扩展成任意的 Actor，只要这个 Actor 有一个名字叫 BuffSystemComponent 的 Buff 组件即可。
---@return BuffSystemComponent @USTBaseBuffSystemComponent
function UGCBuffSystem.GetBuffSystemComponent(PlayerPawn) end

---【废弃】请使用 UGCPersistEffectSystem
---为玩家添加 Buff
---生效范围：服务器
---@deprecated @UGCBuffSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param PlayerPawn PlayerPawn @玩家角色。所有的接口里的 PlayerPawn 都可以扩展成任意的 Actor，只要这个 Actor 有一个名字叫 BuffSystemComponent 的 Buff 组件即可。
---@param BuffName string @Buff 名
---@param LayerCount number @层数
---@param BuffCauser Controller @施加 Buff 的玩家或 AI 的控制器
---@param CauserActor Actor @施加 Buff 的 Actor，比如说 PlayerPawn、燃烧瓶 Actor 等等
---@return number @Buff 唯一 ID
function UGCBuffSystem.AddBuff(PlayerPawn, BuffName, LayerCount, BuffCauser, CauserActor) end

---【废弃】请使用 UGCPersistEffectSystem
---为玩家移除 Buff,本帧内不即时移除
---生效范围：服务器
---@deprecated @UGCBuffSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param BuffName string @Buff 名
---@param LayerCount number @层数
function UGCBuffSystem.RemoveBuff(PlayerPawn, BuffName, LayerCount) end

---【废弃】请使用 UGCPersistEffectSystem
---使用唯一 ID 移除 Buff，本帧内不即时移除
---生效范围：服务器
---@deprecated @UGCBuffSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param InstanceID number @Buff 唯一 ID
---@param LayerCount number @层数
function UGCBuffSystem.RemoveBuffByInstanceID(PlayerPawn, InstanceID, LayerCount) end

---【废弃】请使用 UGCPersistEffectSystem
---是否存在该 Buff
---生效范围：服务器
---@deprecated @UGCBuffSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param BuffName string @Buff 名
---@return boolean @是否存在 Buff
function UGCBuffSystem.HasBuff(PlayerPawn, BuffName) end

---【废弃】请使用 UGCPersistEffectSystem
---获取 Buff 当前层数
---生效范围：服务器&客户端
---@deprecated @UGCBuffSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param BuffName string @Buff 名
---@return number @层数
function UGCBuffSystem.GetCurLayer(PlayerPawn, BuffName) end

---【废弃】请使用 UGCPersistEffectSystem
---获取 Buff 最大层数
---生效范围：服务器&客户端
---@deprecated @UGCBuffSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param BuffName string @Buff 名
---@return number @最大层数
function UGCBuffSystem.GetMaxLayer(PlayerPawn, BuffName) end

---【废弃】请使用 UGCPersistEffectSystem
---获取 Buff 剩余持续时间
---生效范围：服务器&客户端
---@deprecated @UGCBuffSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param PlayerPawn PlayerPawn @玩家角色
---@param BuffName string @Buff 名
---@return number @剩余持续时间
function UGCBuffSystem.GetLeftTime(PlayerPawn, BuffName) end

---【废弃】请使用 UGCPersistEffectSystem
---获取 Buff 的施加者
---生效范围：服务器&客户端
---@deprecated @UGCBuffSystem is deprecated and could be removed later, please use UGCPersistEffectSystem instead
---@param PlayerPawn PlayerPawn @Buff
---@param InstanceID number @Buff 唯一 ID
---@return Actor @Buff 施加者（弱引用，需使用 Actor:Get() 获取实际对象）
function UGCBuffSystem.GetBuffCauserActor(PlayerPawn, InstanceID) end