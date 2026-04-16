---@meta

---Defines how the GBuffer channels are getting manipulated by a decal material pass. Actual index is used to control shader parameters so don't change order.
---@class EDecalBlendMode
---@field DBM_Translucent number @Blend full material, updating the GBuffer, does not work for baked lighting.
---@field DBM_Stain number @Modulate BaseColor, blend rest, updating the GBuffer, does not work for baked lighting.
---@field DBM_Normal number @Only blend normal, updating the GBuffer, does not work for baked lighting.
---@field DBM_Emissive number @Additive emissive only.
---@field DBM_DBuffer_ColorNormalRoughness number @Non metal, put into DBuffer to work for baked lighting as well (becomes DBM_TranslucentNormal if normal is not hooked up).
---@field DBM_DBuffer_Color number @Non metal, put into DBuffer to work for baked lighting as well.
---@field DBM_DBuffer_ColorNormal number @Non metal, put into DBuffer to work for baked lighting as well (becomes DBM_DBuffer_Color if normal is not hooked up).
---@field DBM_DBuffer_ColorRoughness number @Non metal, put into DBuffer to work for baked lighting as well.
---@field DBM_DBuffer_Normal number @Non metal, put into DBuffer to work for baked lighting as well.
---@field DBM_DBuffer_NormalRoughness number @Non metal, put into DBuffer to work for baked lighting as well (becomes DBM_DBuffer_Roughness if normal is not hooked up).
---@field DBM_DBuffer_Roughness number @Non metal, put into DBuffer to work for baked lighting as well.
---@field DBM_Volumetric_DistanceFunction number @Output signed distance in Opacity depending on LightVector. Note: Can be costly, no shadow casting but receiving, no per pixel normal yet, no quality settings yet
---@field DBM_MAX number
EDecalBlendMode = {}


---Defines how the material reacts on DBuffer decals, later we can expose more variants between None and Default.
---@class EMaterialDecalResponse
---@field MDR_None number @Do not receive decals (Later we still can read the DBuffer channels to customize the effect, this frees up some interpolators).
---@field MDR_ColorNormalRoughness number @Receive Decals, applies all DBuffer channels, assumes the decal is non metal and mask the subsurface scattering.
---@field MDR_Color number @Receive Decals, applies color DBuffer channels, assumes the decal is non metal and mask the subsurface scattering.
---@field MDR_ColorNormal number @Receive Decals, applies all DBuffer channels, assumes the decal is non metal and mask the subsurface scattering.
---@field MDR_ColorRoughness number @Receive Decals, applies all DBuffer channels, assumes the decal is non metal and mask the subsurface scattering.
---@field MDR_Normal number @Receive Decals, applies all DBuffer channels, assumes the decal is non metal and mask the subsurface scattering.
---@field MDR_NormalRoughness number @Receive Decals, applies all DBuffer channels, assumes the decal is non metal and mask the subsurface scattering.
---@field MDR_Roughness number @Receive Decals, applies all DBuffer channels, assumes the decal is non metal and mask the subsurface scattering.
---@field MDR_MAX number
EMaterialDecalResponse = {}


---@class FMaterialInput
---@field OutputIndex number @Index into Expression's outputs array that this input is connected to.
---@field InputName string @Optional name of the input. Note that this is the only member which is not derived from the output currently connected.
---@field Mask number
---@field MaskR number
---@field MaskG number
---@field MaskB number
---@field MaskA number
---@field ExpressionName string @Material expression name that this input is connected to, or None if not connected. Used only in cooked builds
FMaterialInput = {}


---@class FColorMaterialInput
---@field UseConstant number
---@field Constant FColor
FColorMaterialInput = {}


---@class FScalarMaterialInput
---@field UseConstant number
---@field Constant number
FScalarMaterialInput = {}


---@class FVectorMaterialInput
---@field UseConstant number
---@field Constant FVector
FVectorMaterialInput = {}


---@class FVector4MaterialInput
---@field UseConstant number
---@field Constant FVector4
FVector4MaterialInput = {}


