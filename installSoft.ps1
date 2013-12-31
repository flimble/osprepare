# http://boxstarter.org/package/url?
#####################
# BEGIN CONFIGURATION
#####################
#region WindowsConfig
  Disable-UAC
  Import-Module $env:systemdrive\chocolatey\chocolateyinstall\helpers\chocolateyInstaller.psm1
  #Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
  #Update-ExecutionPolicy Unrestricted
  Install-WindowsUpdate -AcceptEula
  Set-ExplorerOptions -showFileExtensions
  Enable-RemoteDesktop
  Move-LibraryDirectory "Downloads" "D:\Downloads"  -DoNotMoveOldContent
  Move-LibraryDirectory "My Music" "D:\Media\Music" -DoNotMoveOldContent
  Move-LibraryDirectory "My Pictures" "D:\Media\Фото" -DoNotMoveOldContent
  Move-LibraryDirectory "My Video" "D:\Media" -DoNotMoveOldContent
#endregion
#region VS2013
  cinst VisualStudio2013Professional -InstallArguments "WebTools SQL"
  Install-ChocolateyPinnedTaskBarItem "$env:windir\system32\mstsc.exe"
  Install-ChocolateyPinnedTaskBarItem "$env:windir\system32\WindowsPowerShell\v1.0\powershell.exe"
  Install-ChocolateyVsixPackage WebEssentials2013 http://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/23/WebEssentials2013.vsix
  Install-ChocolateyVsixPackage Mindscape.WebWorkbench.Integration.10 http://visualstudiogallery.msdn.microsoft.com/2b96d16a-c986-4501-8f97-8008f9db141a/file/53962/58/Mindscape.WebWorkbench.Integration.10.vsix
#endregion
#region IISConfig
  cinst IIS-WebServerRole -source windowsfeatures
  cinst IIS-HttpCompressionDynamic -source windowsfeatures
  cinst IIS-ManagementConsole -source windowsfeatures
  cinst Microsoft-Hyper-V-All -source windowsFeatures
#endregion
#region AnotherSoft
  $client = New-Object system.net.WebClient;
  $client.DownloadFile("https://raw.github.com/Ma3yTa/osprepare/master/packages.config","packages.config");
  cinst packages.config
#endregion
#Set-ExecutionPolicy AllSigned
#Enable-UAC
