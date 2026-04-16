---@meta

---商品类型
---@class EProductType
---@field Currency number @货币
---@field Item number @物品
EProductType = {}


---购买商品所需货币类型
---@class ECurrencyType
---@field OasisCoin number @绿洲币
---@field ActivityCoin number @启元币
---@field OtherCoin number @其他货币
ECurrencyType = {}


---商品售卖状态
---@class EAvailableForSale
---@field NotForSale number @不售卖
---@field PermanentSale number @永久售卖
---@field LimitedTimeSale number @限时售卖
EAvailableForSale = {}


---商品限购状态
---@class ELimitType
---@field NotLimited number @不限购
---@field DailyLimit number @每日限购
---@field WeeklyLimit number @每周限购
---@field PermanentLimit number @永久限购
ELimitType = {}


---商品售卖的商城种类
---@class EStoreId
---@field InGame number @战斗内
---@field Lobby number @玩法详情页
EStoreId = {}


---使用兑换码结果
---@class EUseRedemptionCodeResult
---@field Success number @成功
---@field Invalid number @无效
---@field AlreadyUsed number @已使用
---@field InvalidTime number @不在有效期
---@field LimitReached number @使用次数已满
---@field Busy number @兑换频繁
---@field Other number @其他问题
EUseRedemptionCodeResult = {}


---商业化库
---@class UGCCommoditySystem
UGCCommoditySystem = {}

---玩家购买商品后广播
---生效范围：服务器&客户端
UGCCommoditySystem.BuyUGCCommodityResultDelegate = nil

---补偿玩家商品后广播
---生效范围：服务器&客户端
---@param PlayerKey number @玩家PlayerKey
---@param UID number @玩家UID
---@param CommodityID number @物品ID
---@param Count number @物品数量
---@param ProductID number @商品ID
UGCCommoditySystem.CompensateUGCCommodityDelegate = nil

---补偿玩家商品后批量广播
---生效范围：服务器
---@param PlayerKey number @玩家PlayerKey
---@param UID number @玩家UID
---@param CommodityList table @补偿列表
UGCCommoditySystem.CompensateUGCCommodityBatchDelegate = nil

---玩家使用兑换码后逐个物品广播
---生效范围：服务器&客户端
---@param Result EUseRedemptionCodeResult @使用兑换码结果
---@param PlayerKey number @玩家PlayerKey
---@param UID number @玩家UID
---@param CommodityID number @物品ID
---@param Count number @物品数量
---@param ProductID number @商品ID
UGCCommoditySystem.UseRedemptionCodeResultDelegate = nil

---玩家使用兑换码后批量广播
---生效范围：服务器
---@param Result EUseRedemptionCodeResult @使用兑换码结果
---@param PlayerKey number @玩家PlayerKey
---@param UID number @玩家UID
---@param CommodityList table @兑换列表
UGCCommoditySystem.UseRedemptionCodeBatchResultDelegate = nil

---如果本次游戏对局的商品数据跟上一局结算时的物品数据有差异，那么服务端会在 PlayerController:Server_OnUGCCommodityPlayerDataReady() 之前广播此 Delegate
---可以在PlayerController:ReceiveBeginPlay() 里监听这个 Delegate
---生效范围：服务器
---@param PlayerKey number @玩家PlayerKey
---@param UID number @玩家UID
---@param CommodityID number @物品ID
---@param Count number @物品数量
UGCCommoditySystem.BuyUGCCommodityResultBetweenGamesDelegate = nil

---物品使用时广播
---生效范围：服务器&客户端
UGCCommoditySystem.UseUGCCommodityResultDelegate = nil

---在商品列表发生变化时广播
---生效范围：服务器&客户端
UGCCommoditySystem.UGCProductsChangedDelegate = nil

---在UGCCommoditySystem.GetAllPlayerUGCCommodityList() 和 UGCCommoditySystem.GetUGCCommodityList()返回值发生改变时广播
---生效范围：服务器&客户端
UGCCommoditySystem.UGCCommodityPlayerDataChangedDelegate = nil

---获取玩家货币(绿洲币/灰度币)
---生效范围：服务器&客户端
---@param PlayerKey number @玩家PlayerKey，服务器调用必传
---@return number @玩家货币
function UGCCommoditySystem.GetTicket(PlayerKey) end

---获取启元币
---生效范围：服务器&客户端
---@param PlayerKey number @玩家PlayerKey，服务器调用必传
---@return number @启元币
function UGCCommoditySystem.GetActiveCoin(PlayerKey) end

---购买绿洲商品
---生效范围：客户端
---@param BuyCommodityCMD string @购买协议，参考：EUGCCommodityCommandType
---@param Name string @物品的名称
---@param Icon string @物品图标
---@param Desc string @物品的描述
---@param Count number @单次购买的数量
---@param Cost number @单个物品的价格 Cost 必须传入 UGCCommoditySystem.GetSellingPriceAfterDiscount 的返回值
---@return PromiseFuture @二次确认弹窗界面对象实例的 PromiseFuture 对象
function UGCCommoditySystem.BuyUGCCommodity(BuyCommodityCMD, Name, Icon, Desc, Count, Cost) end

