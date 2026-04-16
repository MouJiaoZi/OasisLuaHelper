---@meta

---V2道具系统接口库
---@class UGCItemSystemV2
UGCItemSystemV2 = {}

---获取物品 ItemHandle 配置
---可以通过它取得所有物品中配置的数据（只读）
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return UBattleItemHandleBase @配置数据
function UGCItemSystemV2.GetConfigItemHandle(ItemID) end

---获取物品实例数据管理器
---生效范围：服务器&客户端
---@return UUGCBattleItemInstanceDataManager @实例数据管理器
function UGCItemSystemV2.GetItemInstanceDataManager() end

---是否为绿洲物品（物资编辑器中自定义物品）
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return boolean @是否为绿洲物品
function UGCItemSystemV2.IsUGCItemV2(ItemID) end

---是否持久化
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return boolean @是否持久化
function UGCItemSystemV2.IsShouldPersist(ItemID) end

---是否为V2版本物编创建的物品
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return boolean @是否为V2版本物编创建的物品
function UGCItemSystemV2.IsObjEditorItemV2(ItemID) end

---返回物品名称
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return string @物品名称
function UGCItemSystemV2.GetItemNameV2(ItemID) end

---返回物品子类型SubType，(比如武器类别为1，M146子类型为101)
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return number @物品子类型
function UGCItemSystemV2.GetItemSubTypeV2(ItemID) end

---返回物品图标路径
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return FSoftObjectPath @物品图标路径
function UGCItemSystemV2.GetItemIconTextureV2(ItemID) end

---读取物品所在背包
---生效范围：服务器&客户端
---@param ItemHandle UBattleItemHandleBase @物品 Handle
---@return BackpackComponentV2 @V2背包组件
function UGCItemSystemV2.GetOwnBackpackComponent(ItemHandle) end

---返回物品图标路径(带玩家皮肤)
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@param PlayerController PlayerController @玩家 PlayerController
---@return FSoftObjectPath @物品图标路径
function UGCItemSystemV2.GetItemIconWithPlayerSkinV2(ItemID, PlayerController) end

---返回物品剪影图标路径
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return FSoftObjectPath @剪影图标路径
function UGCItemSystemV2.GetWhiteIconTextureV2(ItemID) end

---返回物品装备栏图标路径
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return FSoftObjectPath @装备栏图标路径
function UGCItemSystemV2.GetBigIconTextureV2(ItemID) end

---返回物品装备栏图标路径(带玩家皮肤)
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@param PlayerController PlayerController @玩家 PlayerController
---@return FSoftObjectPath @装备栏图标路径
function UGCItemSystemV2.GetBigIconTextureWithPlayerSkinV2(ItemID, PlayerController) end

---返回物品详情
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return string @物品详情
function UGCItemSystemV2.GetItemDetailV2(ItemID) end

---返回物品拾取描述
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return string @物品拾取描述
function UGCItemSystemV2.GetItemPickupDetailV2(ItemID) end

---是否含有某个 Tag
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@param Tag string @物品 Tag
---@return boolean @是否含有 Tag
function UGCItemSystemV2.ItemHasTagV2(ItemID, Tag) end

---返回物品所有 Tag
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return string[] @物品所有 Tag
function UGCItemSystemV2.GetItemTagsV2(ItemID) end

---返回物品是否可丢弃
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return boolean @物品是否可丢弃
function UGCItemSystemV2.ItemCanDropV2(ItemID) end

---返回物品是否可销毁
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return boolean @物品是否可销毁
function UGCItemSystemV2.ItemCanRemoveV2(ItemID) end

---返回物品在背包中是否可以使用
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return boolean @是否可以使用
function UGCItemSystemV2.IsCanUseV2(ItemID) end

---返回物品最大堆叠数量
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return number @物品最大堆叠数量
function UGCItemSystemV2.GetItemMaxNumberOfStacksV2(ItemID) end

---返回物品品质
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return number @物品品质
function UGCItemSystemV2.GetItemQualityV2(ItemID) end

---返回物品自定义类型
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return string @物品自定义类型
function UGCItemSystemV2.GetItemCustomizedTypeV2(ItemID) end

---获取物品自定义实例化数据
---生效范围：服务器&客户端
---@param ItemDefineID FItemDefineID @物品DefineID
---@return table @物品自定义实例化数据table
function UGCItemSystemV2.LoadItemCustomData(ItemDefineID) end

---保存物品自定义实例化数据
---注意: 实例数据也包含了和平内置数据，应避免直接覆盖，采用下述方式添加数据
---local CustomData = UGCItemSystemV2.LoadItemCustomData(ItemDefineID)
---CustomData.NewKey = NewTableData -- 填充新的数据
---UGCItemSystemV2.SaveItemCustomData(ItemDefineID, CustomData)
---生效范围：服务器
---@param ItemDefineID FItemDefineID @物品DefineID
---@param ItemCustomData table @物品自定义实例化数据table
---@return boolean @保存成功or失败
function UGCItemSystemV2.SaveItemCustomData(ItemDefineID, ItemCustomData) end

