---@meta

---Enumerates ways to clear a scene.
---@class EClearSceneOptions
---@field NoClear number @Do not clear
---@field HardwareClear number @Hardware clear
---@field QuadAtMaxZ number @Clear at far plane
EClearSceneOptions = {}


---Enumerates available compositing sample counts.
---@class ECompositingSampleCount
---@field One number @No MSAA
---@field Two number @2x MSAA
---@field Four number @4x MSAA
---@field Eight number @8x MSAA
ECompositingSampleCount = {}


---Enumerates available mobile MSAA sample counts.
---@class EMobileMSAASampleCount
---@field One number @No MSAA
---@field Two number @2x MSAA
---@field Four number @4x MSAA
---@field Eight number @8x MSAA
EMobileMSAASampleCount = {}


---Enumerates available options for custom depth.
---@class ECustomDepthStencil
---@field Disabled number
---@field Enabled number
---@field EnabledOnDemand number
---@field EnabledWithStencil number
ECustomDepthStencil = {}


---Enumerates available options for early Z-passes.
---@class EEarlyZPass
---@field None number @None
---@field OpaqueOnly number @Opaque meshes only
---@field OpaqueAndMasked number @Opaque and masked meshes
---@field Auto number @Decide automatically
EEarlyZPass = {}


---used by FPostProcessSettings AutoExposure
---@class EAutoExposureMethodUI
---@field AEM_Histogram number @Not supported on mobile, requires compute shader to construct 64 bin histogram
---@field AEM_Basic number @Not supported on mobile, faster method that computes single value by downsampling
---@field AEM_MAX number
EAutoExposureMethodUI = {}


---used by GetDefaultBackBufferPixelFormat
---@class EDefaultBackBufferPixelFormat
---@field DBBPF_B8G8R8A8 number @8bit RGBA
---@field DBBPF_A16B16G16R16_DEPRECATED number @DEPRECATED - 16bit RGBA
---@field DBBPF_FloatRGB_DEPRECATED number @DEPRECATED - Float RGB
---@field DBBPF_FloatRGBA number @Float RGBA
---@field DBBPF_A2B10G10R10 number @10bit RGB, 2bit Alpha
---@field DBBPF_MAX number
EDefaultBackBufferPixelFormat = {}


