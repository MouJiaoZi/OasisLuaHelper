---@meta

---@class EAttrOperator
---@field Plus number
---@field Multiply number
---@field PlusMultiply number
---@field ExtraMultiply number
---@field ExtraPlus number
---@field Set number
---@field Max number
EAttrOperator = {}


---@class EAttrOperator_DoChange
---@field Plus number
---@field Multiply number
---@field Set number
EAttrOperator_DoChange = {}


---@class EAttrVariableType
---@field Uint8 number
---@field Int number
---@field Float number
---@field Resource number @资源(修改操作只有覆盖)
---@field Bool number
EAttrVariableType = {}


---@class EAttrClientShowMode
---@field All number @所有人可见
---@field Teammate number @仅队友可见
---@field OwnerSelf number @仅自己可见
EAttrClientShowMode = {}


---@class EAttrClientPlayerType
---@field NotValid number @无效值
---@field Self number @自己
---@field Teammate number @队友
---@field Others number @其他人
EAttrClientPlayerType = {}


---@class EAttrIntConvertType
---@field Floor number @整型修改后向下取整
---@field Round number @整型修改后四舍五入
---@field Ceil number @整型修改后向上取整
EAttrIntConvertType = {}


---@class FAttrAffected
---@field AttrName string
---@field PropertyName string
FAttrAffected = {}


---@class FCacheAffactTargetInfo
---@field AffectTarget AActor
---@field bIsResource boolean
---@field FinalAddValue number
---@field ResValue FSoftObjectPath
---@field bIsBool boolean
---@field bFinalBoolValue boolean
FCacheAffactTargetInfo = {}


---@class FAttrModifyItemResourceClientData
---@field bUseClientOverride boolean
---@field ClientShowMode EAttrClientShowMode
---@field OwnerPlayerKey string
---@field ModifierResourcePath FSoftObjectPath
FAttrModifyItemResourceClientData = {}


---@class FAttrModifyItemSimple
---@field GameAttribute FGameAttributeContainer
---@field ModifierOp EAttrOperator
---@field ModifierValue number
---@field bRepAttrModify boolean
FAttrModifyItemSimple = {}


---修改角色属性的具体配置 * @AI_Role: 这是一个配置如何修改角色的数值属性（如生命值、攻击力、移动速度）的地方。 * @AI_Usage: 1. 必须填充 AttrModifyItemName, AttrName, ModifierOp, ModifierValue 四个字段。 * @AI_Tags: 属性, 数值, 攻击力, 防御力, 速度, 血量, 魔法, 修改, 增加, 减少, 百分比, Attribute, Stat, Modify, Change, Increase, Decrease, Buff, Debuff, Health, Mana, Speed
---@class FAttrModifyItem
---@field AffectTargetsCachInfo ULuaArrayHelper<FCacheAffactTargetInfo>
---@field OptionalAttrFName string
---@field AttrModifyUniqueID number
---@field AttrModifyItemName string
---@field AttrName string
---@field bReplicated boolean
---@field ComponentClassName string
---@field ComponentTag string
---@field ModifierOp EAttrOperator
---@field bIsResource boolean
---@field bIsBool boolean
---@field ModifierValue number
---@field IntConvertType EAttrIntConvertType
---@field LifetimeCondition ELifetimeCondition
---@field InMinValue number
---@field InMaxValue number
---@field ModifierResValue FSoftObjectPath
---@field ModifierBoolValue boolean
---@field ModifierResValueClientModeOverride FAttrModifyItemResourceClientData
---@field ClientSimulate boolean
---@field IsEnable boolean
FAttrModifyItem = {}


---@class FAttrModifyItem_ID_CacheAffactTargetInfo
---@field AffactTargetInfo ULuaArrayHelper<FCacheAffactTargetInfo>
FAttrModifyItem_ID_CacheAffactTargetInfo = {}


---@class FAttrModifyItem_ID
---@field ModifyItemID number
---@field AttrModifyItem_ID_CacheAffactTargetInfo ULuaArrayHelper<FAttrModifyItem_ID_CacheAffactTargetInfo>
FAttrModifyItem_ID = {}


---@class FAttrKey
---@field AttrName string
FAttrKey = {}


---@class FAttrModifyItemArray
---@field AttrModifyItemArray ULuaArrayHelper<FAttrModifyItem>
FAttrModifyItemArray = {}