---购买绿洲特权商品
---生效范围：客户端
---@param BuyCommodityCMD string @购买协议，参考：EUGCCommodityCommandType
---@param Name string @物品的名称
---@param Icon string @物品图标
---@param Desc string @物品的描述
---@param Count number @单次购买的数量
---@param Cost number @单个物品的价格 Cost 必须传入 UGCCommoditySystem.GetSellingPriceAfterDiscount 的返回值
---@return PromiseFuture @二次确认弹窗界面对象实例的 PromiseFuture 对象
function UGCCommoditySystem.BuyUGCPrivilegeCommodity(BuyCommodityCMD, Name, Icon, Desc, Count, Cost) end

---购买绿洲商品
---生效范围：客户端
---@param ProductID number @商品 ID
---@param Icon string @物品图标
---@param Desc string @物品的描述
---@param Count number @单次购买的数量
---@return PromiseFuture @二次确认弹窗界面对象实例的 PromiseFuture 对象
function UGCCommoditySystem.BuyUGCCommodity2(ProductID, Icon, Desc, Count) end

---购买绿洲特权商品
---生效范围：客户端
---@param ProductID number @商品 ID
---@param Icon string @物品图标
---@param Desc string @物品的描述
---@param Count number @单次购买的数量
---@return PromiseFuture @二次确认弹窗界面对象实例的 PromiseFuture 对象
function UGCCommoditySystem.BuyUGCPrivilegeCommodity2(ProductID, Icon, Desc, Count) end

---使用绿洲物品
---生效范围：客户端
---@param UseCommodityCMD string @使用协议，参考：EUGCCommodityCommandType
---@param CommodityID number @物品ID
---@param Name string @物品的名称
---@param Icon string @物品图标
---@param Desc string @物品的描述
---@param Count number @单次消耗的数量
---@param bShowDialog boolean @是否二次确认
---@return PromiseFuture @bShowDialog 为 true 的情况下，返回二次确认弹窗界面对象实例的 PromiseFuture 对象
function UGCCommoditySystem.UseUGCCommodity(UseCommodityCMD, CommodityID, Name, Icon, Desc, Count, bShowDialog) end

---使用绿洲物品
---生效范围：服务器&客户端
---@param PlayerController PlayerController @玩家控制器 在 DS 端调用的话 PlayerController 必须传，客户端可传 nil，否则调用无效
---@param ObjectID number @物品ID
---@param Icon string @物品图标，填 nil 则使用 UGCObject.ItemSmallIcon（UGCObject 表格中的 ItemSmallIcon（小icon） 字段）
---@param Desc string @物品的描述，填 nil 则使用 UGCObject.ItemDesc（UGCObject 表格中的 ItemDesc（物品描述） 字段）
---@param Count number @单次消耗的数量
---@param bShowDialog boolean @bShowDialog 在 DS 忽略
---@return PromiseFuture @ bShowDialog 为 true 的情况下，返回二次确认弹窗界面对象实例的 PromiseFuture 对象(仅客户端调用)
function UGCCommoditySystem.UseUGCCommodity2(PlayerController, ObjectID, Icon, Desc, Count, bShowDialog) end

---注册商品购买协议
---生效范围：服务器
---@param BuyCommodityCMD string @购买协议，参考：EUGCCommodityCommandType
---@param ProductID number @商品的ID
---@param Count number @单次购买的数量
function UGCCommoditySystem.RegBuyCMD(BuyCommodityCMD, ProductID, Count) end

---注册使用物品协议
---生效范围：服务器
---@param UseCommodityCMD string @使用商品协议，参考：EUGCCommodityCommandType
---@param CommodityID number @物品的ID
---@param Count number @单次消耗的数量
function UGCCommoditySystem.RegUseCMD(UseCommodityCMD, CommodityID, Count) end

---使用兑换码
---PIE下调用该接口默认兑换成功，触发兑换结果 {ItemID=1001, Count=1, ProductID=900001}
---生效范围：服务器
---@param UID number @玩家的UID
---@param RedemptionCode string @兑换码
function UGCCommoditySystem.UseRedemptionCode(UID, RedemptionCode) end

---获取所有玩家的物品数据
---生效范围：服务器
---@return table @战斗服务器中所有玩家的物品数据列表
function UGCCommoditySystem.GetAllPlayerUGCCommodityList() end

---获取主控端物品数据
---生效范围：服务器&客户端
---@param PlayerKey number @玩家PlayerKey，服务器调用必传
---@return table @客户端所属玩家的物品数据列表
function UGCCommoditySystem.GetUGCCommodityList(PlayerKey) end

---获取所有玩家的绿洲商品限购数据
---生效范围：服务器
---@return table @战斗服务器中所有玩家的商品限购数据列表
function UGCCommoditySystem.GetAllPlayerUGCProductList() end

---获取所有玩家的绿洲商品限购数据
---生效范围：客户端
---@return table @主控端玩家的商品限购数据列表
function UGCCommoditySystem.GetUGCProductList() end

---清空所有已购买物品
---生效范围：客户端
function UGCCommoditySystem.ClearCommodity() end

---获取折扣后商品价格 
---生效范围：服务器&客户端
---@param BuyCommodityCMDOrProductID string|int @购买商品协议 或者 商品ID
---@return number @如果参数无效返回 nil 如果存在折扣返回折扣后的商品售价，否则返回商品表配置的售卖价格（SellingPrice）
function UGCCommoditySystem.GetSellingPriceAfterDiscount(BuyCommodityCMDOrProductID) end

---显示绿洲币充值界面
---生效范围：客户端
---@return PromiseFuture @绿洲币充值界面对象实例的PromiseFuture对象
function UGCCommoditySystem.ShowRechargeEntryUI() end