---@meta

---@class EBountyBuyingResultType
---@field Success number @购买成功
---@field Failed_NotEnoughBounty number @赏金数量不足
---@field Failed_ExceedBuyCountLimit number @已达购买上限
EBountyBuyingResultType = {}


---@class FBountyBoughtInfo
---@field ItemID number
---@field BoughtCount number
FBountyBoughtInfo = {}


---@class FBountyBuyingInfo
---@field ItemID number
---@field BuyingCount number
FBountyBuyingInfo = {}


---@class FBountyBuyingResultInfo
---@field ItemID number
---@field FinalBuyingCount number
---@field BuyingResult EBountyBuyingResultType
---@field BountyBeforeBuying number
---@field BountyAfterBuying number
FBountyBuyingResultInfo = {}
