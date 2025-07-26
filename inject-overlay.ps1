# inject-overlay.ps1
$json = Get-Content -Raw -Path ".\vendor-version.json" | ConvertFrom-Json
$VendorPath = ".\" + $json.vendor_folder
$OverlayPath = ".\Overlay"
$TestsPath = ".\Tests"

# Add overlay project
dotnet sln "$VendorPath\VendorApp.sln" add "$OverlayPath\CustomExtensions\CustomExtensions.csproj"
dotnet add "$OverlayPath\CustomExtensions\CustomExtensions.csproj" reference "$VendorPath\CoreLogic\CoreLogic.csproj"

# Add test project
dotnet sln "$VendorPath\VendorApp.sln" add "$TestsPath\CustomTests\CustomTests.csproj"