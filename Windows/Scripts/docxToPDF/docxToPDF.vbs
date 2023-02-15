'Convert .doc or .docx to .pdf files via Send To menu
'https://www.winhelponline.com/blog/how-to-batch-convert-word-documents-into-pdf-files/
Set fso = CreateObject("Scripting.FileSystemObject")
For i= 0 To WScript.Arguments.Count -1
   docPath = WScript.Arguments(i)
   docPath = fso.GetAbsolutePathName(docPath)
   If LCase(Right(docPath, 4)) = ".doc" Or LCase(Right(docPath, 5)) = ".docx" Then
      Set objWord = CreateObject("Word.Application")
      pdfPath = fso.GetParentFolderName(docPath) & "\" & _
   fso.GetBaseName(docPath) & ".pdf"
      objWord.Visible = False
      Set objDoc = objWord.documents.open(docPath)
      objDoc.SaveAs pdfPath, 17
      objDoc.Close
      objWord.Quit   
   End If   
Next

' https://docs.microsoft.com/fr-fr/office/vba/api/word.saveas2
' https://docs.microsoft.com/fr-fr/office/vba/api/word.wdsaveformat
' 17 correspond à PDF