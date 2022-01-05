Attribute VB_Name = "Module1"
Sub OHLC()
Attribute OHLC.VB_ProcData.VB_Invoke_Func = " \n14"
'
' OHLC Macro
'

'
    Columns("E:E").Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Rows("1:1").Select
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Range("E1").Select
    ActiveCell.FormulaR1C1 = "Date"
    Range("F1").Select
    ActiveCell.FormulaR1C1 = "Open"
    Range("G1").Select
    ActiveCell.FormulaR1C1 = "High"
    Range("H1").Select
    ActiveCell.FormulaR1C1 = "Low"
    Range("I1").Select
    ActiveCell.FormulaR1C1 = "Close"
    Range("E2").Select
    ActiveCell.FormulaR1C1 = "1/1/2020"
    Selection.AutoFill Destination:=Range("E2:E92"), Type:=xlFillDefault
    Range("E2:E92").Select
    ActiveWindow.ScrollRow = 1
    Columns("E:I").Select
    ActiveSheet.Shapes.AddChart2(322, xlStockOHLC).Select
    ActiveChart.SetSourceData Source:=Range("ohlc30!$E:$I")
End Sub
