Disable-UAC
#Set-ExecutionPolicy Unrestricted
Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Enable-RemoteDesktop

Move-LibraryDirectory "Downloads" "D:\Downloads"  -DoNotMoveOldContent
Move-LibraryDirectory "My Music" "D:\Media\Music" -DoNotMoveOldContent
Move-LibraryDirectory "My Pictures" "D:\Media\Фото" -DoNotMoveOldContent
Move-LibraryDirectory "My Video" "D:\Media" -DoNotMoveOldContent

$client = New-Object system.net.WebClient;
$client.DownloadFile("https://raw.github.com/Ma3yTa/osprepare/master/packages.config","packages.config");
cinst packages.config

Import-Module $env:systemdrive\chocolatey\chocolateyinstall\helpers\chocolateyInstaller.psm1
Install-ChocolateyPinnedTaskBarItem "$env:windir\system32\mstsc.exe"
Install-ChocolateyPinnedTaskBarItem "$env:windir\system32\cmd.exe"
/*Install-ChocolateyVsixPackage WebEssentials2013 http://visualstudiogallery.msdn.microsoft.com/56633663-6799-41d7-9df7-0f2a504ca361/file/105627/23/WebEssentials2013.vsix
Install-ChocolateyVsixPackage Mindscape.WebWorkbench.Integration.10 http://visualstudiogallery.msdn.microsoft.com/2b96d16a-c986-4501-8f97-8008f9db141a/file/53962/58/Mindscape.WebWorkbench.Integration.10.vsix
Install-ChocolateyVsixPackage Microsoft.TeamFoundation.Git.Provider http://visualstudiogallery.msdn.microsoft.com/abafc7d6-dcaa-40f4-8a5e-d6724bdb980c/file/93137/7/Microsoft.TeamFoundation.Git.Provider.msi*/
#Set-ExecutionPolicy AllSigned
Enable-UAC