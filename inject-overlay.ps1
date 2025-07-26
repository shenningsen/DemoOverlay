param (
    [string]$VendorFolder = "VendorSource_Alice"
)

$OverlayPath = ".\Overlay"
$TestsPath = ".\Tests"
$VendorSln = ".\$VendorFolder\VendorApp.sln"

dotnet sln "$VendorSln" add "$OverlayPath\CustomExtensions\CustomExtensions.csproj"
dotnet add "$OverlayPath\CustomExtensions\CustomExtensions.csproj" reference ".\$VendorFolder\CoreLogic\CoreLogic.csproj"
dotnet sln "$VendorSln" add "$TestsPath\CustomTests\CustomTests.csproj"

Write-Host "Tests injected into $VendorSln"
