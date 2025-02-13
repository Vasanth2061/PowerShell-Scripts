param (
    [string]$directoryPath,
    [string]$outputFilePath
)

# Ensure the directory for the output file exists
$outputDirectory = Split-Path -Path $outputFilePath -Parent
if (-not (Test-Path -Path $outputDirectory)) {
    New-Item -Path $outputDirectory -ItemType Directory -Force
}

# Get the list of items and their last modified date, then save to the output file
Get-ChildItem -Path $directoryPath | Select-Object Name, LastWriteTime | Out-File -FilePath $outputFilePath
