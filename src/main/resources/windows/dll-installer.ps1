#
# THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR 
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS 
# FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.
#

<#assign dllFullPath="${deployed.targetPath}\${deployed.targetFileName}">

Write-Host "Copying DLL to ${dllFullPath} and registering it."
Copy-Item ${deployed.file} ${dllFullPath}
Invoke-Command -ScriptBlock {regsvr32.exe /s "${dllFullPath}" }
