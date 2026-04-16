---@meta

---@class FTrainingDisplayItem
---@field ItemID number
---@field ItemValue number
FTrainingDisplayItem = {}


---@class FTrainingDisplayItem_Int32
---@field ItemID number
---@field ItemValue number
FTrainingDisplayItem_Int32 = {}


---@class FTrainingDisplayItem_Int64
---@field ItemID number
---@field ItemValue number
FTrainingDisplayItem_Int64 = {}


---@class FTrainingDisplayData
---@field ItemList ULuaArrayHelper<FTrainingDisplayItem>
---@field Int32ItemList ULuaArrayHelper<FTrainingDisplayItem_Int32>
---@field Int64ItemList ULuaArrayHelper<FTrainingDisplayItem_Int64>
FTrainingDisplayData = {}


---@class ASTTrainingModePlayerState: ASTExtraPlayerState
---@field OnTrainingDisplayDataChange FTrainingDisplayDataChange
---@field bAchieveAce boolean
---@field TrainingStatisticsData FTrainingStatisticsData
---@field TrainingDisplayData FTrainingDisplayData
---@field TotalSwingTime number
local ASTTrainingModePlayerState = {}

---@return FTrainingStatisticsData
function ASTTrainingModePlayerState:GetTrainingStatisticsData() end

function ASTTrainingModePlayerState:CollectTrainingStatisticsData() end

function ASTTrainingModePlayerState:CollectTrainingStatisticsDataLua() end

function ASTTrainingModePlayerState:OnRep_TrainingDisplayData() end

---@param ItemName string
---@param Count number
function ASTTrainingModePlayerState:AddStatisticsCount(ItemName, Count) end

---@param ItemName string
---@param ItemValue number
function ASTTrainingModePlayerState:SetStatisticsData(ItemName, ItemValue) end

---@param ItemName string
---@return number
function ASTTrainingModePlayerState:GetStatisticsData(ItemName) end

---@param ItemName string
---@param Count number
function ASTTrainingModePlayerState:AddStatisticsCount_Int32(ItemName, Count) end

---@param ItemName string
---@param ItemValue number
function ASTTrainingModePlayerState:SetStatisticsData_Int32(ItemName, ItemValue) end

---@param ItemName string
---@return number
function ASTTrainingModePlayerState:GetStatisticsData_Int32(ItemName) end

---@param ItemName string
---@param Count number
function ASTTrainingModePlayerState:AddStatisticsCount_Int64(ItemName, Count) end

---@param ItemName string
---@param ItemValue number
function ASTTrainingModePlayerState:SetStatisticsData_Int64(ItemName, ItemValue) end

---@param ItemName string
---@return number
function ASTTrainingModePlayerState:GetStatisticsData_Int64(ItemName) end

---@param ItemName string
---@return string
function ASTTrainingModePlayerState:GetStatisticsDataString(ItemName) end

---@param SwingPlayerKey string
---@param CharacterGender ECharacterGender
---@param Count number
function ASTTrainingModePlayerState:AddSwingCount(SwingPlayerKey, CharacterGender, Count) end

---@param InAdditionalTime number
function ASTTrainingModePlayerState:AddSwingTimeCount(InAdditionalTime) end

---@param ItemID number
---@return string
function ASTTrainingModePlayerState:GetDisplayDataString(ItemID) end

---@param ItemName string
---@return number
function ASTTrainingModePlayerState:GetItemID(ItemName) end
