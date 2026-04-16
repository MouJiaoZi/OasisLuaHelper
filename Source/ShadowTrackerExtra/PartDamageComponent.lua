---@meta

---@class EBodyPartName
---@field BPart_None number @整体
---@field BPart_HeadPart number @头部
---@field BPart_LeftLowerArm number @左小臂
---@field BPart_LeftUpperArm number @左大臂
---@field BPart_LeftThigh number @左大腿
---@field BPart_LeftShank number @左小腿
---@field BPart_RightLowerArm number @右小臂
---@field BPart_RightUpperArm number @右大臂
---@field BPart_RightThigh number @右大腿
---@field BPart_RightShank number @右小腿
---@field Max number
EBodyPartName = {}


---@class FPartDamageAttrModitfyConfig
---@field ModifyAttr string
---@field Op EAttrOperator
---@field ModifyValue number
FPartDamageAttrModitfyConfig = {}


---@class FBloodSetting
---@field decalID number
---@field decalMaxID number
---@field decalRotateStartDir FRotator
---@field decalRotateEndDir FRotator
---@field decalOffsetMinDistance number
---@field decalOffsetMaxDistance number
---@field decalScale3D FVector
---@field decalShowDelay number
FBloodSetting = {}


---@class FPartDamagePair
---@field isDestroy boolean
---@field partName EBodyPartName
---@field brokenDamage number
---@field accumDamage number
---@field FXPath FSoftObjectPath
---@field FXSocket string
---@field newPose ESTEPoseState
---@field newAnimListTag string
---@field switchListTime number
---@field MaterialSlotName string
---@field attrModName string
---@field attrMods ULuaArrayHelper<FPartDamageAttrModitfyConfig>
---@field bloodSetting FBloodSetting
FPartDamagePair = {}


---@class UPartDamageComponent: UActorComponent, IObjectPoolInterface
---@field IsPartDamaging boolean
---@field PartDamagePairs ULuaArrayHelper<FPartDamagePair>
local UPartDamageComponent = {}

---@param activePart EBodyPartName
---@param active boolean
function UPartDamageComponent:ProcessDamagePart(activePart, active) end

---@param activePart EBodyPartName
function UPartDamageComponent:SwitchedToNewPose(activePart) end
