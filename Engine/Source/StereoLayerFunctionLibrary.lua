---@meta

---StereoLayer Extensions Function Library
---@class UStereoLayerFunctionLibrary: UBlueprintFunctionLibrary
local UStereoLayerFunctionLibrary = {}

---Set splash screen attributes
---@param Texture UTexture
---@param Scale FVector2D
---@param Offset FVector2D
---@param bShowLoadingMovie boolean
---@param bShowOnSet boolean
function UStereoLayerFunctionLibrary:SetSplashScreen(Texture, Scale, Offset, bShowLoadingMovie, bShowOnSet) end

---Show the splash screen and override the VR display
function UStereoLayerFunctionLibrary:ShowSplashScreen() end

---Hide the splash screen and return to normal display.
function UStereoLayerFunctionLibrary:HideSplashScreen() end

---Enables/disables splash screen to be automatically shown when LoadMap is called.
---@param InAutoShowEnabled boolean
function UStereoLayerFunctionLibrary:EnableAutoLoadingSplashScreen(InAutoShowEnabled) end
