Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Enable-RemoteDesktop

Move-LibraryDirectory "Downloads" "D:\Downloads"  -DoNotMoveOldContent
Move-LibraryDirectory "My Music" "D:\Media\Music" -DoNotMoveOldContent
Move-LibraryDirectory "My Pictures" "D:\Media\Фото" -DoNotMoveOldContent
Move-LibraryDirectory "My Video" "D:\Media" -DoNotMoveOldContent

$client = New-Object system.net.WebClient;
$client.DownloadFile("https://raw.github.com/Ma3yTa/osprepare/master/packages.config","packages.config");
cinst packages.config

