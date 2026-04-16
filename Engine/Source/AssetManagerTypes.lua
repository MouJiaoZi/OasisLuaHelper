---@meta

---Rule about when to cook/ship a primary asset
---@class EPrimaryAssetCookRule
---@field Unknown number @Nothing is known about this asset specifically. It will cook if something else depends on it.
---@field NeverCook number @Asset should never be cooked/shipped in any situation. An error will be generated if something depends on it.
---@field DevelopmentCook number @Asset can be cooked for development and testing, but should never be shipped in a production build.
---@field AlwaysCook number @Asset will always be cooked, in both production and development.
EPrimaryAssetCookRule = {}


---UpdateManagementDatabase逻辑规则，总共4轮SetManageReferences 第1轮按优先级，递归和非递归PA都参与计算， 第2轮按优先级，仅非递归PA参与计算， 第3轮不按优先级，仅递归PA参与计算， 第4轮不按优先级，仅非递归PA参与计算， 每一轮不相互影响，每轮叠加Manager引用关系
---@class EPrimaryAssetPriorityRule
---@field Default number @bApplyRecursively=false时，参与第4轮计算, bApplyRecursively=true时，参与第1轮计算，其他不匹配的PriorityRule，也按Default
---@field ApplyRecursivelyPriority number @bApplyRecursively=false时，参与第1轮计算. bApplyRecursively=true时，同Default情况
---@field ApplyNoneRecursivelyPriority number @bApplyRecursively=false时，参与第2轮计算. bApplyRecursively=true时，同Default情况
---@field ApplyNoPriority number @bApplyRecursively=true时，参与第3轮计算. bApplyRecursively=false时，同Default情况
EPrimaryAssetPriorityRule = {}


---Base structure for management rule checks
---@class FManagementRuleBase
---@field bEnable boolean
---@field bFlip boolean
FManagementRuleBase = {}


---Structure to encapsulate a set of assets/directories with a flip flag
---@class FManagementRuleFNameArrayCheck
---@field Names ULuaSetHelper<string>
FManagementRuleFNameArrayCheck = {}


---Structure to encapsulate a set of directories with a flip flag
---@class FManagementRuleFStringArrayCheck
---@field Names ULuaArrayHelper<string>
FManagementRuleFStringArrayCheck = {}


---ManagementRule逻辑规则的运行时版本
---@class FManagementRule
---@field bEnable boolean
---@field SetResult EAssetSetManagerResult
---@field CheckTargetDirectories FManagementRuleFStringArrayCheck
---@field CheckTargetAssets FManagementRuleFNameArrayCheck
---@field CheckTargetAssetClassTypes FManagementRuleFNameArrayCheck
---@field CheckTargetAssetTags FManagementRuleFNameArrayCheck
---@field CheckSourcePackages FManagementRuleFNameArrayCheck
---@field CheckSourcePackageClassTypes FManagementRuleFNameArrayCheck
---@field bOnlySoftReferences boolean
---@field CheckOrMask number @控制7个检查条件之间的或与非逻辑，每一位对应一个检查条件（见EManagementRuleCheckOrMask）。 置1的位参与||组合（OrGroup），置0的位参与&&组合（AndGroup）。 最终结果 = AndGroup全部为true && (OrGroup为空 || OrGroup至少一个为true)。 默认值0x00，即全部&&，保持原有行为。
FManagementRule = {}


---ini配置使用，规则开关
---@class FManagementRuleSwitch
---@field bEnable boolean
---@field bFlip boolean
FManagementRuleSwitch = {}


---ini配置使用，Structure to encapsulate a directory with a flip flag
---@class FManagementRuleFStringCheck
---@field bEnable boolean
---@field Name string
FManagementRuleFStringCheck = {}


---ini配置使用, Structure to encapsulate a package name with a flip flag
---@class FManagementRuleFNameCheck
---@field bEnable boolean
---@field Name string
FManagementRuleFNameCheck = {}


---Structure defining rules for what to do with assets, this is defined per type and can be overridden per asset
---@class FPrimaryAssetRules
---@field Priority number @Primary Assets with a higher priority will take precedence over lower priorities when assigning management for referenced assets. If priorities match, both will manage the same Secondary Asset.
---@field bApplyRecursively boolean @If true, this rule will apply to all referenced Secondary Assets recursively, as long as they are not managed by a higher-priority Primary Asset.
---@field PriorityRule EPrimaryAssetPriorityRule @SetManageReferences时优先级规则.
---@field ChunkId number @Assets will be put into this Chunk ID specifically, if set to something other than -1. The default Chunk is Chunk 0.
---@field CookRule EPrimaryAssetCookRule @Rule describing when this asset should be cooked.
---@field ManagementRules ULuaArrayHelper<FManagementRule>
FPrimaryAssetRules = {}


---Structure with publicly exposed information about an asset type. These can be loaded out of a config file.
---@class FPrimaryAssetTypeInfo
---@field PrimaryAssetType string @The logical name for this type of Primary Asset
---@field AssetBaseClass UObject @Base Class of all assets of this type
---@field bHasBlueprintClasses boolean @True if the assets loaded are blueprints classes, false if they are normal UObjects
---@field bIsEditorOnly boolean @True if this type is editor only
---@field Directories ULuaArrayHelper<FDirectoryPath> @Directories to search for this asset type
---@field SpecificAssets ULuaArrayHelper<FSoftObjectPath> @Individual assets to scan
---@field Rules FPrimaryAssetRules @Default management rules for this type, individual assets can be overridden
---@field AssetScanPaths ULuaArrayHelper<string> @Combination of directories and individual assets to search for this asset type. Will have the Directories and Assets added to it
---@field bIsDynamicAsset boolean @True if this is an asset created at runtime that has no on disk representation. Cannot be set in config
---@field NumberOfAssets number @Number of tracked assets of that type
FPrimaryAssetTypeInfo = {}


---ManagementRule逻辑规则的.ini文件配置版本，减少结构体和容器嵌套，方便.ini配置和阅读
---@class UManagementRuleSetting: UObject
---@field bEnable boolean
---@field SetResult EAssetSetManagerResult
---@field CheckTargetDirectoriesSwitch FManagementRuleSwitch
---@field CheckTargetDirectories ULuaArrayHelper<FManagementRuleFStringCheck>
---@field CheckTargetAssetsSwitch FManagementRuleSwitch
---@field CheckTargetAssets ULuaArrayHelper<FManagementRuleFNameCheck>
---@field CheckTargetAssetClassSwitch FManagementRuleSwitch
---@field CheckTargetAssetClassTypes ULuaArrayHelper<FManagementRuleFNameCheck>
---@field CheckSourcePackagesSwitch FManagementRuleSwitch
---@field CheckSourcePackages ULuaArrayHelper<FManagementRuleFNameCheck>
---@field CheckSourcePackageClassSwitch FManagementRuleSwitch
---@field CheckSourcePackageClassTypes ULuaArrayHelper<FManagementRuleFNameCheck>
---@field CheckTargetAssetTagSwitch FManagementRuleSwitch
---@field CheckTargetAssetTags ULuaArrayHelper<FManagementRuleFNameCheck>
---@field bOnlySoftReferences boolean
---@field CheckOrMask number @对应FManagementRule::CheckOrMask，控制6个检查条件之间的或与非逻辑，见EManagementRuleCheckOrMask
local UManagementRuleSetting = {}
