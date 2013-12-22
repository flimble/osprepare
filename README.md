osprepare
=========

Boxstarter script to install software on clear OS.
Command to install:
START http://boxstarter.org/package/nr/url?https://raw.github.com/Ma3yTa/osprepare/master/installSoft.md

List&Search
=========
- choco list packageName
- choco search something
- choco search Telnet -source windowsfeatures
- choco search Azure -source webpi
- chocolatey list nunit chocolatey list nunit -all
- chocolatey search nunit -source http://somelocalfeed.com/nuget
- chocolatey list nunit -source http://somelocalfeed.com/nuget -all
- choco list nunit -source http://somelocalfeed.com/nuget
- choco list -source webpi
- choco search -lo choco search -localonly
Install
=========
- choco install nunit
- choco install nunit -version 2.5.7.10213
- choco install nunit -version 2.5.7.10213 -source http://somelocalfeed.com/nuget
- cinst nunit -version 2.5.7.10213 -source http://somelocalfeed.com/nuget
- cinst nunit -source \\someserver\someshare
- cinst nunit -source c:\somefolder
- cinst nunit -source 'http://chocolatey.org/api/v2/;c:\somefolder'
- cinst nodejs.install -installArgs '/qb'
- cinst nodejs.install -installArgs '/qb /bob=''a value''' -override -note that the /bob=''a value'' will be converted to /bob="a value".
- cinst nodejs.install -notSilent
- cinst packages.config
- choco install git ruby python
- choco install python -x86
Update
=========
- chocolatey update - updates chocolatey to the latest version
- chocolatey update nunit
- chocolatey update nunit -source http://somelocalfeed.com/nuget
- cup nunit -source http://somelocalfeed.com/nuget
Uninstall
=========
- chocolatey uninstall nunit
- chocolatey uninstall nunit -version 2.5.7.10213
Help
=========
- chocolatey /?
Version
=========
- chocolatey version - looks to see if there is an update available for chocolatey
- choco version nunit
- chocolatey version nunit -source http://somelocalfeed.com/nuget
- cver nunit -source http://somelocalfeed.com/nuget
WebPlatformInstaller
=========
- chocolatey webpi IISExpress
- choco webpi IISExpress
- cinst IISExpress -source webpi
WindowsFeatures
=========
- chocolatey WindowsFeatures TelnetClient
- choco windowsfeatures IIS-WebServerRole
- cinst Microsoft-Hyper-V-All -source windowsfeatures

