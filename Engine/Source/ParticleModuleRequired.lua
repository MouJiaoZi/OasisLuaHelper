---@meta

---@class EParticleUVFlipMode
---@field None number @Flips UV on all particles.
---@field FlipUV number @Flips UV on all particles.
---@field FlipUOnly number @Flips U only on all particles.
---@field FlipVOnly number @Flips V only on all particles.
---@field RandomFlipUV number @Flips UV randomly for each particle on spawn.
---@field RandomFlipUOnly number @Flips U only randomly for each particle on spawn.
---@field RandomFlipVOnly number @Flips V only randomly for each particle on spawn.
---@field RandomFlipUVIndependent number @Flips U and V independently at random for each particle on spawn.
EParticleUVFlipMode = {}


---@class EEmitterRotationMode
---@field RotateAroundX number @Emitter Rotate Around X Axis
---@field RotateAroundY number @Emitter Rotate Around Y Axis
---@field RotateAroundZ number @Emitter Rotate Around X Axis
EEmitterRotationMode = {}


---@class EEmitterSelfRotationMode
---@field SelfRotateAroundX number @Emitter Rotate Around X Axis
---@field SelfRotateAroundY number @Emitter Rotate Around Y Axis
---@field SelfRotateAroundZ number @Emitter Rotate Around X Axis
EEmitterSelfRotationMode = {}


---@class EParticleSortMode
---@field PSORTMODE_None number
---@field PSORTMODE_ViewProjDepth number
---@field PSORTMODE_DistanceToView number
---@field PSORTMODE_Age_OldestFirst number
---@field PSORTMODE_Age_NewestFirst number
---@field PSORTMODE_MAX number
EParticleSortMode = {}


---@class EEmitterNormalsMode
---@field ENM_CameraFacing number @Default mode, normals are based on the camera facing geometry.
---@field ENM_Spherical number @Normals are generated from a sphere centered at NormalsSphereCenter.
---@field ENM_Cylindrical number @Normals are generated from a cylinder going through NormalsSphereCenter, in the direction NormalsCylinderDirection.
---@field ENM_MAX number
EEmitterNormalsMode = {}


