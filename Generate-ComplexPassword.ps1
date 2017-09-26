
<#PSScriptInfo

.VERSION 1.0

.GUID 25e0d101-3ce1-4c0a-80c4-fb0d24b02394

.AUTHOR v-spieter

.COMPANYNAME 

.COPYRIGHT Shihan Sylvester Pietersz

.TAGS Password

.LICENSEURI https://github.com/shihanpietersz/Generate-ComplexPassword/blob/master/LICENSE

.PROJECTURI https://github.com/shihanpietersz/Generate-ComplexPassword

.ICONURI 

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS 

.EXTERNALSCRIPTDEPENDENCIES 

.RELEASENOTES


#> 



<# 

.DESCRIPTION 
 Generate complex alphanumeric password 

#> 

param
(
    [Parameter(Position = 0, Mandatory = $true,HelpMessage = "number of uppercase letters to be generated")]
    [int]$UpperCaseLetterCount,
    [Parameter(Position = 1, Mandatory = $true,HelpMessage = "number of lowercase letters to be generated")]
    [int]$LowercaseLetterCount,
    [Parameter(Position = 1, Mandatory = $true,HelpMessage = "number of characters to be generated")]
    [int]$CharacterCount

)


$UpperCaseLetters = -join( 65..90 |Get-Random -Count $UpperCaseLetterCount |ForEach-Object{[char]$_}) 
$lowercase = -join (97..122 |Get-Random -Count $LowercaseLetterCount |ForEach-Object{[char]$_})
$Chars = -join (33..64 |Get-Random -Count $CharacterCount| ForEach-Object{[char]$_})

$Password = "$($UpperCaseLetters)$($lowercase)$($Chars)"

Write-Output "Password generated is $($Password.Length) characters"
Write-Output "Your Password is:"
Write-Output "$($Password)"


