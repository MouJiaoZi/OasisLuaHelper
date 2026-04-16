---@meta

---武器管理系统接口库
---@class UGCWeaponManagerSystem
UGCWeaponManagerSystem = {}

---获取武器管理组件
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return UWeaponManagerComponent @武器管理组件
function UGCWeaponManagerSystem.GetWeaponManagerComponent(PlayerPawn) end

---获取对应插槽的武器实例
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param Slot ESurviveWeaponPropSlot @武器槽位
---@return ASTExtraWeapon @武器
function UGCWeaponManagerSystem.GetWeaponBySlot(PlayerPawn, Slot) end

---获取当前使用的武器实例
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return ASTExtraWeapon @武器
function UGCWeaponManagerSystem.GetCurrentWeapon(PlayerPawn) end

---获取上一把武器
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return ASTExtraWeapon @武器
function UGCWeaponManagerSystem.GetLastUsedWeapon(PlayerPawn) end

---获取当前使用武器插槽
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return ESurviveWeaponPropSlot @武器槽位
function UGCWeaponManagerSystem.GetCurrentWeaponSlot(PlayerPawn) end

---切换对应槽位的武器
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param Slot ESurviveWeaponPropSlot @武器槽位
---@param IsUseAnimation boolean @是否播放使用动画
function UGCWeaponManagerSystem.SwitchWeaponBySlot(PlayerPawn, Slot, IsUseAnimation) end

---收起武器
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
function UGCWeaponManagerSystem.CurrentWeaponAttachToBack(PlayerPawn) end

---获取武器ItemID
---生效范围：服务器&客户端
---@param Weapon ASTExtraWeapon @武器
---@return number @物品ID,对应物品表中ID
function UGCWeaponManagerSystem.GetWeaponItemID(Weapon) end

---获取武器名
---生效范围：服务器&客户端
---@param Weapon ASTExtraWeapon @武器
---@return string @武器名称
function UGCWeaponManagerSystem.GetWeaponName(Weapon) end

---获取当前消耗弹药
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @弹药ID
function UGCWeaponManagerSystem.GetCurrentUsingAmmoID(PlayerPawn) end

---设置武器的可见性
---生效范围：客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param WeaponSlot ESurviveWeaponPropSlot @武器槽位
---@param bVisible boolean @是否可见
function UGCWeaponManagerSystem.SetWeaponSlotVisible(PlayerPawn, WeaponSlot, bVisible) end