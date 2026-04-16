---@meta

---@class UAISenseConfig_Hearing: UAISenseConfig
---@field Implementation UAISense_Hearing
---@field HearingRange number
---@field LoSHearingRange number
---@field bUseLoSHearing number @Warning: has significant runtime cost
---@field DetectionByAffiliation FAISenseAffiliationFilter
local UAISenseConfig_Hearing = {}
