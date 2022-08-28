Attribute VB_Name = "Module1"
Sub This_Is_My_VBA_Work_Example()

End Sub

Sub A_few_comments_about_the_procedes()

'I will avoid writing Sub()/End Sub for every single use-case, instead I have used that to delimit sections of content.
'I will also keep adding to this the as I have been with the SQL worksheets, Python libraries, and LaTeX documents.
'Enjoy!

End Sub

Sub The_Range_Object()

'Basics
Range("A1").Value = 2 'Single cell assignment to an integer
Range("A1:A10").Value = 2 'Cell-range assignment to an integer
Range("A1").Value = "String of text" 'Single cell assignment to a string
Range("A1").Value = Range("B1").Value 'Assigning B1 the value of A1
Range("A1").Formula = "=10*10" 'Assigning a formula to a cell using the .Formula property
Range("A1").Clear 'This clears the cell to its default conditions like a factory reset
Range("A1").ClearContents 'This clears the cells contents but not the formatting, which is quite useful when you want to avoid poking holes in your tables
Range("A1").Value = "Concat" & "enation" 'String assignment via concatenation

'Here is a strange way of using concatenation just to show how it can be used creatively:
Dim sdljkfsdflk
 sdljkfsdflk = 10
Range("A" & sdljkfsdflk).Value = 1 'Because the string sdljkfsdflk was assigned the value 10, this actually means Range("A10").Value = 1

'Worksheets & Workbooks

'Suppose you have a sheet named Voltages and a workbook named Millikanian_Charges, here is how you would specify action in those domains as oppose to the default active worksheet
'Note you need to specify the file type as well when specifying the workbook, as in .xlsx, .xlsm, etc

Sheets("Voltages").Range("A1").Value = 1 'Specifying a worksheet named Voltages
Workbooks("Millikan_Charges.xlsx").Range("A1:A2") = 3.14

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

Sub Conditional_Logic()

'Comparing Text & Variables
'VBA is case sensitive unlike SQL. However, if you add "Option Compare Text" at the top of your module you turn off case sensitivity.
 
 Dim Test As Boolean
 Test = 5 <= 3 'This would return FALSE because obviously 5 is not less than or equal to 3. All other logical operators work in a similar way.
 'It is worth noting VBA uses <> for "is not equal to" just as SQL does, but does not equivalently recognize != .
 
 'Example of case sensitivity
 
 Option Compare Text 'You would need this at the top of *this* module for it to work, but this is just an example:
 'Sub Case_sensitivity()
Ex = "string" = "STRING" = "StRiNg" = "sTrInG"
 'End Sub
 
 'Similarly, you can test if variables are equal to one another:
 Ex = String1 <> String2
 
 'If Statements & Looping
 
If n <> m Then
    Int_val = "Integral will be eqaul to zero for all such occurences"
    Else
    Int_val = "Integral will be equal to 1"
End If

'Let's pretend a robot is temping food it is cooking

If T < 140 Then
MsgBox = "Throw back in oven."
ElseIf (T >= 165) And (T <= 180) Then
MsgBox "Take out of oven and write it down."
ElseIf (T > 180) Then
MsgBox "Check for spoilage."
End If

'You can nest if-statements in one another if you think about them like compound functions as in f(g(h(x)))

If n > 3 Then
    If m > 3 Then
     Range("A1").Value = "n & m are greater than 3"
    Else
     Range("A1").Value = "n is greater than 3 but m is less than or equal to 3"
     End If
Else
 Range("A1").Value = "n is less than or equal to 3 and m is not known."
End If

    
'Select Case is a good way of evaluating multiple logical conditions:
'1) Identify test item (object, variable, property of object)
'2) Specify test conditions i.e. matching criteria & execute an action if true

Select Case Particle
Case Electron, Muon, Tau, Electron_neutrino, Muon_neutrino, Tau_neutrino
Category = "Lepton"
Case Up, Down, Top, Bottom, Strange, Charm
Category = "Quark"
Case Gluon, Photon, Z_Boson, W_Boson
Category = "Gauge Bosons"
Case Higgs_Boson
Category = "Scalar Bosons"


End Sub

Sub For_Loops()

'Conceptually, loops work the same in VBA as in other languages but the syntax is a little different
Dim i As Long

For i = 1 To 10
Next i

'Personally I think it looks like R because of the way it tries to look like ordinary English
Dim i As Long
For i = 10 To 0 Step -2 'This is like if you integrated along the direction of the negative x-axis
Next i

'This loop saves a ton of time because the way I have to index things all the time at work

Sub EnterSerialNumber()
Dim Rng As Range
Dim Counter As Integer
Dim RowCount As Integer
Set Rng = Selection
RowCount = Rng.Rows.Count
For Counter = 1 To RowCount
ActiveCell.Offset(Counter - 1, 0).Value = Counter
Next Counter
End Sub

'Nested loops are just like compund functions, they go like f(g(h(x)))

Dim row As Integer, col As Integer

For row = 1 To 9
    For col = 1 To 9
        Cells(row + 1, col + 1).Value = row * col
    Next col
Next row

'The most common collection used in a For-each loop is probably a group of cells

'This is a time saver, literally, it saves all open WB's


Dim wb As Workbook
For Each wb In Workbooks
wb.Save
Next wb

'This is useful after you've used a sliding window
'Suppose you use a sliding window to observe day-to-day rates of change
'and also that some rates are negative
'this takes a selection of cells and highlights negative values


Dim Cll As Range
For Each Cll In Selection
If Cll.Value < 0 Then
Cll.Interior.Color = vbRed
End If
Next Cll

End Sub



