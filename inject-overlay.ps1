# inject-overlay.ps1
param (
    [string]$VendorPath = ".\VendorSource",
    [string]$OverlayPath = ".\Overlay",
    [string]$TestsPath = ".\Tests"
)

# Add overlay project
dotnet sln "$VendorPath\VendorApp.sln" add "$OverlayPath\CustomExtensions\CustomExtensions.csproj"
dotnet add "$OverlayPath\CustomExtensions\CustomExtensions.csproj" reference "$VendorPath\CoreLogic\CoreLogic.csproj"

# Add tests
dotnet sln "$VendorPath\VendorApp.sln" add "$TestsPath\CustomTests\CustomTests.csproj"