---Rendering settings.
---@class URendererSettings: UDeveloperSettings
---@field bMobileHDR number
---@field bMobileDisableVertexFog number
---@field bMobileVTFLandscape number
---@field bMobileLandscapeVertexHole number
---@field bIdeaDecalOptimizedIO number
---@field MaxMobileCascades number
---@field MobileMSAASampleCount EMobileMSAASampleCount
---@field CharacterDiffuseScale number
---@field CharacterDiffuseOffset number
---@field CharacterDiffusePower number
---@field CharacterMinShadowFactor number
---@field StaticMeshDiffuseScale number
---@field StaticMeshDiffuseOffset number
---@field StaticMeshDiffusePower number
---@field StaticMeshMinShadowFactor number
---@field bMobileAllowROCCook number
---@field bDiscardUnusedQualityLevels number
---@field GlobalStaticMeshCullingScreenSize number
---@field bOcclusionCulling number
---@field MinScreenRadiusForLights number
---@field MinScreenRadiusForEarlyZPass number
---@field MinScreenRadiusForCSMdepth number
---@field bPrecomputedVisibilityWarning number
---@field bTextureStreaming number
---@field bUseDXT5NormalMaps number
---@field bClearCoatEnableSecondNormal number
---@field ReflectionCaptureResolution number
---@field ReflectionEnvironmentLightmapMixBasedOnRoughness number
---@field bForwardShading number
---@field bVertexFoggingForOpaque number
---@field bAllowStaticLighting number
---@field bUseNormalMapsForStaticLighting number
---@field bGenerateMeshDistanceFields number
---@field bEightBitMeshDistanceFields number
---@field bGenerateLandscapeGIData number
---@field bCompressMeshDistanceFields number
---@field TessellationAdaptivePixelsPerTriangle number
---@field bSeparateTranslucency number
---@field TranslucentSortPolicy ETranslucentSortPolicy
---@field TranslucentSortAxis FVector
---@field CustomDepthStencil ECustomDepthStencil
---@field bCustomDepthTaaJitter number
---@field bEnableAlphaChannelInPostProcessing number
---@field bDefaultFeatureBloom number
---@field bDefaultFeatureAmbientOcclusion number
---@field bDefaultFeatureAmbientOcclusionStaticFraction number
---@field bDefaultFeatureAutoExposure number
---@field DefaultFeatureAutoExposure EAutoExposureMethodUI
---@field bDefaultFeatureMotionBlur number
---@field bDefaultFeatureLensFlare number
---@field DefaultFeatureAntiAliasing EAntiAliasingMethod
---@field bRenderUnbuiltPreviewShadowsInGame number
---@field bStencilForLODDither number
---@field EarlyZPass EEarlyZPass
---@field bEarlyZPassMovable number
---@field bEarlyZPassOnlyMaterialMasking number
---@field bDBuffer number
---@field ClearSceneMethod EClearSceneOptions
---@field bBasePassOutputsVelocity number
---@field bSelectiveBasePassOutputs number
---@field bDefaultParticleCutouts number
---@field bGlobalClipPlane number
---@field GBufferFormat EGBufferFormat
---@field bUseGPUMorphTargets number
---@field bNvidiaAftermathEnabled number
---@field bInstancedStereo number
---@field bMultiView number
---@field bMobileMultiView number
---@field bMobileMultiViewDirect number
---@field bMonoscopicFarField number
---@field bDebugCanvasInLayer number
---@field WireframeCullThreshold number
---@field bSupportStationarySkylight number @"Stationary skylight requires permutations of the basepass shaders.  Disabling will reduce the number of shader permutations required per material. Changing this setting requires restarting the editor."
---@field bSupportLowQualityLightmaps number @"Low quality lightmap requires permutations of the lightmap rendering shaders.  Disabling will reduce the number of shader permutations required per material. Note that the mobile renderer requires low quality lightmaps, so disabling this setting is not recommended for mobile titles using static lighting. Changing this setting requires restarting the editor."
---@field bSupportPointLightWholeSceneShadows number @PointLight WholeSceneShadows requires many vertex and geometry shader permutations for cubemap rendering. Disabling will reduce the number of shader permutations required per material. Changing this setting requires restarting the editor."
---@field bSupportAtmosphericFog number @"Atmospheric fog requires permutations of the basepass shaders.  Disabling will reduce the number of shader permutations required per material. Changing this setting requires restarting the editor."
---@field bSupportSkinCacheShaders number @"Skincache allows a compute shader to skin once each vertex, save those results into a new buffer and reuse those calculations when later running the depth, base and velocity passes. This also allows opting into the 'recompute tangents' for skinned mesh instance feature. Disabling will reduce the number of shader permutations required per material. Changing this setting requires restarting the editor."
---@field bMobileEnableStaticAndCSMShadowReceivers number
---@field bMobileAllowDistanceFieldShadows number
---@field bMobileAllowMovableDirectionalLights number
---@field MobileNumDynamicPointLights number
---@field bMobileAllowMovableSpotlights number
---@field SkinCacheSceneMemoryLimitInMB number
---@field bGPUSkinLimit2BoneInfluences number
---@field bSupportDepthOnlyIndexBuffers number
---@field bSupportReversedIndexBuffers number
local URendererSettings = {}


---@class URendererOverrideSettings: UDeveloperSettings
---@field bSupportAllShaderPermutations number @"Enabling will locally override all ShaderPermutationReduction settings from the Renderer section to be enabled.  Saved to local user config only.."
---@field bForceRecomputeTangents number
local URendererOverrideSettings = {}
