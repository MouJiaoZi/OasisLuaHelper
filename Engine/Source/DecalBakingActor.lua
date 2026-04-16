---@meta

---@class FDecalParameter
FDecalParameter = {}


---@class FDecalBakingRequest
---@field DecalParams ULuaArrayHelper<FDecalParameter>
FDecalBakingRequest = {}


---@class FOnDecalBakingFinished : ULuaSingleDelegate
FOnDecalBakingFinished = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FDecalBakingRequest) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDecalBakingFinished:Bind(Callback, Obj) end

---执行委托
---@param Param1 FDecalBakingRequest
function FOnDecalBakingFinished:Execute(Param1) end


---@class ADecalBakingActor: AActor
---@field MaxDecalProcessPerFame number
---@field DecalBakeRequests ULuaArrayHelper<FDecalBakingRequest>
local ADecalBakingActor = {}

---@param InRenderTarget UTextureRenderTarget2D
function ADecalBakingActor:OnBakingFinished(InRenderTarget) end

---@param RenderTarget UTextureRenderTarget2D
---@param StaticMesh UStaticMesh
---@param UVIndex number
---@param InDecalParams ULuaArrayHelper<FDecalParameter>
---@param bIntermidiate boolean
---@param CachedDecalIndex number
---@return number
function ADecalBakingActor:BakeDecalForStaticMesh(RenderTarget, StaticMesh, UVIndex, InDecalParams, bIntermidiate, CachedDecalIndex) end

---@param RenderTarget UTextureRenderTarget2D
---@param SkeletalMesh USkeletalMesh
---@param UVIndex number
---@param InDecalParams ULuaArrayHelper<FDecalParameter>
---@param bIntermidiate boolean
---@param CachedDecalIndex number
---@return number
function ADecalBakingActor:BakeDecalForSkeletalMesh(RenderTarget, SkeletalMesh, UVIndex, InDecalParams, bIntermidiate, CachedDecalIndex) end

---@param RenderTarget UTextureRenderTarget2D
---@return number
function ADecalBakingActor:FindDecalBakingRequestID(RenderTarget) end

---@param RequestID number
function ADecalBakingActor:CancelDecalBakingRequest(RequestID) end

---@param RenderTarget UTextureRenderTarget2D
function ADecalBakingActor:BeginDecalBakingCache(RenderTarget) end

---@param RenderTarget UTextureRenderTarget2D
function ADecalBakingActor:EndDecalBakingCache(RenderTarget) end

---@param InRenderTarget UTextureRenderTarget2D
function ADecalBakingActor:DoCompression(InRenderTarget) end
