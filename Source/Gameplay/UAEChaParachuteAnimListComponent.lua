---@meta

---@class ECharacterParachuteAnimType
---@field ECharParachuteAnim_FreeFalling number @跳伞 - 自由落体
---@field ECharParachuteAnim_Parachute number @跳伞 - 操作
---@field ECharParachuteAnim_ParachuteEnter number @跳伞 - 进入
---@field ECharParachuteAnim_ParachuteLand number @跳伞 - 落地
---@field ECharParachuteAnim_FreeFallingTurn number @跳伞 - 自由落体转身
---@field ECharParachuteAnim_FreeFallingStart number @跳伞 - 自由落体开始
---@field ECharParachuteAnim_FreeFalling_Male number @跳伞 - 自由落体 - 男性
---@field ECharParachuteAnim_Parachute_Male number @跳伞 - 操作 - 男性
---@field ECharParachuteAnim_ParachuteEnter_Male number @跳伞 - 进入 - 男性
---@field ECharParachuteAnim_ParachuteLand_Male number @跳伞 - 落地 - 男性
---@field ECharParachuteAnim_FreeFallingTurn_Male number @跳伞 - 自由落体转身 - 男性
---@field ECharParachuteAnim_FreeFallingStart_Male number @跳伞 - 自由落体开始 - 男性
---@field ECharParachuteAnim_Max number
ECharacterParachuteAnimType = {}


---@class EParachuteMultiAnimSeatType
---@field EParachuteMultiAnimSeat_Driver number @双人跳伞-司机-P2
---@field EParachuteMultiAnimSeat_Passenger number @双人跳伞-乘客-P3
---@field EParachuteMultiAnim_Max number
EParachuteMultiAnimSeatType = {}


---@class ECharacterParachuteMultiAnimType
---@field ECharParachuteMultiAnim_Driver_FreeFalling number @双人跳伞-司机-自由落体
---@field ECharParachuteMultiAnim_Driver_FreeFallingTurn number @双人跳伞-司机-自由落体转身
---@field ECharParachuteMultiAnim_Driver_FreeFallingStart number @双人跳伞-司机-自由落体开始
---@field ECharParachuteMultiAnim_Passenger_FreeFalling number @双人跳伞-乘客-自由落体
---@field ECharParachuteMultiAnim_Passenger_FreeFallingTurn number @双人跳伞-乘客-自由落体转身
---@field ECharParachuteMultiAnim_Passenger_FreeFallingStart number @双人跳伞-乘客-自由落体开始
---@field ECharParachuteMultiAnim_Driver_FreeFalling_Male number @双人跳伞-司机-自由落体-男性
---@field ECharParachuteMultiAnim_Driver_FreeFallingTurn_Male number @双人跳伞-司机-自由落体转身-男性
---@field ECharParachuteMultiAnim_Driver_FreeFallingStart_Male number @双人跳伞-司机-自由落体开始-男性
---@field ECharParachuteMultiAnim_Passenger_FreeFalling_Male number @双人跳伞-乘客-自由落体-男性
---@field ECharParachuteMultiAnim_Passenger_FreeFallingTurn_Male number @双人跳伞-乘客-自由落体转身-男性
---@field ECharParachuteMultiAnim_Passenger_FreeFallingStart_Male number @双人跳伞-乘客-自由落体开始-男性
---@field ECharParachuteMultiAnim_Max number
ECharacterParachuteMultiAnimType = {}


---@class EParachuteQuadAnimSeatType
---@field EParachuteQuadAnimSeat_A number @四人跳伞-司机-P4
---@field EParachuteQuadAnimSeat_B number @四人跳伞-乘客-P5
---@field EParachuteQuadAnimSeat_C number @四人跳伞-乘客-P6
---@field EParachuteQuadAnimSeat_D number @四人跳伞-乘客-P7
---@field EParachuteQuadAnimSeat_Max number
EParachuteQuadAnimSeatType = {}


---@class ECharacterParachuteQuadAnimType
---@field ECharParachuteQuadAnim_FreeFalling number @四人跳伞-自由落体
---@field ECharParachuteQuadAnim_FreeFallingTurn number @四人跳伞-自由落体转身
---@field ECharParachuteQuadAnim_FreeFallingStart number @四人跳伞-自由落体开始
---@field ECharParachuteQuadAnim_Max number
ECharacterParachuteQuadAnimType = {}


---@class FCharParachuteAnimData
---@field ParachuteAnimType ECharacterParachuteAnimType
---@field ParachuteAnimSoftPtr UAnimationAsset
FCharParachuteAnimData = {}


---@class FCharParachuteMultiAnimData
---@field ParachuteAnimType ECharacterParachuteMultiAnimType
---@field ParachuteAnimSoftPtr UAnimationAsset
FCharParachuteMultiAnimData = {}


---@class FCharParachuteQuadAnimData
---@field SeatType EParachuteQuadAnimSeatType
---@field ParachuteAnimType ECharacterParachuteQuadAnimType
---@field ParachuteAnimSoftPtr UAnimationAsset
FCharParachuteQuadAnimData = {}


---@class FOnParachuteAnimLoadingCompletedDelegate : ULuaSingleDelegate
FOnParachuteAnimLoadingCompletedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnParachuteAnimLoadingCompletedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnParachuteAnimLoadingCompletedDelegate:Execute() end


---@class UUAEChaParachuteAnimListComponent: UUAECharAnimListCompBase
---@field CharParachuteAnimDataList ULuaArrayHelper<FCharParachuteAnimData>
---@field CharParachuteMultiAnimDataList ULuaArrayHelper<FCharParachuteMultiAnimData>
---@field CharParachuteQuadAnimDataList ULuaArrayHelper<FCharParachuteQuadAnimData>
local UUAEChaParachuteAnimListComponent = {}

function UUAEChaParachuteAnimListComponent:ReleaseParachuteAnimAssets() end

---@return string
function UUAEChaParachuteAnimListComponent:GetOwnerName() end

function UUAEChaParachuteAnimListComponent:OnAnimListAsyncLoadingFinished() end

function UUAEChaParachuteAnimListComponent:HandleAsyncLoadingFinishedEvent() end

---@param AnimLoaded string
function UUAEChaParachuteAnimListComponent:OnParachuteAnimAsyncLoadingFinished(AnimLoaded) end

---@return boolean
function UUAEChaParachuteAnimListComponent:HasAnimAsyncLoadingFinished() end

---@return boolean
function UUAEChaParachuteAnimListComponent:IsAnimAsyncLoading() end

---@param InAnimType ECharacterParachuteAnimType
---@param OwnerGender number
---@return ECharacterParachuteAnimType
function UUAEChaParachuteAnimListComponent:GetGenderCharacterParachuteAnimType(InAnimType, OwnerGender) end

---@param InAnimType ECharacterParachuteMultiAnimType
---@param OwnerGender number
---@return ECharacterParachuteMultiAnimType
function UUAEChaParachuteAnimListComponent:GetGenderCharacterParachuteMultiAnimType(InAnimType, OwnerGender) end
