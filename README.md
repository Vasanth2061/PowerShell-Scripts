# PowerShell-Scripts
# ListItems-LastUpdated.ps1

This PowerShell script lists all items in a specified directory along with their last modified date and saves the output to a specified text file. If the output file already exists, its content will be cleared before writing new data.

## Parameters

- `directoryPath`: The path to the directory you want to list. Default is `C:\default\directory\path`.
- `outputFilePath`: The path to the output text file. Default is `C:\default\output\path\output.txt`.

## Usage

### Running the Script with Default Parameters

To run the script with default parameters, simply execute:

```powershell
.\ListItems-LastUpdated.ps1

Running the Script with Custom Parameters
To specify the directory path and output file path, use the following command:
```powershell
.\ListItems-LastUpdated.ps1 -directoryPath "C:\path\to\directory" -outputFilePath "C:\Users\mvasanth\Downloads\output.txt"

Default Locations
directoryPath: C:\
outputFilePath: C:\Users\mvasanth\Downloads

Troubleshooting
Execution Policy Error
If you encounter an error related to the execution policy, such as:
```powershell
File C:\Users\mvasanth\Downloads\ListItems-LastUpdated.ps1 cannot be loaded. The file C:\Users\mvasanth\Downloads\ListItems-LastUpdated.ps1 is not digitally signed. You cannot run this script on the current system.

You need to change the execution policy to allow running the script. Open PowerShell as Administrator and run the following command:
```powershell
Set-ExecutionPolicy -ExecutionPolicy UnRestricted -Scope CurrentUser

This will allow you to run the script while maintaining a level of security by requiring remote scripts to be signed.
