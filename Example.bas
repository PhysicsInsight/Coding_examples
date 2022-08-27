Attribute VB_Name = "Module1"
Sub This_Is_My_VBA_Work_Example()

End Sub

Sub This_is_a_comment()
'Comments are made with single quotes

End Sub

Sub The_Range_Object()
'The Range object is indispensable

Range("A1").Value = 2 'Single cell assignment to an integer
Range("A1:A10").Value = 2 'Cell-range assignment to an integer
Range("A1").Value = "String of text" 'Single cell assignment to a string
Range("A1").Value = "Concat" & "enation" 'String assignment via concatenation

'Here is a strange way of using concatenation just to show how it can be used creatively
Dim sdljkfsdflk
 sdljkfsdflk = 10
Range("A" & sdljkfsdflk).Value = 1 ' Because the string sdljkfsdflk was assigned the value 10, this actually means Range("A10").Value = 1


Range("A1").Value = Range("B1").Value 'Assigning B1 the value of A1
Range("A1").Formula = "=10*10" 'Assigning a formula to a cell using the .Formula property
Range("A1").Clear 'This clears the cell to its default conditions like a factory reset
Range("A1").ClearContents 'This clears the cells contents but not the formatting, which is quite useful when you want to avoid poking holes in your tables

'Worksheets & Workbooks

'Suppose you have a sheet named Voltages and a workbook named Millikanian_Charges, here is how you would specify action in those domains as oppose to the default active worksheet
'Note you need to specify the file type as well when specifying the workbook, as in .xlsx, .xlsm, etc

Sheets("Voltages").Range("A1").Value = 1 'Specifying a worksheet named Voltages
Workbooks("Millikanian_Charges.xlsx").Range("A1:A2") = 3.14

End Sub

Sub Variables()


End Sub











End Sub
