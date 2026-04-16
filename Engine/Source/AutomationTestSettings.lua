---@meta

---Structure for defining an external tool
---@class FExternalToolDefinition
---@field ToolName string
---@field ExecutablePath FFilePath
---@field CommandLineOptions string
---@field WorkingDirectory FDirectoryPath
---@field ScriptExtension string
---@field ScriptDirectory FDirectoryPath
FExternalToolDefinition = {}


---Holds UProperty names and values to customize factory settings
---@class FImportFactorySettingValues
---@field SettingName string
---@field Value string
FImportFactorySettingValues = {}


---Holds settings for the asset import / export automation test
---@class FEditorImportExportTestDefinition
---@field ImportFilePath FFilePath
---@field ExportFileExtension string
---@field bSkipExport boolean
---@field FactorySettings ULuaArrayHelper<FImportFactorySettingValues>
FEditorImportExportTestDefinition = {}


---Holds settings for the asset import workflow test
---@class FEditorImportWorkflowDefinition
---@field ImportFilePath FFilePath
---@field FactorySettings ULuaArrayHelper<FImportFactorySettingValues>
FEditorImportWorkflowDefinition = {}


---Holds settings for the import workflow stage of the build promotion test
---@class FBuildPromotionImportWorkflowSettings
---@field Diffuse FEditorImportWorkflowDefinition
---@field Normal FEditorImportWorkflowDefinition
---@field StaticMesh FEditorImportWorkflowDefinition
---@field ReimportStaticMesh FEditorImportWorkflowDefinition
---@field BlendShapeMesh FEditorImportWorkflowDefinition
---@field MorphMesh FEditorImportWorkflowDefinition
---@field SkeletalMesh FEditorImportWorkflowDefinition
---@field Animation FEditorImportWorkflowDefinition
---@field Sound FEditorImportWorkflowDefinition
---@field SurroundSound FEditorImportWorkflowDefinition
---@field OtherAssetsToImport ULuaArrayHelper<FEditorImportWorkflowDefinition>
FBuildPromotionImportWorkflowSettings = {}


---Holds settings for the open assets stage of the build promotion test
---@class FBuildPromotionOpenAssetSettings
---@field BlueprintAsset FFilePath
---@field MaterialAsset FFilePath
---@field ParticleSystemAsset FFilePath
---@field SkeletalMeshAsset FFilePath
---@field StaticMeshAsset FFilePath
---@field TextureAsset FFilePath
FBuildPromotionOpenAssetSettings = {}


---Holds settings for the new project stage of the build promotion test
---@class FBuildPromotionNewProjectSettings
---@field NewProjectFolderOverride FDirectoryPath @The path for the new project
---@field NewProjectNameOverride string @The name of the project *
FBuildPromotionNewProjectSettings = {}


---Holds settings for the material editor build promotion tests
---@class FMaterialEditorPromotionSettings
---@field DefaultMaterialAsset FFilePath @Default material asset to apply to static meshes *
---@field DefaultDiffuseTexture FFilePath @Default material asset to apply to static meshes *
---@field DefaultNormalTexture FFilePath @Default material asset to apply to static meshes *
FMaterialEditorPromotionSettings = {}


---Holds settings for the particle editor build promotion tests
---@class FParticleEditorPromotionSettings
---@field DefaultParticleAsset FFilePath @Default particle asset to use for tests
FParticleEditorPromotionSettings = {}


---Holds settings for the blueprint editor build promotion tests
---@class FBlueprintEditorPromotionSettings
---@field FirstMeshPath FFilePath @The starting mesh for the blueprint *
---@field SecondMeshPath FFilePath @The mesh to set on the blueprint after the delay *
---@field DefaultParticleAsset FFilePath @Default particle asset to use for tests
FBlueprintEditorPromotionSettings = {}


---Holds settings for the editor build promotion test
---@class FBuildPromotionTestSettings
---@field DefaultStaticMeshAsset FFilePath @Default static mesh asset to apply materials to *
---@field ImportWorkflow FBuildPromotionImportWorkflowSettings @Import workflow settings *
---@field OpenAssets FBuildPromotionOpenAssetSettings @Open assets settings *
---@field NewProjectSettings FBuildPromotionNewProjectSettings @New project settings *
---@field SourceControlMaterial FFilePath @Material to modify for the content browser step *
FBuildPromotionTestSettings = {}


---Holds settings for the asset import / export automation test
---@class FEditorMapPerformanceTestDefinition
---@field PerformanceTestmap FSoftObjectPath @Map to be used for the Performance Capture *
---@field TestTimer number @How long is this test expected to run before stopping *
FEditorMapPerformanceTestDefinition = {}


---Holds settings for the editor Launch On With Map Iterations test.
---@class FLaunchOnTestSettings
---@field LaunchOnTestmap FFilePath @Map to be used for the Launch On test *
---@field DeviceID string @Device to be used *
FLaunchOnTestSettings = {}


---Implements the Editor's user settings.
---@class UAutomationTestSettings: UObject
---@field EngineTestModules ULuaArrayHelper<string> @Modules to load that have engine tests
---@field EditorTestModules ULuaArrayHelper<string> @Modules to load that have editor tests
---@field AutomationTestmap FSoftObjectPath @The automation test map to be used for several of the automation tests.
---@field EditorPerformanceTestMaps ULuaArrayHelper<FEditorMapPerformanceTestDefinition> @The map to be used for the editor performance capture tool.
---@field AssetsToOpen ULuaArrayHelper<FSoftObjectPath> @Asset to test for open in automation process
---@field BuildPromotionTest FBuildPromotionTestSettings @Editor build promotion test settings
---@field MaterialEditorPromotionTest FMaterialEditorPromotionSettings @Material editor promotion test settings
---@field ParticleEditorPromotionTest FParticleEditorPromotionSettings @Particle editor promotion test settings
---@field BlueprintEditorPromotionTest FBlueprintEditorPromotionSettings @Blueprint editor promotion test settings
---@field TestLevelFolders ULuaArrayHelper<string> @Folders containing levels to exclude from automated tests
---@field ExternalTools ULuaArrayHelper<FExternalToolDefinition> @External executables and scripts to run as part of automation.
---@field ImportExportTestDefinitions ULuaArrayHelper<FEditorImportExportTestDefinition> @Asset import / Export test settings
---@field LaunchOnSettings ULuaArrayHelper<FLaunchOnTestSettings> @The map and device type to be used for the editor Launch On With Map Iterations test.
---@field DefaultScreenshotResolution FIntPoint @The default resolution to take all automation screenshots at.
local UAutomationTestSettings = {}
