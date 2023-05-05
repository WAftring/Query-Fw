<#
  .SYNOPSIS
  Query the firewall rules to be imported.
  .PARAMETER Policy
  Path to an exported firewall policies. (.wfw)
#>
#Requires -RunAsAdministrator
param(
  [string]$Policy
)

$Script:TempRegistryKey = "HKLM:\MSFT_CSS"
$Script:TempKeyName = $Script:TempRegistryKey.Replace(":","")
$Script:IssueCount = 0

if(!(Test-Path $Policy)) {
  Write-Error "Invalid policy path $Policy"
  return -1
}

$PolicyVersion = (Get-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Defaults\FirewallPolicy").PolicyVersion
$MajorVersion = ($PolicyVersion -band 0xFFFFFF00) -shr 8
$MinorVersion = $PolicyVersion -band 0xFF
Write-Host "Host Schema Version: v$MajorVersion.$MinorVersion"
Write-Host "Importing rules into temporary registry"
reg load $Script:TempKeyName $Policy | Out-Null
Write-Host "Querying rule schema. This may take awhile..."
Get-ItemProperty $Script:TempRegistryKey\FirewallRules | Get-Member -MemberType NoteProperty | Select-Object -Property Name | ForEach-Object {
  $Name = $_.Name
  try
  {
    $Value = Get-ItemPropertyValue $Script:TempRegistryKey\FirewallRules -Name $Name -ErrorAction SilentlyContinue
    $SchemaVersion = $Value.Split("|")[0].Replace("v","").Split(".")
    $RuleMajorVersion = [int]$SchemaVersion[0]
    $RuleMinorVersion = [int]$SchemaVersion[1]
    if($RuleMajorVersion -gt $MajorVersion -or $RuleMinorVersion -gt $MinorVersion) {
      Write-Host "Incompatibile Rule: $Name Schema Version v$RuleMajorVersion.$RuleMinorVersion"
      $Script:IssueCount++
    }
  }
  catch
  {
    # NOP
  }
}

# Cleanup
Write-Host "Cleaning up the registry"
reg unload $Script:TempKeyName

Write-Host "Found issues with: $Script:IssueCount rules"
