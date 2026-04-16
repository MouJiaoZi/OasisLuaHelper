---@meta

----------------------------------------------------------------
-- 全局宏变量
---@type boolean
UE_BUILD_DEBUG = UE_BUILD_DEBUG == nil and nil or UE_BUILD_DEBUG
---@type boolean
UE_BUILD_DEVELOPMENT = UE_BUILD_DEVELOPMENT == nil and nil or UE_BUILD_DEVELOPMENT
---@type boolean
UE_BUILD_TEST = UE_BUILD_TEST == nil and nil or UE_BUILD_TEST
---@type boolean
UE_BUILD_SHIPPING = UE_BUILD_SHIPPING == nil and nil or UE_BUILD_SHIPPING
---@type boolean
UE_BUILD_SHIPPING_DEV = UE_BUILD_SHIPPING_DEV == nil and nil or UE_BUILD_SHIPPING_DEV
---@type boolean
UE_GAME = UE_GAME == nil and nil or UE_GAME
---@type boolean
UE_SERVER = UE_SERVER == nil and nil or UE_SERVER
---@type boolean
UE_SERVER = UE_SERVER == nil and nil or UE_SERVER
---@type boolean
UE_BUILD_SHIPPING_WITH_EDITOR = UE_BUILD_SHIPPING_WITH_EDITOR == nil and nil or UE_BUILD_SHIPPING_WITH_EDITOR
---@type boolean
UE_BUILD_DOCS = UE_BUILD_DOCS == nil and nil or UE_BUILD_DOCS
---@type boolean
UE_BUILD_DEVELOPMENT = UE_BUILD_DEVELOPMENT == nil and nil or UE_BUILD_DEVELOPMENT
---@type boolean
WITH_ENGINE = WITH_ENGINE == nil and nil or WITH_ENGINE
---@type boolean
PLATFORM_WINDOWS = PLATFORM_WINDOWS == nil and nil or PLATFORM_WINDOWS
---@type boolean
PLATFORM_ANDROID = PLATFORM_ANDROID == nil and nil or PLATFORM_ANDROID
---@type boolean
PLATFORM_OPENHARMONY = PLATFORM_OPENHARMONY == nil and nil or PLATFORM_OPENHARMONY
---@type boolean
PLATFORM_IOS = PLATFORM_IOS == nil and nil or PLATFORM_IOS
---@type boolean
PLATFORM_LINUX = PLATFORM_LINUX == nil and nil or PLATFORM_LINUX
---@type boolean
UE_EDITOR = UE_EDITOR == nil and nil or UE_EDITOR
---@type boolean
WITH_EDITOR = WITH_EDITOR == nil and nil or WITH_EDITOR;
---@type boolean
WITH_UGC_EDITOR = WITH_UGC_EDITOR == nil and nil or WITH_UGC_EDITOR;
---@type boolean
WITH_UGC_DEV = WITH_UGC_DEV == nil and nil or WITH_UGC_DEV;
---@type boolean
UGC_PIE_LINUX_SERVER = UGC_PIE_LINUX_SERVER == nil and nil or UGC_PIE_LINUX_SERVER;
---@type boolean
UGC_DEV_LOG = UGC_DEV_LOG == nil and nil or UGC_DEV_LOG;
---@type boolean
WITH_LOCAL_DS = WITH_LOCAL_DS == nil and nil or WITH_LOCAL_DS;
---@type boolean
IS_UGC_LOCAL_DS = IS_UGC_LOCAL_DS == nil and nil or IS_UGC_LOCAL_DS;
---@type boolean
IS_BIGWORLD_LOCAL_DS = IS_BIGWORLD_LOCAL_DS == nil and nil or IS_BIGWORLD_LOCAL_DS;
---@type boolean
WITH_ASAN = WITH_ASAN == nil and nil or WITH_ASAN;
---@type boolean
WIN_RELEASE = WIN_RELEASE == nil and nil or WIN_RELEASE;
---@type boolean
IS_EDITOR_LOCAL_DS = IS_EDITOR_LOCAL_DS == nil and nil or IS_EDITOR_LOCAL_DS;
----------------------------------------------------------------
-- 开关配置变量
---@type boolean
LuaErrorNotify = LuaErrorNotify == nil and nil or LuaErrorNotify

