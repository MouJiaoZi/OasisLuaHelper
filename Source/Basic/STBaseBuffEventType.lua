---@meta

---@class USTBaseBuffEventType: UObject
---@field STBuffSystemComponent USTBaseBuffSystemComponent
local USTBaseBuffEventType = {}

---@param OutOwnerBuffInstance FBuffInstancedItem
---@return boolean
function USTBaseBuffEventType:GetBuffInstance(OutOwnerBuffInstance) end

---@param Context FSTBaseBuffEventContext
---@return boolean
function USTBaseBuffEventType:Equals(Context) end

---@param Context FSTBaseBuffEventContext
---@param SkillAction UUTSkillAction
---@return boolean
function USTBaseBuffEventType:DoAction(Context, SkillAction) end


---@class USTBaseBuffEventType_LayerMax: USTBaseBuffEventType
local USTBaseBuffEventType_LayerMax = {}


---@class USTBaseBuffEventType_LayerSpecific: USTBaseBuffEventType
---@field LayerCountParam number
local USTBaseBuffEventType_LayerSpecific = {}


---@class USTBaseBuffEventType_PreRemoved: USTBaseBuffEventType
local USTBaseBuffEventType_PreRemoved = {}


---@class USTBaseBuffEventType_Removed: USTBaseBuffEventType
local USTBaseBuffEventType_Removed = {}


---@class USTBaseBuffEventType_TakeBuffDamage: USTBaseBuffEventType
local USTBaseBuffEventType_TakeBuffDamage = {}


---@class USTBaseBuffEventType_OnAttach: USTBaseBuffEventType
local USTBaseBuffEventType_OnAttach = {}


---@class USTBaseBuffEventType_ConditionNotMatch: USTBaseBuffEventType
local USTBaseBuffEventType_ConditionNotMatch = {}


---@class USTBaseBuffEventType_WhileKilling: USTBaseBuffEventType
local USTBaseBuffEventType_WhileKilling = {}


---@class USTBaseBuffEventType_TakeDamage: USTBaseBuffEventType
local USTBaseBuffEventType_TakeDamage = {}
