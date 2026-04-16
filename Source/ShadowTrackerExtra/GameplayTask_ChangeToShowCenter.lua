---@meta

---@class EShowBindConfigData_BindingType
---@field Character number
---@field Mesh number
EShowBindConfigData_BindingType = {}


---@class FShowBindConfigData_Bindings
---@field Bindings ULuaArrayHelper<FMovieSceneObjectBindingID>
FShowBindConfigData_Bindings = {}


---@class FShowBindConfigData_BindingsConfig
---@field Bindings ULuaArrayHelper<FActivityLevelSequenceBinding>
FShowBindConfigData_BindingsConfig = {}


---@class FGameplayTask_ShowBindConfigData
---@field TransformSceneSelector FSceneComponentSelector
---@field AttachSceneSelector FSceneComponentSelector
---@field TypedBindings ULuaMapHelper<EShowBindConfigData_BindingType, FShowBindConfigData_BindingsConfig>
FGameplayTask_ShowBindConfigData = {}


---@class FGameplayTask_ShowBindConfig
---@field ShowBindConfigs ULuaArrayHelper<FGameplayTask_ShowBindConfigData>
FGameplayTask_ShowBindConfig = {}


---@class FGameplayTask_ShowBindData
---@field TypedBindings ULuaMapHelper<EShowBindConfigData_BindingType, FShowBindConfigData_Bindings>
---@field RelativeTransfrom FTransform
FGameplayTask_ShowBindData = {}


---@class UGameplayTask_ChangeToShowCenter: UUAEGameplayTask
---@field ShowBindDatas ULuaArrayHelper<FGameplayTask_ShowBindData>
local UGameplayTask_ChangeToShowCenter = {}

---@param Player ASTExtraCharacter
function UGameplayTask_ChangeToShowCenter:OnPlayerAttachedToThisActor(Player) end

---@param Player ASTExtraCharacter
function UGameplayTask_ChangeToShowCenter:OnPlayerDettachedToThisActor(Player) end

---@param PC APlayerController
function UGameplayTask_ChangeToShowCenter:OnOBIn(PC) end

---@param PC APlayerController
function UGameplayTask_ChangeToShowCenter:OnOBOut(PC) end
