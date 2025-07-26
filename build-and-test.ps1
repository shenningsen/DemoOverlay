param (
    [string]$VendorFolder = "VendorSource_Alice"
)

$VendorSln = ".\$VendorFolder\VendorApp.sln"

dotnet restore "$VendorSln"
dotnet build "$VendorSln" --no-restore
dotnet test "$VendorSln" --no-build
