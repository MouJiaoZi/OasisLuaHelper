---@meta

---@class UGroupSpotSceneComponent: UItemSceneComponent
---@field GroupType ESpotGroupType
---@field bNearItem boolean
---@field WorldCompositionID number
---@field LastGenerateItemTime number
---@field GenerateItemTimeCD number
---@field bPickup boolean
---@field bRepeatGenerateItem boolean
---@field bHasRegisterToGenenrator boolean
---@field bIsValidGroup boolean
local UGroupSpotSceneComponent = {}

---@param Valid boolean
function UGroupSpotSceneComponent:SetGroupValid(Valid) end

---@return number
function UGroupSpotSceneComponent:FindWorldCompositionID() end

function UGroupSpotSceneComponent:DoPickUp() end
