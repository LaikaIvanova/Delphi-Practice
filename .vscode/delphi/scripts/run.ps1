$PROJECT = "C://Users/kid/OneDrive - Orgadata Software-Dienstleistungen AG/Projekte/Delphi/LearnApp/LearnApp.dproj"

# Removed the MSBuild invocation since it's not needed.
# Original lines:
# $MSBUILD_DIR = [System.Environment]::GetEnvironmentVariable('FrameworkDir', [System.EnvironmentVariableTarget]::Process)
# & $MSBUILD_DIR\MSBuild.exe $PROJECT "/t:Clean,Make"
# if ($LASTEXITCODE -ne 0) {
#     Write-Host "Build failed with exit code $LASTEXITCODE"
#     exit $LASTEXITCODE
# }

Write-Host ""

# Check if an argument is provided
if ($args.Count -eq 0) {
    exit 0
}

Write-Host "Running LearnApp..."
$exePath = "C:\Users\kid\OneDrive - Orgadata Software-Dienstleistungen AG\Projekte\Delphi\LearnApp\Win32\Debug\LearnApp.exe"
$process = Start-Process -FilePath $exePath -PassThru

Wait-Process -Id $process.Id