param (
    [string]$directoryPath,
    [string]$outputFilePath
)

# Get the list of items and their last modified date, then save to the output file
Get-ChildItem -Path $directoryPath | Select-Object Name, LastWriteTime | Out-File -FilePath $outputFilePath
