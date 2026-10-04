$ErrorActionPreference = "Stop"

$htmlPath = "D:\PROJECTS\MTS\MTS DOCUMENTATION\word-import.html"
$docxPath = "D:\PROJECTS\MTS\MTS ARCHITECTURE\MTS DOCUMENTATION BY DEVELOPER HEMED SALUM.docx"

$word = New-Object -ComObject Word.Application
$word.Visible = $false
$word.DisplayAlerts = 0

try {
  $doc = $word.Documents.Open($htmlPath, [ref]$false, [ref]$false, [ref]$false)

  $doc.Styles("Normal").Font.Name = "Calibri"
  $doc.Styles("Normal").Font.Size = 11

  # HTML import links external images by file path instead of embedding
  # them. Force every picture's data to be saved inside the document, then
  # break the link so the file has no dependency on img/ ever again.
  $count = $doc.InlineShapes.Count
  Write-Output "InlineShapes found: $count"
  for ($i = 1; $i -le $count; $i++) {
    $shp = $doc.InlineShapes.Item($i)
    if ($shp.Type -eq 2 -or $shp.LinkFormat -ne $null) {  # wdInlineShapeLinkedPicture = 2
      $shp.LinkFormat.SavePictureWithDocument = $true
    }
  }

  # Break the now-redundant external links so the doc is fully self-contained
  foreach ($field in $doc.Fields) {
    if ($field.Type -eq 58) { $field.LinkFormat.BreakLink() }  # wdFieldIncludePicture = 58
  }

  $doc.SaveAs([ref]$docxPath, [ref]16)
  $doc.Close()
  Write-Output "Saved: $docxPath"
}
finally {
  $word.Quit()
  [System.Runtime.Interopservices.Marshal]::ReleaseComObject($word) | Out-Null
}
