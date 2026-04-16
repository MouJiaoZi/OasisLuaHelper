---@meta

---背包系统接口库
---@class UGCBackPackSystem
UGCBackPackSystem = {}

---获取背包组件(客户端仅能获取到自己的）
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return UBackpackComponent @背包组件
function UGCBackPackSystem.GetBackpackComponent(PlayerPawn) end

---添加道具
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param ItemID number @物品ID
---@param Count number @数量
---@return boolean
function UGCBackPackSystem.AddItem(PlayerPawn, ItemID, Count) end

---掉落道具（入参为ItemID，不关心具体哪个道具）
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param ItemID number @物品ID
---@param Count number @数量
---@param IsDestroy boolean @是否直接销毁，不掉落地面
---@return boolean
function UGCBackPackSystem.DropItem(PlayerPawn, ItemID, Count, IsDestroy) end

---使用道具（入参为ItemID，不关心具体哪个道具）
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param ItemID number @物品ID
---@return boolean
function UGCBackPackSystem.UseItem(PlayerPawn, ItemID) end

---停止使用物品（入参为ItemID，默认选择同ID第一个，仅对物资编辑器生成的绷带，饮料类物资生效）
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param ItemID number @物品ID
---@return boolean
function UGCBackPackSystem.DisuseItem(PlayerPawn, ItemID) end

---根据InstanceID（物品实例ID）掉落道具
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param InstanceID number @物品实例ID（唯一）
---@param Count number @数量
---@param IsDestroy boolean @是否直接销毁，不掉落地面
---@return boolean
function UGCBackPackSystem.DropItemByInstanceID(PlayerPawn, InstanceID, Count, IsDestroy) end

---根据InstanceID（物品实例ID）使用道具
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param InstanceID number @物品实例ID（唯一）
---@return boolean
function UGCBackPackSystem.UseItemByInstanceID(PlayerPawn, InstanceID) end

---根据InstanceID（物品实例ID）停止使用道具（仅对物资编辑器生成的绷带，饮料类物资生效）
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param InstanceID number @物品实例ID（唯一）
---@return boolean
function UGCBackPackSystem.DisuseItemByInstanceID(PlayerPawn, InstanceID) end

---获取道具数量
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param ItemID number @物品ID
---@return number @背包内物品数量
function UGCBackPackSystem.GetItemCount(PlayerPawn, ItemID) end

---获取背包里所有道具数据
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return table @LuaTable<ItemData>, ItemData结构：ItemID,InstanceID,Count,Type,SubType,IsAvatar
function UGCBackPackSystem.GetAllItemData(PlayerPawn) end

---获取ItemData列表
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param ItemID number @物品ID
---@return table @LuaTable<FBattleItemData>
function UGCBackPackSystem.GetAllItemDataByItemID(PlayerPawn, ItemID) end

---根据InstanceID（物品实例ID）获取ItemData
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param InstanceID number @物品实例ID（唯一）
---@return FBattleItemData @战斗物品数据
function UGCBackPackSystem.GetItemDataByInstanceID(PlayerPawn, InstanceID) end

---获取背包剩余容量
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @剩余容量
function UGCBackPackSystem.GetCapacity(PlayerPawn) end

---获取背包最大剩余容量
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return number @最大剩余容量
function UGCBackPackSystem.GetMaxCapacity(PlayerPawn) end

---是否拥有某类物品
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@param ItemSubType number @道具字类型
---@return boolean
function UGCBackPackSystem.HasItemBySubType(PlayerPawn, ItemSubType) end

---获取背包中的武器
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return table @FBattleItemData
function UGCBackPackSystem.GetWeaponsInBackpack(PlayerPawn) end

---	获取背包中的武器配件
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return table @FBattleItemData
function UGCBackPackSystem.GetWeaponAttachmentsInBackpack(PlayerPawn) end

---获取当前防弹衣
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return FBattleItemData @物品数据
function UGCBackPackSystem.GetArmorInBackpack(PlayerPawn) end

---获取当前头盔
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return FBattleItemData @物品数据
function UGCBackPackSystem.GetHelmetInBackpack(PlayerPawn) end

---获取背包中的所有消耗品
---生效范围：服务器&客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return table @FBattleItemData
function UGCBackPackSystem.GetConsumablesInBackpack(PlayerPawn) end

---通过传入物品ID判断是否拥有某类物品，例：可传入AKM的物品ID，判断是否拥有枪械
---生效范围：服务器&客户端
---@param ItemID number @物品ID
---@return boolean
function UGCBackPackSystem.IsAttachItemType(ItemID) end

---传入物品ID判断是否为枪械
---生效范围：服务器&客户端
---@param ItemID number @物品ID
---@return boolean
function UGCBackPackSystem.IsGunItemType(ItemID) end

---获取PickupWrapperClass路径
---生效范围：服务器&客户端
---@param ItemID number @物品ID
---@return string
function UGCBackPackSystem.GetPickupWrapperClassPath(ItemID) end

---获取背包内所有枪械配件DefineID
---生效范围：服务端
---@param PlayerPawn PlayerPawn @玩家角色
---@return table @AttachmentDefineID列表 LuaTable<ItemDefineID>
function UGCBackPackSystem.GetAllAttachmentDefineIDInBackpack(PlayerPawn) end

---获取背包内所有未装备的枪械配件DefineID
---生效范围：服务端
---@param PlayerPawn PlayerPawn @玩家角色
---@return table @AttachmentDefineID列表 LuaTable<ItemDefineID>
function UGCBackPackSystem.GetAllUnEquipedAttachmentDefineIDInBackpack(PlayerPawn) end