$PROJECT = "C://Users/kid/Desktop/Projekte/Delphi/Delphi-Practice/LearnApp.dpr"
$DELPHI_COMPILER = "C:\Program Files (x86)\Embarcadero\Studio\22.0\bin\dcc32.exe"
$exePath = "C:\Users\kid\Desktop\Projekte\Delphi\Delphi-Practice\LearnApp.exe"  # updated path

# Remove the existing executable to force a recompile
if (Test-Path $exePath) {
    Remove-Item $exePath -Force
}

& "$DELPHI_COMPILER" "-B" $PROJECT
if ($LASTEXITCODE -ne 0) {
    Write-Host "Compilation failed with exit code $LASTEXITCODE"
    exit $LASTEXITCODE
}

Write-Host ""

# Verify that the exe was created
if (-not (Test-Path $exePath)) {
    Write-Host "Executable not found at $exePath. Check your project output configuration."
    exit 1
}

# Check if an argument is provided
if ($args.Count -eq 0) {
    exit 0
}

Write-Host "Running Test123..."
$process = Start-Process -FilePath $exePath -PassThru
Wait-Process -Id $process.Id