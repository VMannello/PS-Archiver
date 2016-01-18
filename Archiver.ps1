if (-not (test-path "$env:ProgramFiles\7-Zip\7z.exe")) {throw "$env:ProgramFiles\7-Zip\7z.exe needed"} 
set-alias sz "$env:ProgramFiles\7-Zip\7z.exe"

#Set source
$source = "..\source"

#Set destination
$destination = "..\dest"

$folders = Get-ChildItem -Path $source -Directory

foreach ($folder in $folders) {
    $folderName = Split-Path "$folder" -Leaf
    $zipDest = "$destination\$folderName"
    
    New-Item $zipDest -type directory
    Get-ChildItem "$source\$folder" -recurse -exclude ".DS_Store" -File -name | Set-Content "$zipDest\contents.txt"
  
    sz a -tzip -mx9 "$zipDest\$folderName.zip" "$source\$folder"
    #.zip file format, maximum compression
}