---@class FVector2MaterialInput
---@field UseConstant number
---@field ConstantX number
---@field ConstantY number
FVector2MaterialInput = {}


---Stores information about a function that this material references, used to know when the material needs to be recompiled.
---@class FMaterialFunctionInfo
---@field StateId FGuid @Id that the function had when this material was last compiled.
FMaterialFunctionInfo = {}


---Stores information about a parameter collection that this material references, used to know when the material needs to be recompiled.
---@class FMaterialParameterCollectionInfo
---@field StateId FGuid @Id that the collection had when this material was last compiled.
FMaterialParameterCollectionInfo = {}


---@class FParameterGroupData
---@field GroupName string
---@field GroupSortPriority number
FParameterGroupData = {}


---A Material is an asset which can be applied to a mesh to control the visual look of the scene. When light from the scene hits the surface, the shading model of the material is used to calculate how that light interacts with the surface. Warning: Creating new materials directly increases shader compile times!  Consider creating a Material Instance off of an existing material instead.
---@class UMaterial: UMaterialInterface
---@field DiffuseColor_DEPRECATED FColorMaterialInput
---@field SpecularColor_DEPRECATED FColorMaterialInput
---@field BaseColor FColorMaterialInput
---@field Metallic FScalarMaterialInput
---@field Specular FScalarMaterialInput
---@field Roughness FScalarMaterialInput
---@field Normal FVectorMaterialInput
---@field EmissiveColor FColorMaterialInput
---@field Opacity FScalarMaterialInput
---@field OpacityMask FScalarMaterialInput
---@field MaterialDomain EMaterialDomain @The domain that the material's attributes will be evaluated in. Certain pieces of material functionality are only valid in certain domains, for example vertex normal is only valid on a surface.
---@field BlendMode EBlendMode @Determines how the material's color is blended with background colors.
---@field DecalBlendMode EDecalBlendMode @Defines how the GBuffer chanels are getting manipulated by a decal material pass. (only with MaterialDomain == MD_DeferredDecal)
---@field MaterialDecalResponse EMaterialDecalResponse @Defines how the material reacts on DBuffer decals (Affects look, performance and texture/sample usage). Non DBuffer Decals can be disabled on the primitive (e.g. static mesh)
---@field ShadingModel EMaterialShadingModel @Determines how inputs are combined to create the material's final color.
---@field bIncludeShaderCode number
---@field OpacityMaskClipValue number @If BlendMode is BLEND_Masked, the surface is not rendered where OpacityMask < OpacityMaskClipValue.
---@field bTranslucentVelocityRendering number
---@field TranslucentVelocityClipValue number
---@field VertexOffsetAlongNormal number @pixels offset along vertex normal, for outline drawing.
---@field bCastDynamicShadowAsMasked number @If true, translucent materials will cast dynamic shadows according to their opacity. OpacityMaskClipValue is used as the threshold value.
---@field bCastDynamicShadowAsUnlit number
---@field OITBlendMode EOITBlendMode
---@field WorldPositionOffset FVectorMaterialInput @Adds to world position in the vertex shader.
---@field WorldDisplacement FVectorMaterialInput @Offset in world space applied to tessellated vertices.
---@field TessellationMultiplier FScalarMaterialInput @Multiplies the tessellation factors applied when a tessellation mode is set.
---@field SubsurfaceColor FColorMaterialInput @Inner material color, only used for ShadingModel=Subsurface
---@field ClearCoat FScalarMaterialInput
---@field ClearCoatRoughness FScalarMaterialInput
---@field AmbientOcclusion FScalarMaterialInput @output ambient occlusion to the GBuffer
---@field Refraction FScalarMaterialInput @output refraction index for translucent rendering Air:1.0 Water:1.333 Ice:1.3 Glass:~1.6 Diamond:2.42
---@field MaterialAttributes FMaterialAttributesInput
---@field PixelDepthOffset FScalarMaterialInput
---@field CustomizedVertexColor FVector4MaterialInput
---@field PlanarReflectionOffsetScale FVector4MaterialInput
---@field VertexDepthOffset FScalarMaterialInput
---@field PixelDepthOffsetNegative FScalarMaterialInput
---@field bEnableSeparateTranslucency number @Indicates that the material should be rendered in the SeparateTranslucency Pass (not affected by DOF, requires bAllowSeparateTranslucency to be set in .ini).
---@field bTranslucencyRenderAfterSS number @Indicates that the material should be rendered after post process and super sampling, dedicate for reticle materials
---@field bEnableMobileSeparateTranslucency number @Indicates that the translucent material should not be affected by bloom or DOF. (Note: Depth testing is not available)
---@field bEnableMobileDownsampleSeparateTranslucency number @Indicates that the translucent material can be rendered on an off-screen render target at a low resolution)
---@field bEnableResponsiveAA number @Indicates that the material should be rendered using responsive anti-aliasing. Improves sharpness of small moving particles such as sparks. Only use for small moving features because it will cause aliasing of the background.
---@field bScreenSpaceReflections number @SSR on translucency
---@field TwoSided number @Indicates that the material should be rendered without backface culling and the normal should be flipped for backfaces.
---@field DitheredLODTransition number @Whether meshes rendered with the material should support dithered LOD transitions.
---@field ForceOpaqueLevelPointIndirectLighting number
---@field DitherOpacityMask number @Dither opacity mask. When combined with Temporal AA this can be used as a form of limited translucency which supports all lighting features.
---@field bAllowNegativeEmissiveColor number @Whether the material should allow outputting negative emissive color values.  Only allowed on unlit materials.
---@field NumCustomizedUVs number @Number of customized UV inputs to display.  Unconnected customized UV inputs will just pass through the vertex UVs.
---@field TranslucencyLightingMode ETranslucencyLightingMode @Sets the lighting mode that will be used on this material if it is translucent.
---@field TranslucencyDirectionalLightingIntensity number @Useful for artificially increasing the influence of the normal on the lighting result for translucency. A value larger than 1 increases the influence of the normal, a value smaller than 1 makes the lighting more ambient.
---@field AllowTranslucentCustomDepthWrites number @Allows a translucenct material to be used with custom depth writing by compiling additional shaders.
---@field TranslucentShadowDensityScale number @Scale used to make translucent shadows more or less opaque than the material's actual opacity.
---@field TranslucentSelfShadowDensityScale number @Scale used to make translucent self-shadowing more or less opaque than the material's shadow on other objects. This is only used when the object is casting a volumetric translucent shadow.
---@field TranslucentSelfShadowSecondDensityScale number @Used to make a second self shadow gradient, to add interesting shading in the shadow of the first.
---@field TranslucentSelfShadowSecondOpacity number @Controls the strength of the second self shadow gradient.
---@field TranslucentBackscatteringExponent number @Controls how diffuse the material's backscattering is when using the MSM_Subsurface shading model. Larger exponents give a less diffuse look (smaller, brighter backscattering highlight). This is only used when the object is casting a volumetric translucent shadow from a directional light.
---@field TranslucentMultipleScatteringExtinction FLinearColor @Colored extinction factor used to approximate multiple scattering in dense volumes. This is only used when the object is casting a volumetric translucent shadow.
---@field TranslucentShadowStartOffset number @Local space distance to bias the translucent shadow.  Positive values move the shadow away from the light.
---@field bDisableDepthTest number @Whether to draw on top of opaque pixels even if behind them. This only has meaning for translucency.
---@field bGenerateSphericalParticleNormals number @Whether to generate spherical normals for particles that use this material.
---@field bTangentSpaceNormal number @Whether the material takes a tangent space normal or a world space normal as input. (TangentSpace requires extra instructions but is often more convenient).
---@field bUseEmissiveForDynamicAreaLighting number @If enabled, the material's emissive colour is injected into the LightPropagationVolume
---@field bBlockGI number @If enabled, the material's opacity defines how much GI is blocked when using the LightPropagationVolume feature
---@field bUseSimpleGI number @If enabled, the material uses simplified and inaccurate GI color for efficiency
---@field bUsedAsSpecialEngineMaterial number @This is a special usage flag that allows a material to be assignable to any primitive type. This is useful for materials used by code to implement certain viewmodes, for example the default material or lighting only material. The cost is that nearly 20x more shaders will be compiled for the material than the average material, which will greatly increase shader compile time and memory usage. This flag should only be enabled when absolutely necessary, and is purposefully not exposed to the UI to prevent abuse.
---@field bUsedWithSkeletalMesh number @Indicates that the material and its instances can be use with skeletal meshes. This will result in the shaders required to support skeletal meshes being compiled which will increase shader compile time and memory usage.
---@field bUsedWithGFur number @Indicates that the material and its instances can be use with GFur. This will result in the shaders required to support skeletal meshes being compiled which will increase shader compile time and memory usage.
---@field bUsedWithEditorCompositing number @Indicates that the material and its instances can be use with editor compositing This will result in the shaders required to support editor compositing being compiled which will increase shader compile time and memory usage.
---@field bUsedWithParticleSprites number @Indicates that the material and its instances can be use with particle sprites This will result in the shaders required to support particle sprites being compiled which will increase shader compile time and memory usage.
---@field bForceDisableSubUVCalculate number
---@field bUsedWithBeamTrails number @Indicates that the material and its instances can be use with beam trails This will result in the shaders required to support beam trails being compiled which will increase shader compile time and memory usage.
---@field bUsedWithMeshParticles number @Indicates that the material and its instances can be use with mesh particles This will result in the shaders required to support mesh particles being compiled which will increase shader compile time and memory usage.
---@field bUsedWithParticleBigWorldPrecision number
---@field bUsedWithNiagaraSprites number @Indicates that the material and its instances can be use with Niagara sprites (meshes and ribbons, respectively) This will result in the shaders required to support Niagara sprites being compiled which will increase shader compile time and memory usage.
---@field bUsedWithNiagaraRibbons number
---@field bUsedWithNiagaraMeshParticles number
---@field bUsedWithIBL number @Indicates that the material and its instances can be use with reflection cube This will result in the shaders required to support IBL being compiled which will increase shader compile time and memory usage.
---@field bUsedWithStaticLighting number @Indicates that the material and its instances can be use with static lighting This will result in the shaders required to support static lighting being compiled which will increase shader compile time and memory usage.
---@field bUsedWithMorphTargets number @Indicates that the material and its instances can be use with morph targets This will result in the shaders required to support morph targets being compiled which will increase shader compile time and memory usage.
---@field bUsedWithSplineMeshes number @Indicates that the material and its instances can be use with spline meshes This will result in the shaders required to support spline meshes being compiled which will increase shader compile time and memory usage.
---@field bUsedWithQuantizedMeshes number
---@field bUsedWithInstancedStaticMeshes number @Indicates that the material and its instances can be use with instanced static meshes This will result in the shaders required to support instanced static meshes being compiled which will increase shader compile time and memory usage.
---@field bUsedWithCustomInstancedStaticMeshes number @Indicates that the material and its instances can be use with custom instanced static meshes This will result in the shaders required to support instanced static meshes being compiled which will increase shader compile time and memory usage.
---@field bUsedWithInstancedWidget number
---@field bUsedWithInstancedPDSurface number
---@field bUsesDistortion number @Indicates that the material and its instances can be use with distortion This will result in the shaders required to support distortion being compiled which will increase shader compile time and memory usage.
---@field bUsedWithClothing number @Indicates that the material and its instances can be use with clothing This will result in the shaders required to support clothing being compiled which will increase shader compile time and memory usage.
---@field bUsedWithUI_DEPRECATED number @Indicates that the material and its instances can be use with Slate UI and UMG This will result in the shaders required to support UI materials being compiled which will increase shader compile time and memory usage.
---@field bUsedWithPPRBackgroud number
---@field bUsedWithSurfelInjectColor number @Indicates that the material and its instances can be use with SurfelGI inject color This will result in the shaders required to support SurfelGI inject color being compiled which will increase shader compile time and memory usage. HACK by huiwenjiang.
---@field bUsedWithTranslucentGI number @[SurfelGI - brainfkli ADD] Indicates that the material and its instances can be affected by GI in translucent blend mode.
---@field bUsedWithAtmosphericSkyBox number @Indicates that the material and its instances can be use with AtmosphericSkyBox This will result in the shaders required to support AtmosphericSkyBox being compiled which will increase shader compile time and memory usage.
---@field bAutomaticallySetUsageInEditor number @Whether to automatically set usage flags based on what the material is applied to in the editor. It can be useful to disable this on a base material with many instances, where adding another usage flag accidentally (eg bUsedWithSkeletalMeshes) can add a lot of shader permutations.
---@field bFullyRough number
---@field bUsedWithLandscapeDeform number @Indicates that the material and its instances can be use with Landscape Deform This will result in the shaders required to support LandscapeDeform being compiled which will increase shader compile time and memory usage.
---@field bUseFullPrecision number @Forces this material to use full (highp) precision in the pixel shader. This is slower than the default (mediump) but can be used to work around precision-related rendering errors. This setting has no effect on older mobile devices that do not support high precision. Note: Overrided by Lite Rough.
---@field bForceMaterialFloat number @Forces this material's temporary variables to use full precision float in the pixel shader. Keeps uniforms to use default precision. HACK by huiwen.
---@field bUseLightmapDirectionality number
---@field bUsedWithDynamicInstancing number @Indicates that the each material instance(of this material) can be dynamic instanced.
---@field bDynamicInstancingByUBO number
---@field bUsedWithRuntimeStaticBatchMultiParams number
---@field bNeedInstanceTransform number
---@field bUseSimplestShader number
---@field bBypassSystemMaterialQuality number
---@field bBypassMobilePointLight number
---@field bUseAsEarlyZ number
---@field bForceOutputLinearSpace number
---@field bUseAsDrawToRenderTarget number
---@field bRenderInTwoPass number
---@field bShadowUseTentFilter number
---@field bUseLightmap number
---@field bUseGPUVolumetricLightMap number
---@field bUsedGPUVLMVertexLighting number
---@field bUseIndirectLighting number
---@field bShadowOnEmissiveColor number
---@field bUsedGrassInstnaceColor number
---@field bUsedVertexPointLight number
---@field bUsedWithLandscapeShadow number
---@field bUseLandscapeMultiLayer number
---@field bUsedWithPhotonShadow number @#if WITH_PHOTON_SHADOW
---@field bUsedWithPhotonShadowPCSS number
---@field bUsedDynamicObjectVertexLighting number
---@field bUsedWithDynamicBatching number @Indicates that the material instance shared with same base mat can be batched
---@field bUsedWithDynamicMergeSkeletalMesh number
---@field bUsedWithDynamicInstancingES2Fixup number
---@field ShadowOverride EMaterialShadowOverride
---@field SimpleVertexNormalSituation ESimpleVertexNormalSituation
---@field bZForceFar number
---@field bWettable number
---@field bUseLegacySpecular number @use Phong instead of GGX
---@field bCorrectBlendingColorInHDR number
---@field bGPUSkinForceUseBonesUniformBuffer number
---@field bUseAsTranslucentEarlyZ number
---@field bLiteRough number
---@field bUseSimpleSkyLight number
---@field bACESOff number
---@field bEmissionOff number
---@field bInstL2WOnlyTranslation number
---@field bUseLiteFog number
---@field bUseChromaticAberration number
---@field bUsedWithFirstPerson number
---@field bUsedWithScope number
---@field bUsedWithMaterialDistFade number
---@field bUseHQForwardReflections number
---@field bUsePlanarForwardReflections number
---@field bApplyVertexFog number @When false, materials are not fogged in forward shading or mobile. Defaults to true.
---@field bNormalCurvatureToRoughness number
---@field D3D11TessellationMode EMaterialTessellationMode @The type of tessellation to apply to this object.  Note D3D11 required for anything except MTM_NoTessellation.
---@field bEnableCrackFreeDisplacement number @Prevents cracks in the surface of the mesh when using tessellation.
---@field bEnableAdaptiveTessellation number @Enables adaptive tessellation, which tries to maintain a uniform number of pixels per triangle.
---@field bUsedWithTexture2DArrayShaderVariant number @ENABLE_TEXTURE2D_ARRAY_SHADER_VARIANT Enable Dynamic MaterialInstance use Texture 2D Array shader variant with Texture 2D material expression graph
---@field bSkipRSH number @Skip Runtime Static Batching (RSH)
---@field bSkipDynamicSwitchOp number
---@field bEnableWPOShadow number
---@field MaxDisplacement number
---@field Wireframe number @Enables a wireframe view of the mesh the material is applied to.
---@field bOutputVelocityOnBasePass number @Skips outputting velocity during the base pass.
---@field bUnlitOutputAllMTOnBasePass number @Force unlit material output all MT during the base pass.
---@field ShadingRate EMaterialShadingRate @Select what shading rate to apply for platforms that have variable rate shading
---@field EditorX number
---@field EditorY number
---@field EditorPitch number
---@field EditorYaw number
---@field Expressions ULuaArrayHelper<UMaterialExpression> @Array of material expressions, excluding Comments.  Used by the material editor.
---@field MaterialFunctionInfos ULuaArrayHelper<FMaterialFunctionInfo> @Array of all functions this material depends on.
---@field MaterialParameterCollectionInfos ULuaArrayHelper<FMaterialParameterCollectionInfo> @Array of all parameter collections this material depends on.
---@field bCanMaskedBeAssumedOpaque number @true if this Material can be assumed Opaque when set to masked.
---@field bIsMasked_DEPRECATED number @true if Material is masked and uses custom opacity
---@field bIsPreviewMaterial number @true if Material is the preview material used in the material editor.
---@field bUseMaterialAttributes number @when true, the material attributes pin is used instead of the regular pins.
---@field bComputeFogPerPixel number @When true, translucent materials have fog computed for every pixel, which costs more but fixes artifacts due to low tessellation.
---@field bDisableDirectionalLighting number @When true, the directional lighting will be disabled
---@field bAllowDevelopmentShaderCompile number @If true the compilation environment will be changed to remove the global COMPILE_SHADERS_FOR_DEVELOPMENT flag.
---@field bIsMaterialEditorStatsMaterial number @true if this is a special material used for stats by the material editor.
---@field bUseLandscapeVertexAO number
---@field bAllowLandscapeVertexMorph number
---@field bUseLandscapeVertexHole number
---@field UsageFlagWarnings number @true if we have printed a warning about material usage for a given usage flag.
---@field BlendableLocation EBlendableLocation @Where the node is inserted in the (post processing) graph, only used if domain is PostProcess
---@field BlendablePriority number @If multiple nodes with the same  type are inserted at the same point, this defined order and if they get combined, only used if domain is PostProcess
---@field BlendableOutputAlpha boolean @If this is enabled, the blendable will output alpha
---@field RefractionMode ERefractionMode @Controls how the Refraction input is interpreted and how the refraction offset into scene color is computed for this material.
---@field RefractionDepthBias number @This is the refraction depth bias, larger values offset distortion to prevent closer objects from rendering into the distorted surface at acute viewing angles but increases the disconnect between surface and where the refraction starts.
---@field bOceanFoam number
---@field bEnableMeshClip number
---@field bEnableMeshDiscard number
---@field bEnableMeshArcPlaneClip number
---@field bIsEnhancedUImage number
---@field bSimplePointLight number @Enable this so the material will not calculate spot light shadows
---@field StateId FGuid @Guid that uniquely identifies this material. Any changes to the state of the material that do not appear separately in the shadermap DDC keys must cause this guid to be regenerated! For example, a modification to the Expressions array. Code changes that cause the guid to be regenerated on load should be avoided, as that requires a resave of the content to stop recompiling every load.
---@field ExpressionTextureReferences ULuaArrayHelper<UTexture> @Cached texture references from all expressions in the material (including nested functions). This is used to link uniform texture expressions which were stored in the DDC with the UTextures that they reference.
local UMaterial = {}
