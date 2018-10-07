$rootPath = "D:\kamia"

# This requires $rootPath\nuget.exe exists. If not, do the below scripts first.
# $sourceNugetExe = "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe"
# $targetNugetExe = "D:\kamia\nuget.exe"
# Invoke-WebRequest $sourceNugetExe -OutFile $targetNugetExe
$targetNugetExe = "$rootPath\nuget.exe"
Set-Alias nuget $targetNugetExe -Scope Global -Verbose

function emacs($File) {
    $File = $File -replace "\\", "/"
    bash -c "emacs $File"
}
