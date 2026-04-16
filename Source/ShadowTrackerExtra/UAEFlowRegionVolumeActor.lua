---@meta

---@class ELavaType
---@field NOLAVA number
---@field LOWDAMAGELAVA number
---@field HIGHTDAMAGELAVA number
ELavaType = {}


---@class FFloatInnerArray
---@field Prograss ULuaArrayHelper<number>
FFloatInnerArray = {}


---@class FFloatOuterArray
---@field InnerArrays ULuaArrayHelper<FFloatInnerArray>
FFloatOuterArray = {}


---@class FOnLavaPrograssChanged : ULuaMulticastDelegate
FOnLavaPrograssChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurrentProgarss: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLavaPrograssChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurrentProgarss number
function FOnLavaPrograssChanged:Broadcast(CurrentProgarss) end


---@class AUAEFlowRegionVolumeActor: AActor
---@field SafeHeight number
---@field bFlowing boolean
---@field DamageRegion FFloatOuterArray
---@field FlowRegionActors ULuaArrayHelper<AStaticMeshActor>
---@field FlowRegionTextureResX number
---@field FlowRegionTextureResY number
---@field RunningTime number
---@field StartTime number
---@field StartPrograss number
---@field EndPrograss number
---@field Prograss number
---@field FlowRegionMinLoc FVector
---@field FlowRegionMaxLoc FVector
---@field FlowRegionBoxExtent number
---@field PrograssMatName string
---@field ELavaSurface EPhysicalSurface
---@field bClientNeedDamageRegion boolean
---@field OnLavaPrograssChangedEvent FOnLavaPrograssChanged
---@field CharacterLineCastLength number
---@field CharacterProneLineCastLength number
local AUAEFlowRegionVolumeActor = {}

---@param Loc FVector
---@return boolean
function AUAEFlowRegionVolumeActor:IsPosInLavaRegionMask(Loc) end

---@param Loc FVector
---@return ELavaType
function AUAEFlowRegionVolumeActor:GetLavaType(Loc) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function AUAEFlowRegionVolumeActor:IsCharacterInLava(Character) end

---@param Character ASTExtraBaseCharacter
---@return ELavaType
function AUAEFlowRegionVolumeActor:GetCharacterContactLavaType(Character) end

function AUAEFlowRegionVolumeActor:PostLoad() end

function AUAEFlowRegionVolumeActor:StartFlowing() end

function AUAEFlowRegionVolumeActor:OnRep_FlowRegionPrograss() end
