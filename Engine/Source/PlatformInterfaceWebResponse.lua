---@meta

---@class UPlatformInterfaceWebResponse: UObject
---@field OriginalURL string @This holds the original requested URL
---@field ResponseCode number @Result code from the response (200=OK, 404=Not Found, etc)
---@field Tag number @A user-specified tag specified with the request
---@field StringResponse string @For string results, this is the response
---@field BinaryResponse ULuaArrayHelper<number> @For non-string results, this is the response
local UPlatformInterfaceWebResponse = {}

---@return number
function UPlatformInterfaceWebResponse:GetNumHeaders() end

---Retrieve the header and value for the given index of header/value pair
---@param HeaderIndex number
---@param Header string
---@param Value string
function UPlatformInterfaceWebResponse:GetHeader(HeaderIndex, Header, Value) end

---@param HeaderName string
---@return string
function UPlatformInterfaceWebResponse:GetHeaderValue(HeaderName) end