---通过物品ID创建一个全新的物品实例，并返回 DefineID
---生效范围：服务器
---@param ItemID number @物品 ID
---@return FItemDefineID @物品 DefineID
function UGCItemSystemV2.GetItemDefineID(ItemID) end

---设置物品通用 Reason
---用于操作物品时指定其中一些行为
---生效范围：服务器
---@param ItemDefineID FItemDefineID @物品 DefineID
---@param Reason number @Reason
function UGCItemSystemV2.SetItemCommonReason(ItemDefineID, Reason) end

---获取物品通用 Reason
---用于操作物品时指定其中一些行为
---生效范围：服务器
---@param ItemDefineID FItemDefineID @物品 DefineID
---@return number @Reason
function UGCItemSystemV2.GetItemCommonReason(ItemDefineID) end

---获取装备物品拥有的槽位列表
---生效范围：服务器&客户端
---@param ItemID number @物品ID
---@return string[] @物品拥有的所有槽位
function UGCItemSystemV2.GetEquipTargetSlots(ItemID) end

---获取槽位对应的展示名
---生效范围：服务器&客户端
---@param ItemID number @物品ID
---@param SlotName string @槽位名
---@return string @物品槽位的展示名称
function UGCItemSystemV2.GetDisplayNameBySlotName(ItemID, SlotName) end

---获取物品附加在哪个物品上
---生效范围：服务器&客户端
---@param ItemDefineID ItemDefineID @物品 DefineID
---@return bool, ItemDefineID, FName @物品是否正附加在另一个物品上,物品附加的目标物品 DefineID,物品附加的目标物品槽位
function UGCItemSystemV2.GetAttachTargetItem(ItemDefineID) end

---获取附加在物品上的子物品
---生效范围：服务器&客户端
---@param AttachParentID ItemDefineID @父物品的 DefineID
---@param AttachSlot string @父物品的槽位名
---@return ItemDefineID @附加在此槽位上的子物品 DefineID
function UGCItemSystemV2.GetAttachChildItem(AttachParentID, AttachSlot) end

---获取所有附加在物品上的子物品
---生效范围：服务器&客户端
---@param AttachParentID ItemDefineID @父物品的 DefineID
---@return ItemDefineID[] @所有子物品 DefineID, 数组元素与父物品槽位一一对应，可能存在无效的 ItemDefineID
function UGCItemSystemV2.GetAttachChildrenItem(AttachParentID) end

---获取子物品可以 Attach 到父物品的哪些 Slot(不考虑槽位启用状态)
---生效范围：服务器&客户端
---@param AttachParentID number @父物品的 ItemID
---@param AttachChildID number @子物品的 ItemID
---@return string[] @所有可装备槽位 FName
function UGCItemSystemV2.GetAttachAllowSlots(AttachParentID, AttachChildID) end

---获取子物品可以 Attach 到父物品`实例` 的哪些 Slot(考虑槽位启用状态)
---生效范围：服务器&客户端
---@param Player PlayerPawn @玩家
---@param AttachParentDefineID ItemDefineID @父物品的 ItemDefineID
---@param AttachChildID number @子物品的 ItemID
---@return string[] @所有可装备槽位 FName
function UGCItemSystemV2.GetAttachAllowSlotsByDefineID(Player, AttachParentDefineID, AttachChildID) end

---获取品质色的128*128纹理路径
---生效范围：服务器&客户端
---@param QualityRank number @品质等级
---@return string @品质纹理路径
function UGCItemSystemV2.GetQualityTexturePath(QualityRank) end

---返回物品背包简述
---生效范围：服务器&客户端
---@param ItemID number @物品 ID
---@return string @物品背包简写
function UGCItemSystemV2.GetBackpackSimpleNameV2(ItemID) end

---获取品质色的128*256纹理路径(废弃，结果同GetQualityTexturePath)
---生效范围：服务器&客户端
---@param QualityRank number @品质等级
---@return string @品质纹理路径string
function UGCItemSystemV2.GetBigQualityTexturePath(QualityRank) end

---获取品质色条纹理路径
---生效范围：服务器&客户端
---@param QualityRank number @品质等级
---@return string @品质纹理路径string
function UGCItemSystemV2.GetQualityBarTexturePath(QualityRank) end

---获取装备品质色条纹理路径
---生效范围：服务器&客户端
---@param QualityRank number @品质等级
---@return string @品质纹理路径string
function UGCItemSystemV2.GetEquipmentQualityTexturePath(QualityRank) end

---获取武器配件槽位可用配件的物品ID
---生效范围：服务器&客户端
---@param ItemID number @武器的物品ID
---@param SlotName string @武器槽位名
---@return number[] @可用的配件物品ID
function UGCItemSystemV2.GetWeaponSlotAttachItemIDs(ItemID, SlotName) end

---根据物品ID查询拾取物
---生效范围：服务器&客户端, 客户端仅查询本地生成的
---@param ItemID number @物品ID
---@return AUGCPickUpWrapperActor[] @拾取物列表
function UGCItemSystemV2.GetPickupWrapperListByItemID(ItemID) end

