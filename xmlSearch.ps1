<#
.SYNOPSIS
  <the script copies the xml files which match the search criteria>
.PARAMETER <Range>
    <The integer range defined in "range.txt">
.PARAMETER <source>
    <input directory defined in "dir_input.txt">
.PARAMETER <output>
    <input directory defined in "dir_output.txt">
.INPUTS
  <xml files stored in the path specified in file dir_input>
.OUTPUTS
  <xml files stored in the path specified in file dir_output>
.NOTES
  Version:        1.0
  Author:         Pranshu Upadhaya
  Creation Date:  <9/28/2017>
  Purpose/Change: Initial script development

#>



$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition

$rangePath=$scriptPath+"\range.txt"

$sourcePath=$scriptPath+"\dir_input.txt"

$outputPath=$scriptPath+"\dir_output.txt"

$Range = Get-Content -Path $rangePath

[int]$low=$Range[0]

[int]$high=$Range[1]


$source=Get-Content -Path $sourcePath

$source= $source+"\*.xml"

$output=Get-Content -Path $outputPath

$bin = Get-ChildItem -Recurse -Path $source 

foreach ($item in $bin) {

$item.Name -match "[0-9]+-[0-9]+-[0-9]+_[0-9]+_[0-9]+_(?<id>[0-9]+)_[0-9]+.xml$"

$id =[int]$matches['id']

if( $id -ge $low -and $id -le $high ){

   	Copy-Item -Path $item -Destination $output

	Write-Host "copied $item to $output successfully"

   	}

	
}
