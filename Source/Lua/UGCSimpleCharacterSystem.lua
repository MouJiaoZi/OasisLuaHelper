---@meta

---怪物小动物系统接口库
---@class UGCSimpleCharacterSystem
UGCSimpleCharacterSystem = {}

---获取当前血量
---生效范围：服务器&客户端
---@param SimpleCharacter ASTExtraSimpleCharacterBase @小动物/ ASTExtraSimpleCharacter @怪物
---@return number @血量
function UGCSimpleCharacterSystem.GetHealth(SimpleCharacter) end

---设置当前血量（不会超过血量最大值）
---生效范围：服务器
---@param SimpleCharacter ASTExtraSimpleCharacterBase @小动物/ ASTExtraSimpleCharacter @怪物
---@param Health number @血量
function UGCSimpleCharacterSystem.SetHealth(SimpleCharacter, Health) end

---获取当前最大血量
---生效范围：服务器&客户端
---@param SimpleCharacter ASTExtraSimpleCharacterBase @小动物/ ASTExtraSimpleCharacter @怪物
---@return number @血量
function UGCSimpleCharacterSystem.GetHealthMax(SimpleCharacter) end

---设置当前最大血量（当前血量不会随之变大，但如果超过最大血量，则会变小）
---生效范围：服务器
---@param SimpleCharacter ASTExtraSimpleCharacterBase @小动物/ ASTExtraSimpleCharacter @怪物
---@param HealthMax number @最大血量
function UGCSimpleCharacterSystem.SetHealthMax(SimpleCharacter, HealthMax) end

---获取移动速度系数
---生效范围：服务器&客户端
---@param SimpleCharacter ASTExtraSimpleCharacterBase @小动物/ ASTExtraSimpleCharacter @怪物
---@return number @移动系数
function UGCSimpleCharacterSystem.GetSpeedScale(SimpleCharacter) end

---设置移动速度系数
---生效范围：服务器
---@param SimpleCharacter ASTExtraSimpleCharacterBase @小动物/ ASTExtraSimpleCharacter @怪物
---@param SpeedScale number @移动系数
function UGCSimpleCharacterSystem.SetSpeedScale(SimpleCharacter, SpeedScale) end

---获取是否无敌
---生效范围：服务器&客户端
---@param SimpleCharacter ASTExtraSimpleCharacterBase @小动物/ ASTExtraSimpleCharacter @怪物
---@return boolean @是否无敌
function UGCSimpleCharacterSystem.IsInvincible(SimpleCharacter) end

---设置是否无敌
---生效范围：服务器
---@param SimpleCharacter ASTExtraSimpleCharacterBase @小动物/ ASTExtraSimpleCharacter @怪物
---@param IsInvincible boolean @是否无敌
function UGCSimpleCharacterSystem.SetInvincible(SimpleCharacter, IsInvincible) end

---获取是否存活
---生效范围：服务器&客户端
---@param SimpleCharacter ASTExtraSimpleCharacterBase @小动物/ ASTExtraSimpleCharacter @怪物
---@return boolean @是否存活
function UGCSimpleCharacterSystem.IsAlive(SimpleCharacter) end