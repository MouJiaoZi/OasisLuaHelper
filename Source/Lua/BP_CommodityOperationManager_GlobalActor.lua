---@meta

---购买校验结果
---@class EPurchaseValidationResult
---@field Valid number @合规
---@field InvalidPrice number @传入购买价格不对
---@field NotSelling number @商品未在售卖状态
---@field ReachLimit number @商品购买次数达到限购上限
---@field NoPrivilege number @没有购买商品的绿洲特权
---@field InvalidCurrencyType number @ServerBuyProduct传入的商品为绿洲币商品
---@field Canceled number @取消购买
---@field Other number @其他错误
EPurchaseValidationResult = {}


---UGC商业化购买流程全局管理器
---@class CommodityOperationManager:AUGCGamePartGlobalActor
local CommodityOperationManager = {}

---购买结果
---@class BuyProductResult
---@field bSucceeded bool @是否购买成功
---@field PlayerKey int @购买玩家的Playerkey
---@field ProductID int @商品ID
---@field Num int @商品数量
---@field Validation EPurchaseValidationResult @校验结果
local BuyProductResult = {}

---生效范围：客户端&&服务端
---发起购买商品后触发
---@param Result BuyProductResult @购买结果
CommodityOperationManager.BuyProductResultDelegate = nil

---生效范围：客户端&&服务端
---限购商品购买次数发生变化时触发
CommodityOperationManager.LimitProductUpdateDelegate = nil

---生效范围：客户端&&服务端
---商品购买次数发生变化时触发
CommodityOperationManager.PurchasedProductListUpdateDelegate = nil

---发起商品购买
---生效范围：客户端
---@param ProductID number @商品的ID
---@param Num number @购买商品数量
---@param CurrentPrice number @发起购买时的价格，用于校验
---@param bCheckPrivilege boolean @是否检查玩家特权（即当前商品为仅特权可购买），默认false
---@return PromiseFuture @绿洲币购买UI界面的PromiseFuture实例，非绿洲币商品则返回nil
function CommodityOperationManager:BuyProduct(ProductID, CurrentPrice, Num, bCheckPrivilege) end

---发起自定义货币商品购买
---生效范围：服务端
---@param PlayerKey number @发起购买者的 PlayerKey
---@param ProductID number @商品的ID
---@param Num number @购买商品数量
---@param CurrentPrice number @发起购买时的价格，用于校验
---@param bCheckPrivilege boolean @是否检查玩家特权（即当前商品为仅特权可购买），默认false
function CommodityOperationManager:ServerBuyProduct(PlayerKey, ProductID, Num, CurrentPrice, bCheckPrivilege) end

---检查是否买得起指定数量的商品
---生效范围：客户端&&服务端
---@param ProductID number @商品的ID
---@param Num number @购买的商品数量
---@param PlayerController UUGCPlayerController @玩家控制器，客户端可以不传
---@return boolean
function CommodityOperationManager:CanAfford(ProductID, Num, PlayerController) end

---获得限购商品的购买次数
---生效范围：客户端&&服务端
---@param ProductID number @商品的ID
---@param PlayerController UUGCPlayerController @玩家控制器，客户端可以不传
---@return number
function CommodityOperationManager:GetLimitPurchasedTimes(ProductID, PlayerController) end

---获取所有已购买的限购商品
---生效范围：客户端&&服务端
---@param PlayerController UUGCPlayerController @玩家控制器，客户端可以不传
---@return table
function CommodityOperationManager:GetAllLimitPurchasedProducts(PlayerController) end

---获得商品的累计购买次数
---生效范围：客户端&&服务端
---@param ProductID number @商品的ID
---@param PlayerController UUGCPlayerController @玩家控制器，客户端可以不传
---@return number
function CommodityOperationManager:GetPurchasedTimes(ProductID, PlayerController) end

---获取所有已购买的商品
---生效范围：客户端&&服务端
---@param PlayerController UUGCPlayerController @玩家控制器，客户端可以不传
---@return table
function CommodityOperationManager:GetAllPurchasedProducts(PlayerController) end

---获取所有商品信息
---生效范围：客户端&&服务器
---@return table
function CommodityOperationManager:GetAllProductData() end

---获取指定商品信息
---生效范围：客户端&&服务端
---@param ProductID number @商品的ID
---@return table
function CommodityOperationManager:GetProductData(ProductID) end