---根据自定义类型查询拾取物
---生效范围：服务器&客户端, 客户端仅查询本地生成的
---@param CustomType string @自定义类型
---@return AUGCPickUpWrapperActor[] @拾取物列表
function UGCItemSystemV2.GetPickupWrapperListByCustomType(CustomType) end

---根据物品Tag查询拾取物
---生效范围：服务器&客户端, 客户端仅查询本地生成的
---@param ItemTag string @物品Tag
---@return AUGCPickUpWrapperActor[] @拾取物列表
function UGCItemSystemV2.GetPickupWrapperListByItemTag(ItemTag) end

---启用物品槽位
---生效范围：服务器
---@param DefineID FItemDefineID @物品DefineID
---@param SlotName string @槽位名
function UGCItemSystemV2.SetEquipSlotEnable(DefineID, SlotName) end

---获取物品槽位是否启用
---生效范围：服务器&客户端
---@param DefineID FItemDefineID @物品DefineID
---@param SlotName string @槽位名
---@return boolean @是否启用
function UGCItemSystemV2.GetEquipSlotEnable(DefineID, SlotName) end

---指定掉落方案进行一次 Wrapper 掉落
---生效范围：服务器
---@param DropLocation FVector @掉落中心点
---@param ProduceID number @掉落方案ID
---@param ProduceGroupID number @掉落组方案ID(掉落组ID不为-1，掉落组ID生效。掉落组ID为-1,则掉落ID生效)
---@param EntityType EUGCGenerateItemEntityType @掉落物类型(可缺省，默认为Wrapper)
---@param RelatedPlayer PlayerPawn @当掉落物方向为面相玩家时必须，当掉落物类型为进入背包时必须，其他时候可以为nil
---@param DropActorClass UClass @掉落主体Actor类型，应继承自 UGCDropActor_BP, 可以为nil。通过创建自定义蓝图，配置掉落详细参数（掉落间隔、随机掉落范围等等）。
function UGCItemSystemV2.StartCustomizeDrop(DropLocation, ProduceID, ProduceGroupID, EntityType, RelatedPlayer, DropActorClass) end

---找到所有玩家角色附近的地面拾取物
---生效范围：客户端
---@param PlayerPawn PlayerPawn @玩家角色
---@return FUGCPickupItemData[] @地面拾取物信息
function UGCItemSystemV2.FindAllNearPickupItemData(PlayerPawn) end

---查找指定距离范围内的地面拾取物
---生效范围：服务器
---@param Center FVector @中心点坐标
---@param DistanceRange number @查找距离
---@return APickUpWrapperActor[] @地面拾取物Actor
function UGCItemSystemV2.FindPickupWrapperActorByRange(Center, DistanceRange) end

---玩家角色尝试拾取地面物品（不播拾取动作）
---生效范围：服务器
---@param PlayerPawn PlayerPawn @玩家角色
---@param TargetWrapper AActor @目标地面拾取物
---@param ItemDefineID FItemDefineID @要拾取的物品 DefineID，可缺省，默认取 TargetWrapper 中的物品实例数据
---@param PickupCount number @拾取数量，可缺省，默认拾取1个
---@param CheckPickupCondition boolean @是否检查拾取条件(距离、是否穿墙等)，可缺省，默认为 true
function UGCItemSystemV2.TryPickupWrapperItem(PlayerPawn, TargetWrapper, ItemDefineID, PickupCount, CheckPickupCondition) end

---创建地面拾取物
---生效范围：服务器
---@param Location FVector @创建位置
---@param ItemID number @拾取物物品ID
---@param Count number @拾取物物品数量
---@param CustomData table @物品自定义实例化数据(可缺省，默认无自定义实例化数据)
---@return APickUpWrapperActor @地面拾取物Actor
function UGCItemSystemV2.SpawnPickupWrapper(Location, ItemID, Count, CustomData) end

---获取拾取组件(客户端）
---生效范围：客户端
---@param Player PlayerPawn | PlayerController @玩家角色或者玩家控制器
---@return 
function UGCItemSystemV2.GetUGCPickUpListComponent(Player) end

---暂停指定物品的自动拾取
---生效范围：客户端
---@param ItemID number @物品 ID
---@param InPlayer PlayerPawn | PlayerController | nil @可选，玩家角色或控制器，不传则自动获取
function UGCItemSystemV2.PauseAutoPick(ItemID, InPlayer) end

---停止拾取（清空拾取列表，关闭数据更新）
---生效范围：客户端
---@param InPlayer PlayerPawn | PlayerController | nil @可选，玩家角色或控制器，不传则自动获取
function UGCItemSystemV2.StopPick(InPlayer) end

---开始拾取（开启数据更新）
---生效范围：客户端
---@param InPlayer PlayerPawn | PlayerController | nil @可选，玩家角色或控制器，不传则自动获取
function UGCItemSystemV2.StartPick(InPlayer) end