---@class UParticleModuleRequired: UParticleModule
---@field EmitterOrigin FVector
---@field EmitterRotation FRotator
---@field EmitterOrbitOrigin FVector
---@field EmitterRotateAxis EEmitterRotationMode
---@field EmitterOrbitRadius number
---@field EmitterOrbitSpeed number
---@field EmitterInitialDegree number
---@field EmitterInitialRotation number
---@field EmitterSelfRotateAxis EEmitterSelfRotationMode
---@field EmitterSelfRotationSpeed number
---@field ScreenAlignment EParticleScreenAlignment @The screen alignment to utilize for the emitter at this LOD level. One of the following: PSA_FacingCameraPosition - Faces the camera position, but is not dependent on the camera rotation. This method produces more stable particles under camera rotation. PSA_Square			- Uniform scale (via SizeX) facing the camera PSA_Rectangle		- Non-uniform scale (via SizeX and SizeY) facing the camera PSA_Velocity		- Orient the particle towards both the camera and the direction the particle is moving. Non-uniform scaling is allowed. PSA_TypeSpecific	- Use the alignment method indicated in the type data module. PSA_FacingCameraDistanceBlend - Blends between PSA_FacingCameraPosition and PSA_Square over specified distance.
---@field MinFacingCameraBlendDistance number @The distance at which PSA_FacingCameraDistanceBlend	is fully PSA_Square
---@field MaxFacingCameraBlendDistance number @The distance at which PSA_FacingCameraDistanceBlend	is fully PSA_FacingCameraPosition
---@field bUseLocalSpace number @If true, update the emitter in local space
---@field bKillOnDeactivate number @If true, kill the emitter when the particle system is deactivated
---@field bKillOnCompleted number @If true, kill the emitter when it completes
---@field SortMode EParticleSortMode @The sorting mode to use for this emitter. PSORTMODE_None				- No sorting required. PSORTMODE_ViewProjDepth		- Sort by view projected depth of the particle. PSORTMODE_DistanceToView	- Sort by distance of particle to view in world space. PSORTMODE_Age_OldestFirst	- Sort by age, oldest drawn first. PSORTMODE_Age_NewestFirst	- Sort by age, newest drawn first.
---@field bConsiderOrbitOffsetWhenSort number
---@field bUseLegacyEmitterTime number @If true, the EmitterTime for the emitter will be calculated by modulating the SecondsSinceCreation by the EmitterDuration. As this can lead to issues w/ looping and variable duration, a new approach has been implemented. If false, this new approach is utilized, and the EmitterTime is simply incremented by DeltaTime each tick. When the emitter loops, it adjusts the EmitterTime by the current EmitterDuration resulting in proper looping/delay behavior.
---@field bRemoveHMDRoll number @If true, removes the HMD view roll (e.g. in VR)
---@field EmitterDuration number @How long, in seconds, the emitter will run before looping.
---@field EmitterDurationLow number @The low end of the emitter duration if using a range.
---@field bEmitterDurationUseRange number @If true, select the emitter duration from the range [EmitterDurationLow..EmitterDuration]
---@field bDurationRecalcEachLoop number @If true, recalculate the emitter duration on each loop.
---@field EmitterLoops number @The number of times to loop the emitter. 0 indicates loop continuously
---@field SpawnRate any @The rate at which to spawn particles
---@field ParticleBurstMethod EParticleBurstMethod @The method to utilize when burst-emitting particles
---@field BurstList ULuaArrayHelper<FParticleBurst> @The array of burst entries.
---@field EmitterDelay number @Indicates the time (in seconds) that this emitter should be delayed in the particle system.
---@field EmitterDelayLow number @The low end of the emitter delay if using a range.
---@field bEmitterDelayUseRange number @If true, select the emitter delay from the range [EmitterDelayLow..EmitterDelay]
---@field bDelayFirstLoopOnly number @If true, the emitter will be delayed only on the first loop.
---@field InterpolationMethod EParticleSubUVInterpMethod @The interpolation method to used for the SubUV image selection. One of the following: PSUVIM_None			- Do not apply SubUV modules to this emitter. PSUVIM_Linear		- Smoothly transition between sub-images in the given order, with no blending between the current and the next PSUVIM_Linear_Blend	- Smoothly transition between sub-images in the given order, blending between the current and the next PSUVIM_Random		- Pick the next image at random, with no blending between the current and the next PSUVIM_Random_Blend	- Pick the next image at random, blending between the current and the next
---@field SubImages_Horizontal number @The number of sub-images horizontally in the texture
---@field SubImages_Vertical number @The number of sub-images vertically in the texture
---@field bScaleUV number @Whether to scale the UV or not - ie, the model wasn't setup with sub uvs
---@field RandomImageTime number @The amount of time (particle-relative, 0.0 to 1.0) to 'lock' on a random sub image 0.0 = change every frame 1.0 = select a random image at spawn and hold for the life of the particle
---@field RandomImageChanges number @The number of times to change a random image over the life of the particle.
---@field bOverrideSystemMacroUV number @Override the system MacroUV settings
---@field MacroUVPosition FVector @Local space position that UVs generated with the ParticleMacroUV material node will be centered on.
---@field MacroUVRadius number @World space radius that UVs generated with the ParticleMacroUV material node will tile based on.
---@field bUseMaxDrawCount number @If true, use the MaxDrawCount to limit the number of particles rendered. NOTE: This does not limit the number spawned/updated, only what is drawn.
---@field MaxDrawCount number @The maximum number of particles to DRAW for this emitter. If set to 0, it will use whatever number are present.
---@field UVFlippingMode EParticleUVFlipMode @Controls UV Flipping for this emitter.
---@field BoundingMode ESubUVBoundingVertexCount @More bounding vertices results in reduced overdraw, but adds more triangle overhead. The eight vertex mode is best used when the SubUV texture has a lot of space to cut out that is not captured by the four vertex version, and when the particles using the texture will be few and large.
---@field OpacitySourceMode EOpacitySourceMode
---@field AlphaThreshold number @Alpha channel values larger than the threshold are considered occupied and will be contained in the bounding geometry. Raising this threshold slightly can reduce overdraw in particles using this animation asset.
---@field CutoutSubImagesX number
---@field CutoutSubImagesY number @The number of sub-images vertically in the texture
---@field bEnableCutOut boolean
---@field EmitterNormalsMode EEmitterNormalsMode @Normal generation mode for this emitter LOD.
---@field NormalsSphereCenter FVector @When EmitterNormalsMode is ENM_Spherical, particle normals are created to face away from NormalsSphereCenter. NormalsSphereCenter is in local space.
---@field NormalsCylinderDirection FVector @When EmitterNormalsMode is ENM_Cylindrical, particle normals are created to face away from the cylinder going through NormalsSphereCenter in the direction NormalsCylinderDirection. NormalsCylinderDirection is in local space.
---@field bOrbitModuleAffectsVelocityAlignment number @Ensures that movement generated from the orbit module is applied to velocity-aligned particles
---@field NamedMaterialOverrides ULuaArrayHelper<string> @Named material overrides for this emitter. Overrides this emitter's material(s) with those in the correspondingly named slot(s) of the owning system.
---@field UBOBoundingGeometry ULuaArrayHelper<FVector2D>
---@field bUseComputeRaster number
local UParticleModuleRequired = {}
