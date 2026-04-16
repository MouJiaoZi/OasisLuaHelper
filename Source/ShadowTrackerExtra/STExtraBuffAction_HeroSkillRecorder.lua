---@meta

---@class USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter: UObject
local USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter = {}

---@param STExtraBuffAction_HeroSkillRecorder USTExtraBuffAction_HeroSkillRecorder
---@return number
function USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter:GetRecordValue(STExtraBuffAction_HeroSkillRecorder) end

---@param STExtraBuffAction_HeroSkillRecorder USTExtraBuffAction_HeroSkillRecorder
---@return number
function USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter:GetRecordValue_Implementation(STExtraBuffAction_HeroSkillRecorder) end


---@class USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter_FromDefaultValue: USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter
---@field RecordValue number
local USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter_FromDefaultValue = {}

---@param STExtraBuffAction_HeroSkillRecorder USTExtraBuffAction_HeroSkillRecorder
---@return number
function USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter_FromDefaultValue:GetRecordValue_Implementation(STExtraBuffAction_HeroSkillRecorder) end


---@class USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter_FromBlackboradKeyProperty: USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter
---@field PropertyName string
---@field KeySelector FUAEBlackboardKeySelector
---@field KeyType EUAEBlackboardType
local USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter_FromBlackboradKeyProperty = {}

---@param STExtraBuffAction_HeroSkillRecorder USTExtraBuffAction_HeroSkillRecorder
---@return number
function USTExtraBuffAction_HeroSkillRecorder_RecordValueGetter_FromBlackboradKeyProperty:GetRecordValue_Implementation(STExtraBuffAction_HeroSkillRecorder) end


---@class USTExtraBuffAction_HeroSkillRecorder: USTExtraBuffAction
---@field HeroID number
---@field SkillID number
---@field RecordName string
local USTExtraBuffAction_HeroSkillRecorder = {}
