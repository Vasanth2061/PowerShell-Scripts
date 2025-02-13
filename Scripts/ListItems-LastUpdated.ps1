# Define the directory path and output file path
$directoryPath = "C:\path\to\directory"
$outputFilePath = "C:\path\to\output.txt"

# Get the list of items and their last modified date, then save to the output file
Get-ChildItem -Path $directoryPath | Select-Object Name, LastWriteTime | Out-File -FilePath $outputFilePath
