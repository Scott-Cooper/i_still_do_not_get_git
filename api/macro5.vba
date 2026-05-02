Sub Macro5()
' Macro5 Macro
'Scott Cooper, 2004

Range("F1").Select
Dim Check, Counter
Check = True: counter = 0 ' Initialize variable
Do
Do While counter < 20 ' Inner loop.
Cells.Find(What:="deployable output", After:=ActiveCell, LookIn:= _
xlFormulas, LookAt:=xlPart, SearchOrder:=xlByColumns, SearchDirection:= _
xlNext, MatchCase:=False).Activate
ActiveCell.Offset(1, 10).Select
Application.Run "'current analysis4.xls'!distribution_s1s2s3"
ActiveCell.Offset(4, -10).Select
Number = counter + 1 ' Increment Counter.
If counter = 20 Then ' If condition is True.
Check = False ' Set value of flag to False.
Exit Do ' Exit inner loop.
End If
Loop
Loop Until Check = False ' Exit outer loop immediately.
End Sub