---@meta

---@class FPortalPackageInstallerInstallRequest
---@field AppName string
---@field BuildLabel string
---@field DestinationPath string
FPortalPackageInstallerInstallRequest = {}


---@class FPortalPackageInstallerInstallResponse
---@field Result boolean
FPortalPackageInstallerInstallResponse = {}


---@class FPortalPackageInstallerUninstallRequest
---@field AppName string
---@field BuildLabel string
---@field InstallationPath string
---@field RemoveUserFiles boolean
FPortalPackageInstallerUninstallRequest = {}


---@class FPortalPackageInstallerUninstallResponse
---@field Result boolean
FPortalPackageInstallerUninstallResponse = {}
