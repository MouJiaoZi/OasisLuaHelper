---@meta

---@class ESLP_CrossHair_TraceType
---@field ESLP_CrossHair_Line number @射线
---@field ESLP_CrossHair_Sphere number @球形
---@field ESLP_CrossHair_Box number @方形
---@field ESLP_CrossHair_Capsule number @胶囊体
---@field ESLP_CrossHair_Fan number @扇形
ESLP_CrossHair_TraceType = {}


---@class UUTSkillLocationPicker_CrossHair: UUTSkillLocationPicker
---@field TraceType ESLP_CrossHair_TraceType
---@field TraceDistance number
---@field MinDistanceLimit number
---@field TraceChannel ECollisionChannel
---@field TraceExtern FVector
---@field WrongTargetsClass ULuaArrayHelper<UClass>
---@field PickedActorKey any
local UUTSkillLocationPicker_CrossHair = {}
