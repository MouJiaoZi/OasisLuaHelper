---@meta

---@class FAsianCountryGopherInfo
---@field CountryID number
---@field TotalKilledGopherNum number
---@field ArrivedSortIndex number
FAsianCountryGopherInfo = {}


---@class FAsianGopherResultInfo
---@field KilledGopherNum number
---@field TotalGopherNum number
---@field CountryGopherInfoList ULuaArrayHelper<FAsianCountryGopherInfo>
FAsianGopherResultInfo = {}


---@class AAsianGopherManagerActor: AActor
local AAsianGopherManagerActor = {}

---@param CountryGopherInfoList ULuaArrayHelper<FAsianCountryGopherInfo>
function AAsianGopherManagerActor:SortCountryGopherInfoList(CountryGopherInfoList) end
