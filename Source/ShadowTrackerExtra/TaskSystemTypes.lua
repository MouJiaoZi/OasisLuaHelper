---@meta

---@class ETaskType
---@field ETT_Common number
---@field ETT_PureCollection number
ETaskType = {}


---@class ETaskSubType
---@field ETST_Specific_area_kill_task number
---@field ETST_Dancing_around_box_task number
---@field ETST_Dancing_in_area_task number
---@field ETST_Dancing_in_position_task number
---@field ETST_TeamTogether_in_area_task number
---@field ETST_TeamDancing_in_area_task number
ETaskSubType = {}


---@class ETaskTriggerItemType
---@field ETTIT_DoEmote number
---@field ETTIT_DeathBox number
---@field ETTIT_PicnicMat number
---@field ETTIT_CommonArea number
ETaskTriggerItemType = {}


---@class ETaskTriggerAreaType
---@field ETTAT_City_Unknown number
---@field ETTAT_City_P number
---@field ETTAT_MilitaryBase number
---@field ETTAT_School number
---@field ETTAT_StMartin number
---@field ETTAT_City_Ebo number
---@field ETTAT_City_Lion number
---@field ETTAT_City_River number
---@field ETTAT_Quarry number
---@field ETTAT_Shami number
ETaskTriggerAreaType = {}


---@class ETaskEventType
---@field ETET_TakeDamage number
---@field ETET_KillPlayer number
---@field ETET_TouchDown number
---@field ETET_DoEmote number
---@field ETET_EnterArea number
---@field ETET_PickupItem number
---@field ETET_DropItem number
ETaskEventType = {}


---@class ETaskConditionType
---@field ETCT_Operator_And number
---@field ETCT_Operator_Or number
---@field ETCT_GameMode number
---@field ETCT_SpecifiedItemID number
---@field ETCT_SpecifiedArea number
---@field ETCT_SpecifiedPlace number
---@field ETCT_TouchDownLocType number
---@field ETCT_Duration number
---@field ETCT_TakeDamage number
---@field ETCT_KillPlayer number
---@field ETCT_CollectItem number
---@field ETCT_TeamAction number
ETaskConditionType = {}


---@class ETaskActionType
---@field ETAT_Common number
---@field ETAT_CollectItem number
---@field ETAT_RedoCollectItem number
---@field ETAT_KillPlayer number
ETaskActionType = {}


---@class ETaskTeamActionConditionType
---@field ETTACT_SameArea number
---@field ETTACT_SameEmote number
---@field ETTACT_SameEmoteInSameTime number
---@field ETTACT_SameEmoteInSameTimeAndArea number
ETaskTeamActionConditionType = {}
