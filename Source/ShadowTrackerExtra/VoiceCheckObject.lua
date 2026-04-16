---@meta

---@class EVoiceCheckResource
---@field VoiceCheckResource_None number
---@field VoiceCheckResource_Character number
---@field VoiceCheckResource_Parachute number
---@field VoiceCheckResource_Vehicle number
---@field VoiceCheckResource_Glass number
---@field VoiceCheckResource_Dynamic number
---@field VoiceCheckResource_Init number
EVoiceCheckResource = {}


---小地图声音图标类型枚举
---@class EVoiceVisualizationFlag
---@field CharacterMove number @脚步
---@field WeaponShot number @开火
---@field Explosion number @爆炸
---@field Vehicle number @载具
---@field Glass number @玻璃破碎
---@field ParachuteClose number @降落伞关闭
---@field Dynamic number @其它
---@field AllVoiceFlag number
EVoiceVisualizationFlag = {}


---@class FVoiceCheckObjectNode
FVoiceCheckObjectNode = {}


---@class FVoiceCheckSorttNode
FVoiceCheckSorttNode = {}


---@class FOnVoiceCheckShow : ULuaSingleDelegate
FOnVoiceCheckShow = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVoiceCheckShow:Bind(Callback, Obj) end

---执行委托
function FOnVoiceCheckShow:Execute() end


---@class UVoiceCheckObject: UObject
---@field bForceAcitveTrainingMode boolean
---@field maxCount number
---@field maxShowCount number
---@field maxShowAlpha number
---@field nowViewDis number
---@field MoveMaxShowDis number
---@field WeaponMaxShowDis number
---@field VehicleMaxShowDis number
---@field glassMaxShowDis number
---@field DynamicMaxShowDis number
---@field parachuteCloseMaxShowDis number
---@field imageList ULuaArrayHelper<FVoiceCheckObjectNode>
---@field EnhancedImageList ULuaArrayHelper<FVoiceCheckObjectNode>
---@field PositionToCenterX number
---@field PositionToCenterY number
---@field PivotX number
---@field PivotY number
---@field OnVoiceCheckShow FOnVoiceCheckShow
---@field WidgetOffectAngle number
local UVoiceCheckObject = {}

---@param DeltaTime number
function UVoiceCheckObject:VoiceTick(DeltaTime) end

function UVoiceCheckObject:DealMaxShowCount() end

---@param character ASTExtraBaseCharacter
---@param posVector FVector
---@param showTime number
function UVoiceCheckObject:AddCharacterMoveVoice(character, posVector, showTime) end

---@param weapon ASTExtraShootWeapon
---@param posVector FVector
---@param showTime number
---@param isSlience boolean
---@param isexplosion boolean
function UVoiceCheckObject:AddWeaponShotVoice(weapon, posVector, showTime, isSlience, isexplosion) end

---@param vehicle ASTExtraVehicleBase
---@param posVector FVector
---@param showTime number
function UVoiceCheckObject:AddVehicleVoice(vehicle, posVector, showTime) end

---@param posVector FVector
---@param showTime number
function UVoiceCheckObject:AddGlassVoice(posVector, showTime) end

---@param character ASTExtraBaseCharacter
---@param posVector FVector
---@param showTime number
function UVoiceCheckObject:AddParachuteClose(character, posVector, showTime) end

---@param InActor AActor
---@param posVector FVector
---@param showTime number
---@param InBrush FSlateBrush
---@param InIsWeapon boolean
---@param InVoiceUIAction boolean
function UVoiceCheckObject:AddDynamicIcon(InActor, posVector, showTime, InBrush, InIsWeapon, InVoiceUIAction) end

---@param InBrush FSlateBrush
---@return FSlateBrush
function UVoiceCheckObject:GetEnhanceIconRelativeImage(InBrush) end

---@param index number
---@return boolean
function UVoiceCheckObject:IsInShowParachuteClose(index) end

---@param InPanel UCanvasPanel
---@param InOuter UObject
function UVoiceCheckObject:CreateDynamicImage(InPanel, InOuter) end

---@param InPanel UCanvasPanel
---@param InOuter UObject
function UVoiceCheckObject:CreateEnhancedDynamicImage(InPanel, InOuter) end

---@return FVector2D
function UVoiceCheckObject:GetImagePivot() end

---@param Resource FVector2D
---@return FVector2D
function UVoiceCheckObject:GetImageSize(Resource) end

---@param Resource EVoiceCheckResource
---@return boolean
function UVoiceCheckObject:CheckIsDynamicOpenEnhance(Resource) end
