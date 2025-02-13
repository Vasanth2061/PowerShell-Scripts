param (
    [string]$directoryPath = "C:\",
    [string]$outputFilePath = "C:\Users\mvasanth\Downloads"
)

# Ensure the directory for the output file exists
$outputDirectory = Split-Path -Path $outputFilePath -Parent
if (-not (Test-Path -Path $outputDirectory)) {
    New-Item -Path $outputDirectory -ItemType Directory -Force
}

# If the output file exists, clear its content
if (Test-Path -Path $outputFilePath) {
    Clear-Content -Path $outputFilePath
}

# Get the list of items and their last modified date, then save to the output file
Get-ChildItem -Path $directoryPath | Select-Object Name, LastWriteTime | Out-File -FilePath $outputFilePath
