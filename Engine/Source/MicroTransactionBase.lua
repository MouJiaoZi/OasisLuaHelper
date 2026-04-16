---@meta

---All the types of delegate callbacks that a MicroTransaction subclass may receive from C++.
---@class EMicroTransactionDelegate
---@field MTD_PurchaseQueryComplete number @Data:None Desc:QueryForAvailablePurchases() is complete and AvailableProducts is ready for use.
---@field MTD_PurchaseComplete number @Data:Result code, and identifier of the product that completed. Type:Custom Desc:IntValue will have one of the enums in EMicroTransactionResult, and StringValue will have the Identifier from the PurchaseInfo that was bought with BeginPurchase If MTR_Failed was returned, then LastError and LastErrorSolution should be filled out with the most recent localized and possible resolutions.
---@field MTD_MAX number
EMicroTransactionDelegate = {}


---Result of a purchase.
---@class EMicroTransactionResult
---@field MTR_Succeeded number
---@field MTR_Failed number
---@field MTR_Canceled number
---@field MTR_RestoredFromServer number
---@field MTR_MAX number
EMicroTransactionResult = {}


---Purchase information structure
---@class FPurchaseInfo
---@field Identifier string @Unique identifier for the purchase
---@field DisplayName string @Name displayable to the user
---@field DisplayDescription string @Description displayable to the user
---@field DisplayPrice string @Price displayable to the user
FPurchaseInfo = {}


---@class UMicroTransactionBase: UPlatformInterfaceBase
---@field AvailableProducts ULuaArrayHelper<FPurchaseInfo> @The list of products available to purchase, filled out by the time a MTD_PurchaseQueryComplete is fired
---@field LastError string @In case of errors, this will describe the most recent error
---@field LastErrorSolution string @In case of errors, this will describe possible solutions (if there are any)
local UMicroTransactionBase = {}
