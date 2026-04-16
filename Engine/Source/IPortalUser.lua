---@meta

---The available options for the different levels of caches available when requesting information about user entitlements. Disk cache level includes Memory cache level.
---@class EEntitlementCacheLevelRequest
---@field Memory number @Allow reference to entitlements cached in-memory for this session of the portal. These are periodically updated. This is the recommended level for entitlement checking.
---@field Disk number @Allow reference to entitlements cached on disk between sessions of the portal. This cache is updated regularly while a user is signed-in.  If no user is signed-in then disk cached entitlements are still used from the last signed-in user's session.
EEntitlementCacheLevelRequest = {}


---Used to delineate which cache an entitlement check result was retrieved from.
---@class EEntitlementCacheLevelRetrieved
---@field None number
---@field Memory number @Allow reference to entitlements cached in-memory for this session of the portal. These are periodically updated. This is the recommended level for entitlement checking.
---@field Disk number @Allow reference to entitlements cached on disk between sessions of the portal. This cache is updated regularly while a user is signed-in.  If no user is signed-in then disk cached entitlements are still used from the last signed-in user's session.
EEntitlementCacheLevelRetrieved = {}


---The basic data for the last or currently signed-in user.
---@class FPortalUserDetails
---@field DisplayName string @The users epic games account display name
---@field Email string @The users epic games account email address
---@field RealName string @The users real name attached to their epic games account
---@field IsSignedIn boolean @Whether this user is currently signed-in to the portal
FPortalUserDetails = {}


---@class FPortalUserIsEntitledToItemResult
---@field ItemId string @The item id that was checked for an active entitlement
---@field IsEntitled boolean @Whether this user is entitled to the item id
---@field RetrievedFromCacheLevel EEntitlementCacheLevelRetrieved @How fresh this entitlement information is
FPortalUserIsEntitledToItemResult = {}
