---@meta

---@class FOtherParams
---@field Text string
---@field TextColor FSlateColor
---@field TextFontInfo FSlateFontInfo
FOtherParams = {}


---@class FDrawTextToTextureRenderTarget2DParams
---@field Text string
---@field OtherParams FOtherParams
---@field WidgetName string
---@field DrawWidth number
---@field DrawHeight number
---@field bMaterialInstanceDynamicCreated boolean
---@field ParentMaterial UMaterialInterface
---@field TextureParameterName string
---@field Payload string
---@field bParamsCached boolean
FDrawTextToTextureRenderTarget2DParams = {}


---@class FTextureRenderTarget2DManagerWidgetInfo
---@field UserWidgetClass UUserWidget
---@field LoadedUserWidgetClass UUserWidget
---@field UpdateWidgetFunctionName string
FTextureRenderTarget2DManagerWidgetInfo = {}


---@class FOnWidgetToTextureRenderTarget2DManagerDrawn : ULuaSingleDelegate
FOnWidgetToTextureRenderTarget2DManagerDrawn = {}

---绑定回调函数
---@param Callback fun(Obj: any, Sender: UWidgetToTextureRenderTarget2DManager, Params: FDrawTextToTextureRenderTarget2DParams) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWidgetToTextureRenderTarget2DManagerDrawn:Bind(Callback, Obj) end

---执行委托
---@param Sender UWidgetToTextureRenderTarget2DManager
---@param Params FDrawTextToTextureRenderTarget2DParams
function FOnWidgetToTextureRenderTarget2DManagerDrawn:Execute(Sender, Params) end


---@class UWidgetToTextureRenderTarget2DManager: UObject
---@field NameToTextureRenderTarget2DManagerWidgetInfos ULuaMapHelper<string, FTextureRenderTarget2DManagerWidgetInfo>
---@field CachedParams ULuaArrayHelper<FDrawTextToTextureRenderTarget2DParams>
local UWidgetToTextureRenderTarget2DManager = {}

function UWidgetToTextureRenderTarget2DManager:ReleaseCachedParams() end

---@param Params FDrawTextToTextureRenderTarget2DParams
---@param OnWidgetToTextureRenderTarget2DManagerDrawn FOnWidgetToTextureRenderTarget2DManagerDrawn
function UWidgetToTextureRenderTarget2DManager:DrawTextToTextureRenderTarget2DAsync(Params, OnWidgetToTextureRenderTarget2DManagerDrawn) end

---@param Params FDrawTextToTextureRenderTarget2DParams
---@return boolean
function UWidgetToTextureRenderTarget2DManager:ReceivePreDrawTextToTextureRenderTarget2DAsync(Params) end

---@param Params FDrawTextToTextureRenderTarget2DParams
function UWidgetToTextureRenderTarget2DManager:ReceivePostDrawTextToTextureRenderTarget2DAsync(Params) end
