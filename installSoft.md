Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Enable-RemoteDesktop

$client = New-Object system.net.WebClient;
$client.DownloadFile("https://raw.github.com/Ma3yTa/osprepare/master/packages.config","packages.config");
cinst packages.config

