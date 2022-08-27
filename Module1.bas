Attribute VB_Name = "Module1"
Sub This_Is_My_VBA_Work_Example()

End Sub

Sub This_is_a_comment()
'Comments are made with single quotes.
'Odd functions integrated over a symmetrical domain are always zero.
'Even functions integrated over a symmetrical domain can be simplified by multiplying by 2 and cutting the integral domain in half


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

'Even though you don't have to declare variables in VBA you might want to if you expect your code to used/read by another person
'Variables work just like in other programming languages so let's a move on

Dim a_string_variable As String 'This makes the variable "a_string_variable" into a string_variable
    a_string_variable = "A totally different string" 'I wrote this line in this way to exemplify that "a_string_variable" is not the string, it is the container for the string

Dim i As Integer
    i = 1 'Probably the most common integer declared because of looping
    
Dim j As Long
j = 2147000000 'You just use this variable type when you need a number roughly of this magnitude

Dim k As Double
k = 6.02214076E+23 'When a long won't do, say as in this case for Avogadro's number, you use a double.
'Although processing power so strong these days you can use double for basically everything

Dim Student As Boolean
Student = False 'You might do this in a situation where you want True/False to reflect something like enrollment status

'You can also declare things as an entire workbook or worksheet

Dim Guassian_Fits As Workbook
Set Guassian_Fits = Workbooks("Gaussian_Fits.xlsx")

Dim Interpolated_Fits As Worksheet
Set Interpolated_Fits = Worksheets("Guassian_Fits.xlsx").Sheets("Interpolated_Fits")

'You can get really technical if, for some reason, you're pulled in many directions at once and want to jump between workbooks to make adjustments

Workbooks("Guassian_Fits.xlsx").Sheets("Interpolated_Fits").Range("A1").Value = 1
Workbooks("Guassian_Fits2.xlsx").Sheets("Interpolated_Fits2").Range("A1").Value = 2
Workbooks("Guassian_Fits3.xlsx").Sheets("Interpolated_Fits3").Range("A1").Value = 3

'Perhaps you have to do this many, many times for the same worksheet and the name is too long
'You can call that worksheet (with its long name) and give a short name by defining a new variable

Dim Interpolated_Fits As Worksheet
Set IntFits = Workbooks("Gaussian_Fits").Sheets("Interpolated_Fits") 'Recall, this is if you wanted send multiple statements to the same worksheet instead of multiple sheets

IntFits.Range("A1").Value = 1
IntFits.Range("A2").Value = 2
IntFits.Range("A3").Value = 3

'You can also reference a worksheet by a cell value or string declaration

Dim NRG As String
NRG = "Joules_to_electron_volts" 'Now if your sheet has this long name you can reference its quickly by saying "NRG" instead, as in:

Sheets(NRG).Range(A1).Value = 2





'Perhaps you anticipate working on specific worksheet or workbook that is not the active sheet or book at the moment, which Excel defaults to using
'You can change which worksheet and/or workbook is active in the following way

Dim Radiation_counts As Workbook
Set Radiation_counts = ActiveWorkbook 'This sets the previously declared workbook to become the active workbook

'Or, equivalently:
Workbooks("Radiation_counts.xlsx").Activate
Workbooks("Radiation_counts.xlsx").Select


'Similarly with worksheets

Dim Calcium_counts As Worksheet
Set Calcium_counts = ActiveWorksheet

Sheets("Radiation_counts.xlsx").Activate
Sheets("Radiation_counts.xlsx").Select

'Now when you refer to anything "Active" it will be with respect to the previously assigned reference, as in

Active.Cell.Value = 5












End Sub