----------------------------------------------------------------
-- 全局变量
---@type UGPufferUpdater
GPufferUpdater = GPufferUpdater == nil and nil or GPufferUpdater
---@type UGCloudNotice
GCloudNotice = GCloudNotice == nil and nil or GCloudNotice

----------------------------------------------------------------
-- 导出生成的全局表(table)
---@type UScreenshotInterface
ScreenshotInterface = ScreenshotInterface == nil and nil or ScreenshotInterface
---@type UScriptHelperGameplay
ScriptHelperGameplay = ScriptHelperGameplay == nil and nil or ScriptHelperGameplay
---@type UScriptHelperClient
ScriptHelperClient = ScriptHelperClient == nil and nil or ScriptHelperClient
---@type ULuaStateWrapper
LuaStateWrapper = LuaStateWrapper == nil and nil or LuaStateWrapper
---@type UGameFrontendHUD
GameFrontendHUD = GameFrontendHUD == nil and nil or GameFrontendHUD
---@type UScriptHelperNetInterface
ScriptHelperNetInterface = ScriptHelperNetInterface == nil and nil or ScriptHelperNetInterface
---@type UNetInterface
NetInterface = NetInterface == nil and nil or NetInterface
---@type ALuaClassObj
LuaClassObj = LuaClassObj == nil and nil or LuaClassObj
---@type UUGCBlueprintFunctionLibrary
UGCBlueprintFunctionLibrary = UGCBlueprintFunctionLibrary == nil and nil or UGCBlueprintFunctionLibrary
---@type UGCExceptionBlueprintFunctionLibrary
UGCExceptionBlueprintFunctionLibrary = UGCExceptionBlueprintFunctionLibrary == nil and nil or UGCExceptionBlueprintFunctionLibrary
---@type fun(EventName:string,Actor:AActor,param:table,param:table,param:table)
LuaQuickFireEvent = LuaQuickFireEvent == nil and nil or LuaQuickFireEvent
LuaRegisterEvent = LuaRegisterEvent == nil and nil or LuaRegisterEvent;
LuaUnRegisterEvent = LuaUnRegisterEvent == nil and nil or LuaUnRegisterEvent;
---@type fun(EventName:string,Actor:AActor)
LuaAddFuncWhiteList = LuaAddFuncWhiteList == nil and nil or LuaAddFuncWhiteList
---@type fun(EventName:string,Actor:AActor)
LuaRemoveFuncWhiteList = LuaRemoveFuncWhiteList == nil and nil or LuaRemoveFuncWhiteList
---@type ObjectExtend
ObjectExtend = ObjectExtend == nil and nil or ObjectExtend
---@type UE
UE = UE == nil and nil or UE
---@type UUGCScriptHelper
UGCScriptHelper = UGCScriptHelper == nil and nil or UGCScriptHelper
---@type UOtherPayScriptHelper
OtherPayHelper = OtherPayHelper == nil and nil or OtherPayHelper
---@type UScriptGameplayStatics
ScriptGameplayStatics = ScriptGameplayStatics == nil and nil or ScriptGameplayStatics
---@type UKismetSystemLibrary
KismetSystemLibrary = KismetSystemLibrary == nil and nil or KismetSystemLibrary
---@type UKismetMathLibrary
KismetMathLibrary = KismetMathLibrary == nil and nil or KismetMathLibrary
---@type UKismetStringLibrary
KismetStringLibrary = KismetStringLibrary == nil and nil or KismetStringLibrary
---@type UKismetTextLibrary
UKismetTextLibrary = KismetTextLibrary == nil and nil or UKismetTextLibrary
---@type boolean
WITH_MSDKV5 = WITH_MSDKV5 == nil and nil or WITH_MSDKV5
---@type boolean
WITH_WINMSDKV5 = WITH_WINMSDKV5 == nil and nil or WITH_WINMSDKV5
---@type boolean
WIN_DEFERRED_OB = WIN_DEFERRED_OB == nil and nil or WIN_DEFERRED_OB

---@type number
EmmyCore_Enable = EmmyCore_Enable == nil and nil or EmmyCore_Enable